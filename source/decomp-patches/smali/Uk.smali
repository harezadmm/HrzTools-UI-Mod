.class public abstract LUk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v3, v2, 0x2

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x2

    .line 11
    .line 12
    const-string v5, "adca877692d4bb5af08b4b677198dd3a"

    .line 13
    .line 14
    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "substring(...)"

    .line 19
    .line 20
    invoke-static {v3, v4}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, LN6;->f(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-byte v3, v3

    .line 31
    aput-byte v3, v1, v2

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sput-object v1, LUk;->a:[B

    .line 37
    .line 38
    return-void
.end method

.method public static a([B[B[B)[B
    .locals 3

    .line 1
    const-string v0, "HmacSHA256"

    .line 2
    .line 3
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    .line 25
    invoke-direct {v1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    new-array v0, p0, [B

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    aput-byte p0, v0, v1

    .line 36
    .line 37
    invoke-static {p2, v0}, Ly3;->Y([B[B)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p1, "doFinal(...)"

    .line 46
    .line 47
    invoke-static {p0, p1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public static b([BI)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    sub-int/2addr v0, p1

    .line 3
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static c([BI)Lih;
    .locals 2

    .line 1
    invoke-static {p0, p1}, LUk;->b([BI)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x4

    .line 12
    .line 13
    add-int/2addr v0, p1

    .line 14
    array-length v1, p0

    .line 15
    if-gt v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p0, p1, v0}, Ly3;->U([BII)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Lih;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p1, "Failed requirement."

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "sourceDir"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, LUk;->e(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v2, LUk;->a:[B

    .line 25
    .line 26
    sget-object v3, LG4;->a:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v3, "getBytes(...)"

    .line 33
    .line 34
    invoke-static {p2, v3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2, p2}, LUk;->a([B[B[B)[B

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 46
    .line 47
    .line 48
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    invoke-static {p0}, Lud;->o(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, LN6;->K(Ljava/io/InputStream;)[B

    .line 53
    .line 54
    .line 55
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-static {p0, v0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "AES/GCM/NoPadding"

    .line 60
    .line 61
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 66
    .line 67
    const-string v2, "AES"

    .line 68
    .line 69
    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p2, Ljavax/crypto/spec/GCMParameterSpec;

    .line 73
    .line 74
    const/16 v2, 0x80

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    const/16 v4, 0xc

    .line 78
    .line 79
    invoke-direct {p2, v2, p1, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 80
    .line 81
    .line 82
    const/4 v2, 0x2

    .line 83
    invoke-virtual {p0, v2, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 84
    .line 85
    .line 86
    array-length p2, p1

    .line 87
    sub-int/2addr p2, v4

    .line 88
    invoke-virtual {p0, p1, v4, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 89
    .line 90
    .line 91
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :catchall_1
    move-exception p2

    .line 96
    :try_start_4
    invoke-static {p0, p1}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 100
    :catch_0
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x60t
        0x64t
        -0x3dt
        0x32t
        -0x7dt
        -0x65t
        0x7at
        -0x6ft
        -0x31t
        -0x36t
        -0x21t
        0x31t
        0x77t
        0x64t
        0x2t
        0xat
        0x6bt
        0xbt
        -0x5ft
        -0x59t
        -0x17t
        0x19t
        -0x2at
        0x2ct
        -0x30t
        -0x7dt
        0x5at
        0x1ct
        0x2ft
        -0x25t
        0x63t
        0x43t
    .end array-data
.end method
