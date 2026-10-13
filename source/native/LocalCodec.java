package com.twntool.local;

import android.content.Context;
import android.content.pm.ApplicationInfo;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/** Local Township save codec backed by the installed game's native decoder. */
public final class LocalCodec {
    private static volatile Context context;

    private LocalCodec() {}

    public static void init(Context value) {
        if (value != null) context = value.getApplicationContext();
    }

    public static byte[] decode(byte[] input) throws Exception {
        if (input == null || input.length == 0) throw new IOException("local codec: empty input");
        if (looksLikeXml(input)) return gzip(input);

        Context ctx = context;
        if (ctx == null) throw new IOException("local codec: application context unavailable");

        File files = ctx.getFilesDir();
        File inputFile = new File(files, "twn_codec_input.bin");
        File outputFile = new File(files, "twn_codec_output.xml");
        writeFile(inputFile, input);
        writeFile(outputFile, new byte[0]);

        ApplicationInfo info = ctx.getApplicationInfo();
        String nativeDir = info.nativeLibraryDir;
        File injector = new File(nativeDir, "libtwninject.so");
        File hook = new File(nativeDir, "libtwnhook.so");
        if (!injector.exists() || !hook.exists()) {
            throw new IOException("local codec: native helpers missing from " + nativeDir);
        }

        String appDir = shellQuote(files.getAbsolutePath());
        String injectorPath = shellQuote(injector.getAbsolutePath());
        String hookPath = shellQuote(hook.getAbsolutePath());
        String script =
                "GAME=/data/data/com.playrix.township/saves; " +
                "WORK=/data/local/tmp; " +
                "APP=" + appDir + "; " +
                "INJ=" + injectorPath + "; " +
                "HOOK=" + hookPath + "; " +
                "MAIN=$GAME/mGameInfo.xml; BAK=$GAME/mGameInfo.bak; " +
                "ORIG=$WORK/twn_original.bin; ORIGBAK=$WORK/twn_original_bak.bin; " +
                "DUMP=/data/data/com.playrix.township/files/twn_decoded.bin; OUT=$APP/twn_codec_output.xml; " +
                "restore_save(){ am force-stop com.playrix.township >/dev/null 2>&1 || true; " +
                "[ -f $ORIG ] && cp $ORIG $MAIN; " +
                "if [ -f $ORIGBAK ]; then cp $ORIGBAK $BAK; else rm -f $BAK; fi; " +
                "chmod 660 $MAIN 2>/dev/null || true; chmod 660 $BAK 2>/dev/null || true; }; " +
                "trap restore_save EXIT; " +
                "am force-stop com.playrix.township >/dev/null 2>&1 || true; " +
                "rm -f $ORIG $ORIGBAK $DUMP $WORK/twn_decoded.bin; " +
                "cp $MAIN $ORIG || exit 31; [ ! -f $BAK ] || cp $BAK $ORIGBAK; " +
                "cp $APP/twn_codec_input.bin $MAIN || exit 32; cp $APP/twn_codec_input.bin $BAK || exit 33; " +
                "chmod 660 $MAIN $BAK; " +
                "am start -n com.playrix.township/.Launcher >/dev/null 2>&1 & " +
                "pid=''; i=0; while [ -z \"$pid\" ] && [ $i -lt 500 ]; do " +
                "pid=$(toybox pidof com.playrix.township 2>/dev/null || true); i=$((i+1)); done; " +
                "[ -n \"$pid\" ] || exit 34; " +
                "$INJ $pid $HOOK || exit 35; " +
                "i=0; while [ ! -s $DUMP ] && [ $i -lt 300 ]; do sleep 0.1; i=$((i+1)); done; " +
                "[ -s $DUMP ] || exit 36; " +
                "cp $DUMP $OUT || exit 37; chown --reference=$APP/twn_codec_input.bin $OUT; chmod 600 $OUT; " +
                "exit 0";

        Process process = new ProcessBuilder("su", "-c", script)
                .redirectErrorStream(true)
                .start();
        String processOutput = readText(process.getInputStream(), 64 * 1024);
        boolean exited = process.waitFor(45, TimeUnit.SECONDS);
        if (!exited) {
            process.destroyForcibly();
            throw new IOException("local codec: native decode timed out");
        }
        if (process.exitValue() != 0) {
            throw new IOException("local codec: native decode failed (" + process.exitValue() + "): " + processOutput);
        }

        byte[] plain = readFile(outputFile);
        if (plain.length < 100_000 || !looksLikeXml(plain)) {
            throw new IOException("local codec: invalid plaintext output (" + plain.length + " bytes)");
        }
        return gzip(plain);
    }

    public static byte[] plainFromGzip(byte[] input) throws IOException {
        if (input == null) throw new IOException("local codec: null encode input");
        if (looksLikeXml(input)) return input;
        try (GZIPInputStream gzip = new GZIPInputStream(new ByteArrayInputStream(input), 64 * 1024)) {
            return readAll(gzip, 64 * 1024 * 1024);
        }
    }

    private static boolean looksLikeXml(byte[] value) {
        int limit = Math.min(value.length, 64);
        for (int i = 0; i < limit; i++) {
            int b = value[i] & 0xff;
            if (b == 0xef && i + 2 < limit && (value[i + 1] & 0xff) == 0xbb && (value[i + 2] & 0xff) == 0xbf) {
                i += 2;
                continue;
            }
            if (b == ' ' || b == '\t' || b == '\r' || b == '\n') continue;
            return b == '<';
        }
        return false;
    }

    private static byte[] gzip(byte[] input) throws IOException {
        ByteArrayOutputStream output = new ByteArrayOutputStream(Math.max(1024, input.length / 3));
        try (GZIPOutputStream gzip = new GZIPOutputStream(output, 64 * 1024)) {
            gzip.write(input);
        }
        return output.toByteArray();
    }

    private static void writeFile(File file, byte[] data) throws IOException {
        try (FileOutputStream output = new FileOutputStream(file, false)) {
            output.write(data);
            output.getFD().sync();
        }
    }

    private static byte[] readFile(File file) throws IOException {
        try (FileInputStream input = new FileInputStream(file)) {
            return readAll(input, 64 * 1024 * 1024);
        }
    }

    private static byte[] readAll(InputStream input, int limit) throws IOException {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[16 * 1024];
        int total = 0;
        int read;
        while ((read = input.read(buffer)) != -1) {
            total += read;
            if (total > limit) throw new IOException("local codec: output limit exceeded");
            output.write(buffer, 0, read);
        }
        return output.toByteArray();
    }

    private static String readText(InputStream input, int limit) throws IOException {
        return new String(readAll(input, limit), StandardCharsets.UTF_8);
    }

    private static String shellQuote(String value) {
        return "'" + value.replace("'", "'\\''") + "'";
    }
}
