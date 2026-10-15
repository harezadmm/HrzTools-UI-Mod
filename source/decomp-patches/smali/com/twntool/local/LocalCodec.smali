.class public final Lcom/twntool/local/LocalCodec;
.super Ljava/lang/Object;
.source "LocalCodec.java"


# static fields
.field private static volatile context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    if-eqz p0, :cond_6

    array-length v0, p0

    if-eqz v0, :cond_6

    .line 30
    invoke-static {p0}, Lcom/twntool/local/LocalCodec;->looksLikeXml([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/twntool/local/LocalCodec;->gzip([B)[B

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    sget-object v0, Lcom/twntool/local/LocalCodec;->context:Landroid/content/Context;

    .line 33
    if-eqz v0, :cond_5

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 36
    new-instance v2, Ljava/io/File;

    const-string v3, "twn_codec_input.bin"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    new-instance v3, Ljava/io/File;

    const-string v4, "twn_codec_output.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-static {v2, p0}, Lcom/twntool/local/LocalCodec;->writeFile(Ljava/io/File;[B)V

    .line 39
    const/4 p0, 0x0

    new-array v2, p0, [B

    invoke-static {v3, v2}, Lcom/twntool/local/LocalCodec;->writeFile(Ljava/io/File;[B)V

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 42
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 43
    new-instance v2, Ljava/io/File;

    const-string v4, "libtwninject.so"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v4, Ljava/io/File;

    const-string v5, "libtwnhook.so"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twntool/local/LocalCodec;->shellQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twntool/local/LocalCodec;->shellQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twntool/local/LocalCodec;->shellQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GAME=/proc/1/root/data/data/com.playrix.township/saves; WORK=/data/local/tmp; APP=/proc/1/root"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; INJ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; HOOK="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; MAIN=$GAME/mGameInfo.xml; BAK=$GAME/mGameInfo.bak; ORIG=$WORK/twn_original.bin; ORIGBAK=$WORK/twn_original_bak.bin; DUMP=/proc/1/root/data/data/com.playrix.township/files/twn_decoded.bin; OUT=$APP/twn_codec_output.xml; restore_save(){ am force-stop com.playrix.township >/dev/null 2>&1 || true; [ -f $ORIG ] && cp $ORIG $MAIN; if [ -f $ORIGBAK ]; then cp $ORIGBAK $BAK; else rm -f $BAK; fi; chmod 660 $MAIN 2>/dev/null || true; chmod 660 $BAK 2>/dev/null || true; }; trap restore_save EXIT; am force-stop com.playrix.township >/dev/null 2>&1 || true; rm -f $ORIG $ORIGBAK $DUMP $WORK/twn_decoded.bin; cp $MAIN $ORIG || exit 31; [ ! -f $BAK ] || cp $BAK $ORIGBAK; cp $APP/twn_codec_input.bin $MAIN || exit 32; cp $APP/twn_codec_input.bin $BAK || exit 33; chmod 660 $MAIN $BAK; am start -n com.playrix.township/.Launcher >/dev/null 2>&1 & pid=''; i=0; while [ -z \"$pid\" ] && [ $i -lt 500 ]; do pid=$(toybox pidof com.playrix.township 2>/dev/null || true); i=$((i+1)); done; [ -n \"$pid\" ] || exit 34; $INJ $pid $HOOK || exit 35; i=0; while [ ! -s $DUMP ] && [ $i -lt 300 ]; do sleep 0.1; i=$((i+1)); done; [ -s $DUMP ] || exit 36; cp $DUMP $OUT || exit 37; chown --reference=$APP/twn_codec_input.bin $OUT; chmod 600 $OUT; exit 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "su"

    aput-object v4, v2, p0

    const-string p0, "-c"

    const/4 v4, 0x1

    aput-object p0, v2, v4

    const/4 p0, 0x2

    aput-object v0, v2, p0

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/twntool/local/LocalCodec;->readText(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-wide/16 v1, 0x2d

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2, v4}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 94
    invoke-static {v3}, Lcom/twntool/local/LocalCodec;->readFile(Ljava/io/File;)[B

    move-result-object p0

    .line 95
    array-length v0, p0

    const v1, 0x186a0

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/twntool/local/LocalCodec;->looksLikeXml([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {p0}, Lcom/twntool/local/LocalCodec;->gzip([B)[B

    move-result-object p0

    return-object p0

    .line 96
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local codec: invalid plaintext output ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " bytes)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "local codec: native decode failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "): "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 88
    new-instance p0, Ljava/io/IOException;

    const-string v0, "local codec: native decode timed out"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local codec: native helpers missing from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "local codec: application context unavailable"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "local codec: empty input"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_empty
    array-length v0, p0
    if-eqz v0, :cond_empty

    invoke-static {p0}, Lcom/twntool/local/LocalCodec;->plainFromGzip([B)[B
    move-result-object p0

    sget-object v0, Lcom/twntool/local/LocalCodec;->context:Landroid/content/Context;
    if-eqz v0, :cond_noctx
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v1

    new-instance v2, Ljava/io/File;
    const-string v3, "twn_codec_input.xml"
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v2, p0}, Lcom/twntool/local/LocalCodec;->writeFile(Ljava/io/File;[B)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/twntool/local/LocalCodec;->shellQuote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "GAME=/proc/1/root/data/data/com.playrix.township/saves; APP="
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v4, "; am force-stop com.playrix.township >/dev/null 2>&1 || true; cp $APP $GAME/mGameInfo.xml || exit 41; cp $APP $GAME/mGameInfo.bak || exit 42; chown u0_a54:u0_a54 $GAME/mGameInfo.xml $GAME/mGameInfo.bak; chmod 660 $GAME/mGameInfo.xml $GAME/mGameInfo.bak; am start -n com.playrix.township/.Launcher >/dev/null 2>&1; sleep 30; am force-stop com.playrix.township; cat $GAME/mGameInfo.xml"
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0

    new-instance v1, Ljava/lang/ProcessBuilder;
    const/4 v2, 0x3
    new-array v2, v2, [Ljava/lang/String;
    const-string v4, "su"
    const/4 p0, 0x0
    aput-object v4, v2, p0
    const-string p0, "-c"
    const/4 v4, 0x1
    aput-object p0, v2, v4
    const/4 p0, 0x2
    aput-object v0, v2, p0
    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    invoke-virtual {v1, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    move-result-object p0
    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v0
    const/high16 v1, 0x4000000
    invoke-static {v0, v1}, Lcom/twntool/local/LocalCodec;->readAll(Ljava/io/InputStream;I)[B
    move-result-object v0

    const-wide/16 v1, 0x2d
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    invoke-virtual {p0, v1, v2, v4}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z
    move-result v1
    if-eqz v1, :cond_timeout
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    move-result v1
    if-nez v1, :cond_nonzero

    move-object p0, v0
    array-length v0, p0
    const v1, 0x186a0
    if-lt v0, v1, :cond_invalid
    const/4 v0, 0x0
    aget-byte v1, p0, v0
    const/16 v2, 0x79
    if-ne v1, v2, :cond_invalid
    return-object p0

    :cond_invalid
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "local codec: invalid encoded output ("
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    array-length p0, p0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object p0
    const-string v1, " bytes)"
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0

    :cond_nonzero
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    new-instance v2, Ljava/lang/String;
    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    new-instance v0, Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "local codec: encode failed ("
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, "): "
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0

    :cond_timeout
    invoke-virtual {p0}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;
    new-instance p0, Ljava/io/IOException;
    const-string v0, "local codec: encode timed out"
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0

    :cond_noctx
    new-instance p0, Ljava/io/IOException;
    const-string v0, "local codec: application context unavailable"
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0

    :cond_empty
    new-instance p0, Ljava/io/IOException;
    const-string v0, "local codec: empty input"
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method private static gzip([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    div-int/lit8 v1, v1, 0x3

    const/16 v2, 0x400

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 125
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 126
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 125
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/twntool/local/LocalCodec;->context:Landroid/content/Context;

    .line 26
    :cond_0
    return-void
.end method

.method private static looksLikeXml([B)Z
    .locals 8

    .line 110
    array-length v0, p0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 111
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 112
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 113
    const/16 v4, 0xef

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v4, v2, 0x2

    if-ge v4, v0, :cond_0

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbb

    if-ne v6, v7, :cond_0

    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xbf

    if-ne v6, v7, :cond_0

    .line 114
    nop

    .line 115
    move v2, v4

    goto :goto_1

    .line 117
    :cond_0
    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    const/16 p0, 0x3c

    if-ne v3, p0, :cond_2

    move v1, v5

    :cond_2
    return v1

    .line 111
    :cond_3
    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 120
    :cond_4
    return v1
.end method

.method public static plainFromGzip([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    if-eqz p0, :cond_1

    .line 103
    invoke-static {p0}, Lcom/twntool/local/LocalCodec;->looksLikeXml([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/high16 p0, 0x10000

    invoke-direct {v0, v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 105
    const/high16 p0, 0x4000000

    :try_start_0
    invoke-static {v0, p0}, Lcom/twntool/local/LocalCodec;->readAll(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 105
    return-object p0

    .line 104
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    .line 102
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "local codec: null encode input"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readAll(Ljava/io/InputStream;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 147
    const/4 v2, 0x0

    move v3, v2

    .line 149
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 150
    add-int/2addr v3, v4

    .line 151
    if-gt v3, p1, :cond_0

    .line 152
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "local codec: output limit exceeded"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static readFile(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 140
    const/high16 p0, 0x4000000

    :try_start_0
    invoke-static {v0, p0}, Lcom/twntool/local/LocalCodec;->readAll(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 140
    return-object p0

    .line 139
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static readText(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/twntool/local/LocalCodec;->readAll(Ljava/io/InputStream;I)[B

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static shellQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'\\\'\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static writeFile(Ljava/io/File;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 133
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 134
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 136
    return-void

    .line 132
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
