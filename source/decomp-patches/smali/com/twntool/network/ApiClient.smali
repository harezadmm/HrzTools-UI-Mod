.class public final Lcom/twntool/network/ApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/twntool/network/SecureHttpFactory;

.field public final b:LZb;

.field public final c:LBf;

.field public final d:Ljava/security/SecureRandom;

.field public final e:J

.field public final f:Lam;

.field public final g:Lam;

.field public volatile h:Ljava/lang/String;

.field public volatile i:Ljava/lang/String;

.field public volatile j:[B

.field public volatile k:[B

.field public volatile l:J

.field public volatile m:J

.field public volatile n:Ljava/lang/String;

.field public volatile o:Ljava/lang/String;

.field public final p:LBf;

.field public final q:[B

.field public final r:I

.field public volatile s:Lf3;

.field public final t:[B

.field public final u:[B


# direct methods
.method public constructor <init>(Lcom/twntool/network/SecureHttpFactory;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "secureHttp"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->a:Lcom/twntool/network/SecureHttpFactory;

    .line 11
    .line 12
    new-instance p1, LZb;

    .line 13
    .line 14
    invoke-direct {p1}, LZb;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 18
    .line 19
    sget-object p1, LBf;->c:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    const-string p1, "application/json"

    .line 22
    .line 23
    invoke-static {p1}, Los;->r(Ljava/lang/String;)LBf;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->c:LBf;

    .line 28
    .line 29
    new-instance p1, Ljava/security/SecureRandom;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->d:Ljava/security/SecureRandom;

    .line 35
    .line 36
    const-wide/32 v1, 0x12c00000

    .line 37
    .line 38
    .line 39
    iput-wide v1, p0, Lcom/twntool/network/ApiClient;->e:J

    .line 40
    .line 41
    new-instance p1, LB1;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {p1, p0, v1}, LB1;-><init>(Lcom/twntool/network/ApiClient;I)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lam;

    .line 48
    .line 49
    invoke-direct {v1, p1}, Lam;-><init>(Llb;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/twntool/network/ApiClient;->f:Lam;

    .line 53
    .line 54
    new-instance p1, LB1;

    .line 55
    .line 56
    invoke-direct {p1, p0, v0}, LB1;-><init>(Lcom/twntool/network/ApiClient;I)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lam;

    .line 60
    .line 61
    invoke-direct {v1, p1}, Lam;-><init>(Llb;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/twntool/network/ApiClient;->g:Lam;

    .line 65
    .line 66
    const-string p1, ""

    .line 67
    .line 68
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->n:Ljava/lang/String;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->o:Ljava/lang/String;

    .line 71
    .line 72
    const-string p1, "application/octet-stream"

    .line 73
    .line 74
    invoke-static {p1}, Los;->r(Ljava/lang/String;)LBf;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->p:LBf;

    .line 79
    .line 80
    const/4 p1, 0x4

    .line 81
    new-array p1, p1, [B

    .line 82
    .line 83
    fill-array-data p1, :array_0

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->q:[B

    .line 87
    .line 88
    iput v0, p0, Lcom/twntool/network/ApiClient;->r:I

    .line 89
    .line 90
    sget-object p1, LG4;->d:Ljava/nio/charset/Charset;

    .line 91
    .line 92
    const-string v0, "{\"payload\":\""

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const-string v1, "getBytes(...)"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/twntool/network/ApiClient;->t:[B

    .line 104
    .line 105
    const-string v0, "\"}"

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1, v1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->u:[B

    .line 115
    .line 116
    return-void

    .line 117
    :array_0
    .array-data 1
        0x54t
        0x57t
        0x5at
        0x31t
    .end array-data
.end method

.method public static A(Lcom/twntool/network/ApiClient;Ljava/util/List;Ljava/lang/String;[BLjava/lang/String;Ljava/util/zip/GZIPInputStream;II)[B
    .locals 8

    .line 1
    and-int/lit8 v0, p7, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p7, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p7, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move-object p4, v1

    .line 17
    :cond_2
    and-int/lit8 v0, p7, 0x10

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    move-object p5, v1

    .line 22
    :cond_3
    and-int/lit8 p7, p7, 0x20

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p7, :cond_4

    .line 26
    .line 27
    move p6, v0

    .line 28
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    if-eqz p3, :cond_5

    .line 32
    .line 33
    array-length p6, p3

    .line 34
    :cond_5
    div-int/lit8 p6, p6, 0x3

    .line 35
    .line 36
    const/high16 p7, 0x100000

    .line 37
    .line 38
    invoke-static {p7, p6}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result p6

    .line 42
    new-instance p7, Ljava/io/ByteArrayOutputStream;

    .line 43
    .line 44
    invoke-direct {p7, p6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance p6, Ljava/util/zip/GZIPOutputStream;

    .line 48
    .line 49
    const/high16 v2, 0x10000

    .line 50
    .line 51
    invoke-direct {p6, p7, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 55
    .line 56
    sget-object v4, LG4;->a:Ljava/nio/charset/Charset;

    .line 57
    .line 58
    invoke-direct {v3, p6, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 59
    .line 60
    .line 61
    const-string v4, "{"

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v4, 0x1

    .line 71
    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const-string v6, ","

    .line 76
    .line 77
    if-eqz v5, :cond_c

    .line 78
    .line 79
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Lih;

    .line 84
    .line 85
    iget-object v7, v5, Lih;->a:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v7, Ljava/lang/String;

    .line 88
    .line 89
    iget-object v5, v5, Lih;->b:Ljava/lang/Object;

    .line 90
    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    if-nez v4, :cond_7

    .line 94
    .line 95
    invoke-virtual {v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_7
    :goto_1
    invoke-static {v3, v7}, Lcom/twntool/network/ApiClient;->F(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v4, ":"

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    instance-of v4, v5, Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v4, :cond_8

    .line 113
    .line 114
    check-cast v5, Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v3, v5}, Lcom/twntool/network/ApiClient;->F(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_8
    instance-of v4, v5, Ljava/lang/Boolean;

    .line 121
    .line 122
    if-eqz v4, :cond_a

    .line 123
    .line 124
    check-cast v5, Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_9

    .line 131
    .line 132
    const-string v4, "true"

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_9
    const-string v4, "false"

    .line 136
    .line 137
    :goto_2
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_a
    instance-of v4, v5, Ljava/lang/Number;

    .line 142
    .line 143
    if-eqz v4, :cond_b

    .line 144
    .line 145
    check-cast v5, Ljava/lang/Number;

    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_b
    iget-object v4, p0, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 156
    .line 157
    invoke-virtual {v4, v5}, LZb;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    :goto_3
    move v4, v0

    .line 165
    goto :goto_0

    .line 166
    :cond_c
    const-string p0, "\""

    .line 167
    .line 168
    const-string p1, ":\""

    .line 169
    .line 170
    if-eqz p2, :cond_f

    .line 171
    .line 172
    if-eqz p3, :cond_f

    .line 173
    .line 174
    if-nez v4, :cond_d

    .line 175
    .line 176
    :try_start_2
    invoke-virtual {v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_d
    invoke-static {v3, p2}, Lcom/twntool/network/ApiClient;->F(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    .line 186
    .line 187
    .line 188
    new-instance p2, Landroid/util/Base64OutputStream;

    .line 189
    .line 190
    const/16 v4, 0x12

    .line 191
    .line 192
    invoke-direct {p2, p6, v4}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 193
    .line 194
    .line 195
    move v4, v0

    .line 196
    :goto_4
    array-length v5, p3

    .line 197
    if-ge v4, v5, :cond_e

    .line 198
    .line 199
    array-length v5, p3

    .line 200
    sub-int/2addr v5, v4

    .line 201
    const/high16 v7, 0x30000

    .line 202
    .line 203
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-virtual {p2, p3, v4, v5}, Landroid/util/Base64OutputStream;->write([BII)V

    .line 208
    .line 209
    .line 210
    add-int/2addr v4, v5

    .line 211
    goto :goto_4

    .line 212
    :cond_e
    invoke-virtual {p2}, Landroid/util/Base64OutputStream;->close()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_f
    move v0, v4

    .line 220
    :goto_5
    if-eqz p4, :cond_12

    .line 221
    .line 222
    if-eqz p5, :cond_12

    .line 223
    .line 224
    if-nez v0, :cond_10

    .line 225
    .line 226
    invoke-virtual {v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :cond_10
    invoke-static {v3, p4}, Lcom/twntool/network/ApiClient;->F(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance p1, Ljava/io/InputStreamReader;

    .line 236
    .line 237
    sget-object p2, LG4;->a:Ljava/nio/charset/Charset;

    .line 238
    .line 239
    invoke-direct {p1, p5, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 240
    .line 241
    .line 242
    new-array p2, v2, [C

    .line 243
    .line 244
    :goto_6
    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    .line 245
    .line 246
    .line 247
    move-result p3

    .line 248
    if-ltz p3, :cond_11

    .line 249
    .line 250
    invoke-static {v3, p2, p3}, Lcom/twntool/network/ApiClient;->p(Ljava/io/OutputStreamWriter;[CI)V

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_11
    invoke-virtual {v3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_12
    const-string p0, "}"

    .line 258
    .line 259
    invoke-virtual {v3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    .line 264
    .line 265
    invoke-static {p6, v1}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    const-string p1, "toByteArray(...)"

    .line 273
    .line 274
    invoke-static {p0, p1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return-object p0

    .line 278
    :goto_7
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    :catchall_1
    move-exception p1

    .line 280
    invoke-static {p6, p0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 281
    .line 282
    .line 283
    throw p1
.end method

.method public static F(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "toCharArray(...)"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    array-length v1, p1

    .line 16
    invoke-static {p0, p1, v1}, Lcom/twntool/network/ApiClient;->p(Ljava/io/OutputStreamWriter;[CI)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static final a(Lcom/twntool/network/ApiClient;Ljava/io/InputStream;)LO6;
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/BufferedReader;

    .line 5
    .line 6
    new-instance v1, Ljava/io/InputStreamReader;

    .line 7
    .line 8
    sget-object v2, LG4;->a:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    invoke-direct {v1, v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    const/high16 v2, 0x10000

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/16 v3, 0x7b

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-ne v1, v3, :cond_18

    .line 33
    .line 34
    move v1, v4

    .line 35
    :goto_1
    const-string v5, "Resposta inv\u00e1lida da VPS."

    .line 36
    .line 37
    if-eqz v1, :cond_17

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    move-object v6, v1

    .line 41
    move-object v7, v6

    .line 42
    move-object v8, v7

    .line 43
    :goto_2
    invoke-static {v0}, Lcom/twntool/network/ApiClient;->z(Ljava/io/BufferedReader;)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    if-ltz v9, :cond_14

    .line 48
    .line 49
    const/16 v10, 0x7d

    .line 50
    .line 51
    if-ne v9, v10, :cond_1

    .line 52
    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_1
    const/16 v11, 0x2c

    .line 56
    .line 57
    if-eq v9, v11, :cond_13

    .line 58
    .line 59
    const/16 v11, 0x22

    .line 60
    .line 61
    if-ne v9, v11, :cond_12

    .line 62
    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v12, Ll0;

    .line 69
    .line 70
    const/4 v13, 0x2

    .line 71
    invoke-direct {v12, v9, v13}, Ll0;-><init>(Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v12}, Lcom/twntool/network/ApiClient;->r(Ljava/io/BufferedReader;Lv1;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    const-string v12, "toString(...)"

    .line 82
    .line 83
    invoke-static {v9, v12}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lcom/twntool/network/ApiClient;->z(Ljava/io/BufferedReader;)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/16 v13, 0x3a

    .line 91
    .line 92
    if-ne v12, v13, :cond_11

    .line 93
    .line 94
    invoke-static {v0}, Lcom/twntool/network/ApiClient;->z(Ljava/io/BufferedReader;)I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    const-string v13, "text"

    .line 99
    .line 100
    invoke-static {v9, v13}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    if-eqz v13, :cond_2

    .line 105
    .line 106
    if-ne v12, v11, :cond_2

    .line 107
    .line 108
    invoke-static {v0, v2}, Lcom/twntool/network/ApiClient;->s(Ljava/io/BufferedReader;Z)[B

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const-string v13, "data"

    .line 114
    .line 115
    invoke-static {v9, v13}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-eqz v13, :cond_3

    .line 120
    .line 121
    if-ne v12, v11, :cond_3

    .line 122
    .line 123
    if-nez v6, :cond_3

    .line 124
    .line 125
    invoke-static {v0, v4}, Lcom/twntool/network/ApiClient;->s(Ljava/io/BufferedReader;Z)[B

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const-string v13, "handle"

    .line 131
    .line 132
    invoke-static {v9, v13}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    if-eqz v13, :cond_4

    .line 137
    .line 138
    if-ne v12, v11, :cond_4

    .line 139
    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    new-instance v9, Ll0;

    .line 146
    .line 147
    const/4 v10, 0x2

    .line 148
    invoke-direct {v9, v7, v10}, Ll0;-><init>(Ljava/lang/Object;I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v9}, Lcom/twntool/network/ApiClient;->r(Ljava/io/BufferedReader;Lv1;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    const-string v13, "meta"

    .line 160
    .line 161
    invoke-static {v9, v13}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-eqz v9, :cond_10

    .line 166
    .line 167
    if-ne v12, v3, :cond_10

    .line 168
    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v9, "{"

    .line 172
    .line 173
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move v12, v2

    .line 177
    move v13, v12

    .line 178
    move v9, v4

    .line 179
    :cond_5
    :goto_3
    if-lez v9, :cond_e

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-ltz v14, :cond_d

    .line 186
    .line 187
    int-to-char v14, v14

    .line 188
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    if-eqz v12, :cond_8

    .line 192
    .line 193
    if-eqz v13, :cond_6

    .line 194
    .line 195
    move v13, v2

    .line 196
    goto :goto_3

    .line 197
    :cond_6
    const/16 v15, 0x5c

    .line 198
    .line 199
    if-ne v14, v15, :cond_7

    .line 200
    .line 201
    move v13, v4

    .line 202
    goto :goto_3

    .line 203
    :cond_7
    if-ne v14, v11, :cond_5

    .line 204
    .line 205
    move v12, v2

    .line 206
    goto :goto_3

    .line 207
    :cond_8
    if-ne v14, v11, :cond_9

    .line 208
    .line 209
    move v12, v4

    .line 210
    goto :goto_3

    .line 211
    :cond_9
    if-ne v14, v3, :cond_a

    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_a
    const/16 v15, 0x5b

    .line 215
    .line 216
    if-ne v14, v15, :cond_b

    .line 217
    .line 218
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_b
    if-ne v14, v10, :cond_c

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_c
    const/16 v15, 0x5d

    .line 225
    .line 226
    if-ne v14, v15, :cond_5

    .line 227
    .line 228
    :goto_5
    add-int/lit8 v9, v9, -0x1

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_d
    new-instance v0, LF1;

    .line 232
    .line 233
    const-string v1, "Resposta truncada da VPS."

    .line 234
    .line 235
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :cond_e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    const-class v9, Ljava/util/Map;

    .line 244
    .line 245
    move-object/from16 v10, p0

    .line 246
    .line 247
    iget-object v11, v10, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 248
    .line 249
    invoke-virtual {v11, v8, v9}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    instance-of v9, v8, Ljava/util/Map;

    .line 254
    .line 255
    if-eqz v9, :cond_f

    .line 256
    .line 257
    check-cast v8, Ljava/util/Map;

    .line 258
    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :cond_f
    move-object v8, v1

    .line 262
    goto/16 :goto_2

    .line 263
    .line 264
    :cond_10
    move-object/from16 v10, p0

    .line 265
    .line 266
    invoke-static {v0, v12}, Lcom/twntool/network/ApiClient;->y(Ljava/io/BufferedReader;I)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :cond_11
    new-instance v0, LF1;

    .line 272
    .line 273
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :cond_12
    new-instance v0, LF1;

    .line 278
    .line 279
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_13
    move-object/from16 v10, p0

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_14
    :goto_6
    if-eqz v6, :cond_15

    .line 288
    .line 289
    array-length v0, v6

    .line 290
    goto :goto_7

    .line 291
    :cond_15
    move v0, v2

    .line 292
    :goto_7
    div-int/lit16 v0, v0, 0x400

    .line 293
    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v3, "decode json: doc="

    .line 297
    .line 298
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v0, " KB em gzip"

    .line 305
    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    const-string v1, "TwnMem"

    .line 314
    .line 315
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    new-instance v0, LO6;

    .line 319
    .line 320
    if-nez v6, :cond_16

    .line 321
    .line 322
    new-array v1, v2, [B

    .line 323
    .line 324
    invoke-static {v1}, Lcom/twntool/network/ApiClient;->m([B)[B

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    :cond_16
    invoke-direct {v0, v6, v8, v7}, LO6;-><init>([BLjava/util/Map;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    return-object v0

    .line 332
    :cond_17
    new-instance v0, LF1;

    .line 333
    .line 334
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_18
    move-object/from16 v10, p0

    .line 339
    .line 340
    goto/16 :goto_0
.end method

.method public static c(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/lang/Object;)LRd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, LZb;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "toJson(...)"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, LG4;->a:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "getBytes(...)"

    .line 19
    .line 20
    invoke-static {p2, v0}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/twntool/network/ApiClient;->m([B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance v0, LC1;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p0, v1}, LC1;-><init>(Lcom/twntool/network/ApiClient;I)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/twntool/network/ApiClient;->e(Ljava/lang/String;[BZLwb;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, LRd;

    .line 39
    .line 40
    return-object p0
.end method

.method public static m([B)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-static {v1, p0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "toByteArray(...)"

    .line 23
    .line 24
    invoke-static {p0, v0}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    invoke-static {v1, p0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public static o([B[B)[B
    .locals 11

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const-string v2, "HmacSHA256"

    .line 6
    .line 7
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 12
    .line 13
    invoke-direct {v4, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "doFinal(...)"

    .line 24
    .line 25
    invoke-static {p0, v1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-array v3, v0, [B

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    new-array v5, v4, [B

    .line 32
    .line 33
    const/4 v6, 0x1

    .line 34
    move v7, v4

    .line 35
    move v8, v6

    .line 36
    :goto_0
    if-ge v7, v0, :cond_0

    .line 37
    .line 38
    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    .line 43
    .line 44
    invoke-direct {v10, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v10}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v5}, Ljavax/crypto/Mac;->update([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v9, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 54
    .line 55
    .line 56
    int-to-byte v5, v8

    .line 57
    invoke-virtual {v9, v5}, Ljavax/crypto/Mac;->update(B)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9}, Ljavax/crypto/Mac;->doFinal()[B

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5, v1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    array-length v9, v5

    .line 68
    rsub-int/lit8 v10, v7, 0x20

    .line 69
    .line 70
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    invoke-static {v5, v4, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    .line 77
    add-int/2addr v7, v9

    .line 78
    add-int/2addr v8, v6

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    return-object v3
.end method

.method public static p(Ljava/io/OutputStreamWriter;[CI)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v0, p2, :cond_c

    .line 4
    .line 5
    aget-char v2, p1, v0

    .line 6
    .line 7
    const/16 v3, 0x22

    .line 8
    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    const-string v2, "\\\""

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/16 v3, 0x5c

    .line 15
    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    const-string v2, "\\\\"

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 v3, 0xa

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    const-string v2, "\\n"

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/16 v3, 0xd

    .line 29
    .line 30
    if-ne v2, v3, :cond_3

    .line 31
    .line 32
    const-string v2, "\\r"

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/16 v3, 0x9

    .line 36
    .line 37
    if-ne v2, v3, :cond_4

    .line 38
    .line 39
    const-string v2, "\\t"

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    const/16 v3, 0x8

    .line 43
    .line 44
    if-ne v2, v3, :cond_5

    .line 45
    .line 46
    const-string v2, "\\b"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_5
    const/16 v3, 0xc

    .line 50
    .line 51
    if-ne v2, v3, :cond_6

    .line 52
    .line 53
    const-string v2, "\\f"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_6
    const/16 v3, 0x20

    .line 57
    .line 58
    if-ge v2, v3, :cond_7

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, "\\u%04x"

    .line 74
    .line 75
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    goto :goto_1

    .line 80
    :cond_7
    const/16 v3, 0x2028

    .line 81
    .line 82
    if-ne v2, v3, :cond_8

    .line 83
    .line 84
    const-string v2, "\\u2028"

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_8
    const/16 v3, 0x2029

    .line 88
    .line 89
    if-ne v2, v3, :cond_9

    .line 90
    .line 91
    const-string v2, "\\u2029"

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_9
    const/4 v2, 0x0

    .line 95
    :goto_1
    if-eqz v2, :cond_b

    .line 96
    .line 97
    if-le v0, v1, :cond_a

    .line 98
    .line 99
    sub-int v3, v0, v1

    .line 100
    .line 101
    invoke-virtual {p0, p1, v1, v3}, Ljava/io/Writer;->write([CII)V

    .line 102
    .line 103
    .line 104
    :cond_a
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v1, v0, 0x1

    .line 108
    .line 109
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_c
    if-le p2, v1, :cond_d

    .line 113
    .line 114
    sub-int/2addr p2, v1

    .line 115
    invoke-virtual {p0, p1, v1, p2}, Ljava/io/Writer;->write([CII)V

    .line 116
    .line 117
    .line 118
    :cond_d
    return-void
.end method

.method public static q(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/util/Map;)LRd;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "HTTP "

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 8
    .line 9
    invoke-virtual {v2, p2}, LZb;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-string v2, ""

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    move-object p2, v2

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/twntool/network/ApiClient;->c:LBf;

    .line 19
    .line 20
    sget-object v4, LG4;->a:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    sget-object v6, LBf;->c:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    invoke-virtual {v3, v5}, LBf;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "; charset=utf-8"

    .line 42
    .line 43
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v6, "<this>"

    .line 51
    .line 52
    invoke-static {v3, v6}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-static {v3}, Los;->r(Ljava/lang/String;)LBf;

    .line 56
    .line 57
    .line 58
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-object v3, v5

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move-object v4, v6

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    const-string v4, "this as java.lang.String).getBytes(charset)"

    .line 68
    .line 69
    invoke-static {p2, v4}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    array-length v4, p2

    .line 73
    array-length v6, p2

    .line 74
    int-to-long v7, v6

    .line 75
    int-to-long v9, v0

    .line 76
    int-to-long v11, v4

    .line 77
    invoke-static/range {v7 .. v12}, Lat;->c(JJJ)V

    .line 78
    .line 79
    .line 80
    new-instance v6, LDi;

    .line 81
    .line 82
    invoke-direct {v6, v3, v4, p2, v0}, LDi;-><init>(LBf;I[BI)V

    .line 83
    .line 84
    .line 85
    new-instance p2, LAa;

    .line 86
    .line 87
    invoke-direct {p2}, LAa;-><init>()V

    .line 88
    .line 89
    .line 90
    sget-object v3, Lud;->m:Ljava/lang/String;

    .line 91
    .line 92
    const/4 v4, 0x1

    .line 93
    new-array v4, v4, [C

    .line 94
    .line 95
    const/16 v7, 0x2f

    .line 96
    .line 97
    aput-char v7, v4, v0

    .line 98
    .line 99
    invoke-static {v3, v4}, LGl;->b1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p2, p1}, LAa;->d(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string p1, "POST"

    .line 122
    .line 123
    invoke-virtual {p2, p1, v6}, LAa;->c(Ljava/lang/String;Los;)V

    .line 124
    .line 125
    .line 126
    const-string p1, "Content-Type"

    .line 127
    .line 128
    const-string v3, "application/json"

    .line 129
    .line 130
    invoke-virtual {p2, p1, v3}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string p1, "User-Agent"

    .line 134
    .line 135
    const-string v3, "TwnTool/5.0 Android"

    .line 136
    .line 137
    invoke-virtual {p2, p1, v3}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 141
    .line 142
    if-eqz p1, :cond_3

    .line 143
    .line 144
    const-string v3, "Bearer "

    .line 145
    .line 146
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string v3, "Authorization"

    .line 151
    .line 152
    invoke-virtual {p2, v3, p1}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    iget-object p1, p0, Lcom/twntool/network/ApiClient;->g:Lam;

    .line 156
    .line 157
    invoke-virtual {p1}, Lam;->a()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, LJg;

    .line 162
    .line 163
    invoke-virtual {p2}, LAa;->a()Li2;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    new-instance v3, LWh;

    .line 171
    .line 172
    invoke-direct {v3, p1, p2, v0}, LWh;-><init>(LJg;Li2;Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, LWh;->c()LTi;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/twntool/network/ApiClient;->E(LTi;)V

    .line 180
    .line 181
    .line 182
    iget-object p2, p1, LTi;->g:Lci;

    .line 183
    .line 184
    if-eqz p2, :cond_4

    .line 185
    .line 186
    invoke-virtual {p2}, Lci;->m()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    goto :goto_1

    .line 191
    :catchall_0
    move-exception p0

    .line 192
    goto :goto_4

    .line 193
    :cond_4
    :goto_1
    invoke-virtual {p1}, LTi;->d()Z

    .line 194
    .line 195
    .line 196
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    const-class v0, LRd;

    .line 198
    .line 199
    if-nez p2, :cond_7

    .line 200
    .line 201
    :try_start_2
    iget-object p0, p0, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 202
    .line 203
    invoke-virtual {p0, v2, v0}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    check-cast p0, LRd;

    .line 208
    .line 209
    if-eqz p0, :cond_5

    .line 210
    .line 211
    const-string p2, "detail"

    .line 212
    .line 213
    invoke-virtual {p0, p2}, LRd;->j(Ljava/lang/String;)LOd;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    if-eqz p0, :cond_5

    .line 218
    .line 219
    invoke-virtual {p0}, LOd;->h()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :catch_1
    :cond_5
    :try_start_3
    new-instance p0, LF1;

    .line 224
    .line 225
    iget p2, p1, LTi;->d:I

    .line 226
    .line 227
    if-nez v5, :cond_6

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_6
    move-object v2, v5

    .line 231
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string p2, ": "

    .line 240
    .line 241
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-direct {p0, p2}, LF1;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p0

    .line 255
    :cond_7
    invoke-static {v2}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result p2

    .line 259
    if-eqz p2, :cond_8

    .line 260
    .line 261
    new-instance p0, LRd;

    .line 262
    .line 263
    invoke-direct {p0}, LRd;-><init>()V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_8
    iget-object p0, p0, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 268
    .line 269
    invoke-virtual {p0, v2, v0}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    const-string p2, "fromJson(...)"

    .line 274
    .line 275
    invoke-static {p0, p2}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    check-cast p0, LRd;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    .line 280
    :goto_3
    invoke-static {p1, v5}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 281
    .line 282
    .line 283
    return-object p0

    .line 284
    :goto_4
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 285
    :catchall_1
    move-exception p2

    .line 286
    invoke-static {p1, p0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    throw p2
.end method

.method public static r(Ljava/io/BufferedReader;Lv1;)V
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Resposta truncada da VPS."

    .line 6
    .line 7
    if-ltz v0, :cond_c

    .line 8
    .line 9
    const/16 v2, 0x22

    .line 10
    .line 11
    if-eq v0, v2, :cond_b

    .line 12
    .line 13
    const/16 v2, 0x5c

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    int-to-char v0, v0

    .line 18
    invoke-interface {p1, v0}, Lv1;->q(C)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, -0x1

    .line 27
    if-eq v0, v2, :cond_a

    .line 28
    .line 29
    const/16 v1, 0x62

    .line 30
    .line 31
    if-eq v0, v1, :cond_9

    .line 32
    .line 33
    const/16 v1, 0x66

    .line 34
    .line 35
    if-eq v0, v1, :cond_8

    .line 36
    .line 37
    const/16 v1, 0x6e

    .line 38
    .line 39
    if-eq v0, v1, :cond_7

    .line 40
    .line 41
    const/16 v1, 0x72

    .line 42
    .line 43
    if-eq v0, v1, :cond_6

    .line 44
    .line 45
    const/16 v1, 0x74

    .line 46
    .line 47
    if-eq v0, v1, :cond_5

    .line 48
    .line 49
    const/16 v1, 0x75

    .line 50
    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    int-to-char v0, v0

    .line 54
    invoke-interface {p1, v0}, Lv1;->q(C)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    move v1, v0

    .line 60
    :goto_1
    const/4 v3, 0x4

    .line 61
    if-ge v0, v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-gez v3, :cond_2

    .line 68
    .line 69
    move v3, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/16 v4, 0x10

    .line 72
    .line 73
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(II)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    :goto_2
    if-ltz v3, :cond_3

    .line 78
    .line 79
    shl-int/lit8 v1, v1, 0x4

    .line 80
    .line 81
    or-int/2addr v1, v3

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    new-instance p0, LF1;

    .line 86
    .line 87
    const-string p1, "Resposta inv\u00e1lida da VPS."

    .line 88
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_4
    int-to-char v0, v1

    .line 94
    invoke-interface {p1, v0}, Lv1;->q(C)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    const/16 v0, 0x9

    .line 99
    .line 100
    invoke-interface {p1, v0}, Lv1;->q(C)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    const/16 v0, 0xd

    .line 105
    .line 106
    invoke-interface {p1, v0}, Lv1;->q(C)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    const/16 v0, 0xa

    .line 111
    .line 112
    invoke-interface {p1, v0}, Lv1;->q(C)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_8
    const/16 v0, 0xc

    .line 117
    .line 118
    invoke-interface {p1, v0}, Lv1;->q(C)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_9
    const/16 v0, 0x8

    .line 123
    .line 124
    invoke-interface {p1, v0}, Lv1;->q(C)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_a
    new-instance p0, LF1;

    .line 129
    .line 130
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_b
    return-void

    .line 135
    :cond_c
    new-instance p0, LF1;

    .line 136
    .line 137
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method

.method public static s(Ljava/io/BufferedReader;Z)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    const/high16 v1, 0x200000

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 9
    .line 10
    const/high16 v2, 0x10000

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lt1;

    .line 18
    .line 19
    invoke-direct {p1, v1}, Lt1;-><init>(Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/twntool/network/ApiClient;->r(Ljava/io/BufferedReader;Lv1;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lt1;->a()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p1, Ljava/io/BufferedWriter;

    .line 30
    .line 31
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 32
    .line 33
    sget-object v4, LG4;->a:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 39
    .line 40
    .line 41
    new-instance v2, LA1;

    .line 42
    .line 43
    invoke-direct {v2, p1}, LA1;-><init>(Ljava/io/BufferedWriter;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v2}, Lcom/twntool/network/ApiClient;->r(Ljava/io/BufferedReader;Lv1;)V

    .line 47
    .line 48
    .line 49
    iget p0, v2, LA1;->b:I

    .line 50
    .line 51
    if-lez p0, :cond_1

    .line 52
    .line 53
    iget-object v3, v2, LA1;->d:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, [C

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {p1, v3, v4, p0}, Ljava/io/Writer;->write([CII)V

    .line 59
    .line 60
    .line 61
    iput v4, v2, LA1;->b:I

    .line 62
    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p1, "toByteArray(...)"

    .line 77
    .line 78
    invoke-static {p0, p1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object p0
.end method

.method public static x([B)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0x40

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lud;->o(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    array-length v1, p0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_0

    .line 24
    .line 25
    aget-byte v3, p0, v2

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "%02x"

    .line 41
    .line 42
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v0, "toString(...)"

    .line 57
    .line 58
    invoke-static {p0, v0}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object p0
.end method

.method public static y(Ljava/io/BufferedReader;I)V
    .locals 11

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    if-eq p1, v0, :cond_b

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/16 v2, 0x5d

    .line 7
    .line 8
    const/16 v3, 0x7d

    .line 9
    .line 10
    const/16 v4, 0x7b

    .line 11
    .line 12
    const/16 v5, 0x5b

    .line 13
    .line 14
    if-eq p1, v5, :cond_1

    .line 15
    .line 16
    if-eq p1, v4, :cond_1

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedReader;->mark(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-ltz p1, :cond_c

    .line 26
    .line 27
    const/16 v0, 0x2c

    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    if-eq p1, v2, :cond_0

    .line 32
    .line 33
    if-eq p1, v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    .line 37
    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    move v7, p1

    .line 42
    move v8, v7

    .line 43
    move v6, v1

    .line 44
    :cond_2
    :goto_1
    if-lez v6, :cond_c

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-ltz v9, :cond_a

    .line 51
    .line 52
    int-to-char v9, v9

    .line 53
    if-eqz v7, :cond_5

    .line 54
    .line 55
    if-eqz v8, :cond_3

    .line 56
    .line 57
    move v8, p1

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/16 v10, 0x5c

    .line 60
    .line 61
    if-ne v9, v10, :cond_4

    .line 62
    .line 63
    move v8, v1

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    if-ne v9, v0, :cond_2

    .line 66
    .line 67
    move v7, p1

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    if-ne v9, v0, :cond_6

    .line 70
    .line 71
    move v7, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_6
    if-ne v9, v4, :cond_7

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_7
    if-ne v9, v5, :cond_8

    .line 77
    .line 78
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_8
    if-ne v9, v3, :cond_9

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_9
    if-ne v9, v2, :cond_2

    .line 85
    .line 86
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_a
    new-instance p0, LF1;

    .line 90
    .line 91
    const-string p1, "Resposta truncada da VPS."

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_b
    sget-object p1, Ly1;->b:Ly1;

    .line 98
    .line 99
    invoke-static {p0, p1}, Lcom/twntool/network/ApiClient;->r(Ljava/io/BufferedReader;Lv1;)V

    .line 100
    .line 101
    .line 102
    :cond_c
    :goto_4
    return-void
.end method

.method public static z(Ljava/io/BufferedReader;)I
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_1
    const/16 v1, 0x20

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x9

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    return v0
.end method


# virtual methods
.method public final B(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr2;
    .locals 8

    .line 1
    const-string v0, "ownCityId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetCityId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bver"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "fver"

    .line 17
    .line 18
    invoke-static {p5, v1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lih;

    .line 22
    .line 23
    const-string v3, "op"

    .line 24
    .line 25
    const-string v4, "fetch"

    .line 26
    .line 27
    invoke-direct {v2, v3, v4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lih;

    .line 31
    .line 32
    const-string v4, "own_city_id"

    .line 33
    .line 34
    invoke-direct {v3, v4, p2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lih;

    .line 38
    .line 39
    const-string p2, "target_city_id"

    .line 40
    .line 41
    invoke-direct {v4, p2, p3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v5, Lih;

    .line 45
    .line 46
    invoke-direct {v5, v0, p4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lih;

    .line 50
    .line 51
    invoke-direct {v6, v1, p5}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v7, Lih;

    .line 59
    .line 60
    const-string p2, "city_ver"

    .line 61
    .line 62
    invoke-direct {v7, p2, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    filled-new-array/range {v2 .. v7}, [Lih;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "/api/ts/fetch"

    .line 74
    .line 75
    invoke-static {p0, p2, p1}, Lcom/twntool/network/ApiClient;->c(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/lang/Object;)LRd;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string p2, "ok"

    .line 80
    .line 81
    invoke-virtual {p1, p2}, LRd;->j(Ljava/lang/String;)LOd;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    invoke-virtual {p2}, LOd;->a()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    const/4 p3, 0x1

    .line 92
    if-ne p2, p3, :cond_1

    .line 93
    .line 94
    const-string p2, "xml_b64"

    .line 95
    .line 96
    invoke-virtual {p1, p2}, LRd;->j(Ljava/lang/String;)LOd;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2}, LOd;->h()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const/4 p3, 0x0

    .line 105
    invoke-static {p2, p3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iget-object p1, p1, LRd;->a:LCe;

    .line 110
    .line 111
    const-string p3, "meta"

    .line 112
    .line 113
    invoke-virtual {p1, p3}, LCe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, LRd;

    .line 118
    .line 119
    if-nez p1, :cond_0

    .line 120
    .line 121
    new-instance p1, LRd;

    .line 122
    .line 123
    invoke-direct {p1}, LRd;-><init>()V

    .line 124
    .line 125
    .line 126
    :cond_0
    new-instance p3, Lr2;

    .line 127
    .line 128
    invoke-static {p2}, Lud;->o(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    const/4 p4, 0x1

    .line 132
    invoke-direct {p3, p2, p1, p4}, Lr2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    return-object p3

    .line 136
    :cond_1
    new-instance p1, LF1;

    .line 137
    .line 138
    const-string p2, "FetchCity falhou na VPS."

    .line 139
    .line 140
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Set;LRd;)Ljava/lang/String;
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v2, p3

    .line 5
    .line 6
    move-object/from16 v3, p4

    .line 7
    .line 8
    const-string v4, "ownCityId"

    .line 9
    .line 10
    invoke-static {p1, v4}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v4, "ownToken"

    .line 14
    .line 15
    invoke-static {v1, v4}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v4, "bver"

    .line 19
    .line 20
    invoke-static {v2, v4}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v5, "fver"

    .line 24
    .line 25
    invoke-static {v3, v5}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v6, Lih;

    .line 29
    .line 30
    const-string v7, "op"

    .line 31
    .line 32
    const-string v8, "save"

    .line 33
    .line 34
    invoke-direct {v6, v7, v8}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lih;

    .line 38
    .line 39
    const-string v8, "own_city_id"

    .line 40
    .line 41
    invoke-direct {v7, v8, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v8, Lih;

    .line 45
    .line 46
    const-string v0, "own_token"

    .line 47
    .line 48
    invoke-direct {v8, v0, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v9, Lih;

    .line 52
    .line 53
    invoke-direct {v9, v4, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance v10, Lih;

    .line 57
    .line 58
    invoke-direct {v10, v5, v3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    move-object/from16 v1, p5

    .line 63
    .line 64
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v11, Lih;

    .line 69
    .line 70
    const-string v1, "xml_b64"

    .line 71
    .line 72
    invoke-direct {v11, v1, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static/range {p6 .. p6}, LY4;->L0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v12, Lih;

    .line 80
    .line 81
    const-string v1, "fields"

    .line 82
    .line 83
    invoke-direct {v12, v1, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    new-instance v13, Lih;

    .line 87
    .line 88
    const-string v0, "prev_meta"

    .line 89
    .line 90
    move-object/from16 v1, p7

    .line 91
    .line 92
    invoke-direct {v13, v0, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    filled-new-array/range {v6 .. v13}, [Lih;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v1, "/api/ts/save"

    .line 104
    .line 105
    move-object v2, p0

    .line 106
    invoke-static {p0, v1, v0}, Lcom/twntool/network/ApiClient;->c(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/lang/Object;)LRd;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "ok"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const/4 v3, 0x0

    .line 117
    const-string v4, "info"

    .line 118
    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    invoke-virtual {v1}, LOd;->a()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const/4 v5, 0x1

    .line 126
    if-ne v1, v5, :cond_2

    .line 127
    .line 128
    invoke-virtual {v0, v4}, LRd;->j(Ljava/lang/String;)LOd;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    .line 134
    invoke-virtual {v0}, LOd;->h()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    :cond_0
    if-nez v3, :cond_1

    .line 139
    .line 140
    const-string v3, "Salvo."

    .line 141
    .line 142
    :cond_1
    return-object v3

    .line 143
    :cond_2
    new-instance v1, LF1;

    .line 144
    .line 145
    invoke-virtual {v0, v4}, LRd;->j(Ljava/lang/String;)LOd;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    invoke-virtual {v0}, LOd;->h()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    :cond_3
    if-nez v3, :cond_4

    .line 156
    .line 157
    const-string v3, "SaveCity falhou."

    .line 158
    .line 159
    :cond_4
    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lih;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    const-string v8, "ownCityId"

    invoke-static {v0, v8}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "ownToken"

    invoke-static {v1, v8}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "toCityId"

    invoke-static {v2, v8}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "cardId"

    invoke-static {v3, v8}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "ownName"

    invoke-static {v4, v8}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "ownPic"

    invoke-static {v5, v8}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "bver"

    invoke-static {v6, v8}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "fver"

    invoke-static {v7, v9}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v10, Lih;

    const-string v11, "op"

    const-string v12, "sendbox"

    invoke-direct {v10, v11, v12}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    new-instance v11, Lih;

    const-string v12, "own_city_id"

    invoke-direct {v11, v12, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance v12, Lih;

    const-string v0, "own_token"

    invoke-direct {v12, v0, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    new-instance v13, Lih;

    const-string v0, "to_city_id"

    invoke-direct {v13, v0, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance v14, Lih;

    const-string v0, "card_id"

    invoke-direct {v14, v0, v3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    new-instance v15, Lih;

    const-string v0, "set_id"

    const-string v1, "set_01"

    invoke-direct {v15, v0, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    new-instance v0, Lih;

    const-string v1, "col_id"

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-instance v1, Lih;

    const-string v2, "col_et"

    move-object/from16 v3, p6

    invoke-direct {v1, v2, v3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    new-instance v3, Lih;

    move-object/from16 p1, v1

    const-string v1, "send_counter"

    invoke-direct {v3, v1, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    new-instance v1, Lih;

    const-string v2, "own_name"

    invoke-direct {v1, v2, v4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    new-instance v2, Lih;

    const-string v4, "own_pic"

    invoke-direct {v2, v4, v5}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    new-instance v4, Lih;

    invoke-direct {v4, v8, v6}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    new-instance v5, Lih;

    invoke-direct {v5, v9, v7}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    move-object/from16 v17, p1

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    .line 15
    filled-new-array/range {v10 .. v22}, [Lih;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lvf;->n0([Lih;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "/api/ts/sendbox"

    move-object/from16 v2, p0

    invoke-static {v2, v1, v0}, Lcom/twntool/network/ApiClient;->c(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/lang/Object;)LRd;

    move-result-object v0

    .line 17
    const-string v1, "ok"

    invoke-virtual {v0, v1}, LRd;->j(Ljava/lang/String;)LOd;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LOd;->a()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "info"

    invoke-virtual {v0, v3}, LRd;->j(Ljava/lang/String;)LOd;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LOd;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    .line 18
    :cond_2
    new-instance v3, Lih;

    invoke-direct {v3, v1, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public final E(LTi;)V
    .locals 10

    .line 1
    iget-object p1, p1, LTi;->f:Lic;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Date"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lic;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_5

    .line 14
    .line 15
    sget-object v1, LL6;->a:LK6;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 28
    .line 29
    .line 30
    sget-object v3, LL6;->a:LK6;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/text/DateFormat;

    .line 37
    .line 38
    invoke-virtual {v3, p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v4, v5, :cond_1

    .line 51
    .line 52
    move-object v0, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    sget-object v3, LL6;->b:[Ljava/lang/String;

    .line 55
    .line 56
    monitor-enter v3

    .line 57
    :try_start_0
    array-length v4, v3

    .line 58
    move v5, v2

    .line 59
    :goto_0
    if-ge v5, v4, :cond_4

    .line 60
    .line 61
    sget-object v6, LL6;->c:[Ljava/text/DateFormat;

    .line 62
    .line 63
    aget-object v7, v6, v5

    .line 64
    .line 65
    if-nez v7, :cond_2

    .line 66
    .line 67
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 68
    .line 69
    sget-object v8, LL6;->b:[Ljava/lang/String;

    .line 70
    .line 71
    aget-object v8, v8, v5

    .line 72
    .line 73
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 74
    .line 75
    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 76
    .line 77
    .line 78
    sget-object v8, Lat;->e:Ljava/util/TimeZone;

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    .line 82
    .line 83
    aput-object v7, v6, v5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    .line 96
    .line 97
    .line 98
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v7, :cond_3

    .line 100
    .line 101
    monitor-exit v3

    .line 102
    move-object v0, v6

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    monitor-exit v3

    .line 108
    goto :goto_3

    .line 109
    :goto_2
    monitor-exit v3

    .line 110
    throw p1

    .line 111
    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    const/16 p1, 0x3e8

    .line 119
    .line 120
    int-to-long v2, p1

    .line 121
    div-long/2addr v0, v2

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    div-long/2addr v4, v2

    .line 127
    sub-long/2addr v0, v4

    .line 128
    iput-wide v0, p0, Lcom/twntool/network/ApiClient;->m:J

    .line 129
    .line 130
    return-void
.end method

.method public final G([B)[B
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0}, Lio/airlift/compress/zstd/ZstdDecompressor;->getDecompressedSize([BII)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-ltz v2, :cond_0

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/twntool/network/ApiClient;->e:J

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-gtz v2, :cond_0

    .line 18
    .line 19
    long-to-int v9, v0

    .line 20
    new-array v0, v9, [B

    .line 21
    .line 22
    new-instance v3, Lio/airlift/compress/zstd/ZstdDecompressor;

    .line 23
    .line 24
    invoke-direct {v3}, Lio/airlift/compress/zstd/ZstdDecompressor;-><init>()V

    .line 25
    .line 26
    .line 27
    array-length v6, p1

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v4, p1

    .line 31
    move-object v7, v0

    .line 32
    invoke-virtual/range {v3 .. v9}, Lio/airlift/compress/zstd/ZstdDecompressor;->decompress([BII[BII)I

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    new-instance p1, LF1;

    .line 37
    .line 38
    const-string v0, "zstd inv\u00e1lido ou grande demais."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final b([B)Lu1;
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    if-lt v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget-byte v2, p1, v0

    .line 8
    .line 9
    iget-object v3, p0, Lcom/twntool/network/ApiClient;->q:[B

    .line 10
    .line 11
    aget-byte v0, v3, v0

    .line 12
    .line 13
    if-ne v2, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aget-byte v2, p1, v0

    .line 17
    .line 18
    aget-byte v4, v3, v0

    .line 19
    .line 20
    if-ne v2, v4, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    aget-byte v4, p1, v2

    .line 24
    .line 25
    aget-byte v2, v3, v2

    .line 26
    .line 27
    if-ne v4, v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    aget-byte v4, p1, v2

    .line 31
    .line 32
    aget-byte v2, v3, v2

    .line 33
    .line 34
    if-ne v4, v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    aget-byte v2, p1, v2

    .line 38
    .line 39
    const/4 v3, 0x6

    .line 40
    aget-byte v3, p1, v3

    .line 41
    .line 42
    and-int/lit16 v3, v3, 0xff

    .line 43
    .line 44
    shl-int/lit8 v3, v3, 0x18

    .line 45
    .line 46
    const/4 v4, 0x7

    .line 47
    aget-byte v4, p1, v4

    .line 48
    .line 49
    and-int/lit16 v4, v4, 0xff

    .line 50
    .line 51
    shl-int/lit8 v4, v4, 0x10

    .line 52
    .line 53
    or-int/2addr v3, v4

    .line 54
    const/16 v4, 0x8

    .line 55
    .line 56
    aget-byte v5, p1, v4

    .line 57
    .line 58
    and-int/lit16 v5, v5, 0xff

    .line 59
    .line 60
    shl-int/lit8 v4, v5, 0x8

    .line 61
    .line 62
    or-int/2addr v3, v4

    .line 63
    const/16 v4, 0x9

    .line 64
    .line 65
    aget-byte v4, p1, v4

    .line 66
    .line 67
    and-int/lit16 v4, v4, 0xff

    .line 68
    .line 69
    or-int/2addr v3, v4

    .line 70
    new-instance v4, Ljava/lang/String;

    .line 71
    .line 72
    sget-object v5, LG4;->a:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    invoke-direct {v4, p1, v1, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 75
    .line 76
    .line 77
    const-class v5, LRd;

    .line 78
    .line 79
    iget-object v6, p0, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 80
    .line 81
    invoke-virtual {v6, v4, v5}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, LRd;

    .line 86
    .line 87
    add-int/2addr v3, v1

    .line 88
    array-length v1, p1

    .line 89
    invoke-static {p1, v3, v1}, Ly3;->U([BII)[B

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    and-int/2addr v0, v2

    .line 94
    if-eqz v0, :cond_0

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/twntool/network/ApiClient;->G([B)[B

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :cond_0
    new-instance v0, Lu1;

    .line 101
    .line 102
    invoke-static {v4}, Lud;->o(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, v4, p1}, Lu1;-><init>(LRd;[B)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_1
    new-instance p1, LF1;

    .line 110
    .line 111
    const-string v0, "Resposta bin\u00e1ria inv\u00e1lida da VPS."

    .line 112
    .line 113
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;[BZ)Lu1;
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v11, p3

    .line 8
    .line 9
    const/4 v13, 0x1

    .line 10
    const-string v14, "HTTP "

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->j()V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->k()V

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, LZb;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v4, "toJson(...)"

    .line 25
    .line 26
    invoke-static {v0, v4}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v15, LG4;->a:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v10, "getBytes(...)"

    .line 36
    .line 37
    invoke-static {v0, v10}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v4, Lio/airlift/compress/zstd/ZstdCompressor;

    .line 41
    .line 42
    invoke-direct {v4}, Lio/airlift/compress/zstd/ZstdCompressor;-><init>()V

    .line 43
    .line 44
    .line 45
    array-length v5, v11

    .line 46
    invoke-virtual {v4, v5}, Lio/airlift/compress/zstd/ZstdCompressor;->maxCompressedLength(I)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    new-array v8, v9, [B

    .line 51
    .line 52
    array-length v7, v11

    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    move-object/from16 v5, p3

    .line 57
    .line 58
    move-object/from16 v17, v8

    .line 59
    .line 60
    move/from16 v18, v9

    .line 61
    .line 62
    move/from16 v9, v16

    .line 63
    .line 64
    move-object v12, v10

    .line 65
    move/from16 v10, v18

    .line 66
    .line 67
    invoke-virtual/range {v4 .. v10}, Lio/airlift/compress/zstd/ZstdCompressor;->compress([BII[BII)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    move-object/from16 v5, v17

    .line 72
    .line 73
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const-string v5, "copyOf(...)"

    .line 78
    .line 79
    invoke-static {v4, v5}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 83
    .line 84
    array-length v6, v0

    .line 85
    add-int/lit8 v6, v6, 0xa

    .line 86
    .line 87
    array-length v7, v4

    .line 88
    add-int/2addr v6, v7

    .line 89
    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 90
    .line 91
    .line 92
    iget-object v6, v1, Lcom/twntool/network/ApiClient;->q:[B

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 95
    .line 96
    .line 97
    iget v6, v1, Lcom/twntool/network/ApiClient;->r:I

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 103
    .line 104
    .line 105
    array-length v6, v0

    .line 106
    ushr-int/lit8 v6, v6, 0x18

    .line 107
    .line 108
    and-int/lit16 v6, v6, 0xff

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    .line 112
    .line 113
    array-length v6, v0

    .line 114
    const/16 v7, 0x10

    .line 115
    .line 116
    ushr-int/2addr v6, v7

    .line 117
    and-int/lit16 v6, v6, 0xff

    .line 118
    .line 119
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 120
    .line 121
    .line 122
    array-length v6, v0

    .line 123
    ushr-int/lit8 v6, v6, 0x8

    .line 124
    .line 125
    and-int/lit16 v6, v6, 0xff

    .line 126
    .line 127
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    .line 129
    .line 130
    array-length v6, v0

    .line 131
    and-int/lit16 v6, v6, 0xff

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v4, "toByteArray(...)"

    .line 147
    .line 148
    invoke-static {v0, v4}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/16 v4, 0xc

    .line 152
    .line 153
    new-array v5, v4, [B

    .line 154
    .line 155
    iget-object v6, v1, Lcom/twntool/network/ApiClient;->d:Ljava/security/SecureRandom;

    .line 156
    .line 157
    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 158
    .line 159
    .line 160
    const-string v6, "AES/GCM/NoPadding"

    .line 161
    .line 162
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    .line 167
    .line 168
    iget-object v10, v1, Lcom/twntool/network/ApiClient;->j:[B

    .line 169
    .line 170
    const-string v4, "AES"

    .line 171
    .line 172
    invoke-direct {v9, v10, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v10, Ljavax/crypto/spec/GCMParameterSpec;

    .line 176
    .line 177
    const/16 v7, 0x80

    .line 178
    .line 179
    invoke-direct {v10, v7, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v13, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v8, "doFinal(...)"

    .line 190
    .line 191
    invoke-static {v0, v8}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v5, v0}, Ly3;->Y([B[B)[B

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->v()J

    .line 199
    .line 200
    .line 201
    move-result-wide v9

    .line 202
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    const/16 v9, 0x10

    .line 207
    .line 208
    new-array v9, v9, [B

    .line 209
    .line 210
    iget-object v10, v1, Lcom/twntool/network/ApiClient;->d:Ljava/security/SecureRandom;

    .line 211
    .line 212
    invoke-virtual {v10, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 213
    .line 214
    .line 215
    sget-object v10, LD1;->c:LD1;

    .line 216
    .line 217
    invoke-static {v9, v10}, Ly3;->X([BLwb;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    iget-object v10, v1, Lcom/twntool/network/ApiClient;->k:[B

    .line 222
    .line 223
    invoke-static {v10}, Lud;->o(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-static {v7, v12}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v7}, Ly3;->Y([B[B)[B

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    invoke-virtual {v9, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    invoke-static {v15, v12}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v7, v15}, Ly3;->Y([B[B)[B

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    const-string v12, "HmacSHA256"

    .line 249
    .line 250
    invoke-static {v12}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    .line 255
    .line 256
    invoke-direct {v13, v10, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v15, v13}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v15, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-static {v7, v8}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    sget-object v8, LD1;->e:LD1;

    .line 270
    .line 271
    invoke-static {v7, v8}, Ly3;->X([BLwb;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    new-instance v8, LAa;

    .line 276
    .line 277
    invoke-direct {v8}, LAa;-><init>()V

    .line 278
    .line 279
    .line 280
    sget-object v10, Lud;->m:Ljava/lang/String;

    .line 281
    .line 282
    const/4 v12, 0x1

    .line 283
    new-array v13, v12, [C

    .line 284
    .line 285
    const/16 v12, 0x2f

    .line 286
    .line 287
    const/4 v15, 0x0

    .line 288
    aput-char v12, v13, v15

    .line 289
    .line 290
    invoke-static {v10, v13}, LGl;->b1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    new-instance v12, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    invoke-virtual {v8, v10}, LAa;->d(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v10, v1, Lcom/twntool/network/ApiClient;->p:LBf;

    .line 313
    .line 314
    array-length v12, v0

    .line 315
    array-length v13, v0

    .line 316
    move-object v15, v14

    .line 317
    int-to-long v13, v13

    .line 318
    move-object/from16 v25, v15

    .line 319
    .line 320
    const/4 v15, 0x0

    .line 321
    int-to-long v2, v15

    .line 322
    move-object/from16 v26, v6

    .line 323
    .line 324
    move-object/from16 v27, v7

    .line 325
    .line 326
    int-to-long v6, v12

    .line 327
    move-wide/from16 v19, v13

    .line 328
    .line 329
    move-wide/from16 v21, v2

    .line 330
    .line 331
    move-wide/from16 v23, v6

    .line 332
    .line 333
    invoke-static/range {v19 .. v24}, Lat;->c(JJJ)V

    .line 334
    .line 335
    .line 336
    new-instance v2, LDi;

    .line 337
    .line 338
    invoke-direct {v2, v10, v12, v0, v15}, LDi;-><init>(LBf;I[BI)V

    .line 339
    .line 340
    .line 341
    const-string v0, "POST"

    .line 342
    .line 343
    invoke-virtual {v8, v0, v2}, LAa;->c(Ljava/lang/String;Los;)V

    .line 344
    .line 345
    .line 346
    const-string v0, "Content-Type"

    .line 347
    .line 348
    const-string v2, "application/octet-stream"

    .line 349
    .line 350
    invoke-virtual {v8, v0, v2}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v1, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 354
    .line 355
    const-string v2, ""

    .line 356
    .line 357
    if-nez v0, :cond_0

    .line 358
    .line 359
    move-object v0, v2

    .line 360
    :cond_0
    const-string v3, "Bearer "

    .line 361
    .line 362
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const-string v3, "Authorization"

    .line 367
    .line 368
    invoke-virtual {v8, v3, v0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object v0, v1, Lcom/twntool/network/ApiClient;->i:Ljava/lang/String;

    .line 372
    .line 373
    invoke-static {v0}, Lud;->o(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    const-string v3, "X-Session-Id"

    .line 377
    .line 378
    invoke-virtual {v8, v3, v0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const-string v0, "X-Timestamp"

    .line 382
    .line 383
    invoke-virtual {v8, v0, v5}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    const-string v0, "X-Nonce"

    .line 387
    .line 388
    invoke-virtual {v8, v0, v9}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    const-string v0, "X-Signature"

    .line 392
    .line 393
    move-object/from16 v3, v27

    .line 394
    .line 395
    invoke-virtual {v8, v0, v3}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v8}, LAa;->a()Li2;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iget-object v3, v1, Lcom/twntool/network/ApiClient;->g:Lam;

    .line 403
    .line 404
    invoke-virtual {v3}, Lam;->a()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    check-cast v3, LJg;

    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    new-instance v5, LWh;

    .line 414
    .line 415
    const/4 v6, 0x0

    .line 416
    invoke-direct {v5, v3, v0, v6}, LWh;-><init>(LJg;Li2;Z)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5}, LWh;->c()LTi;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/twntool/network/ApiClient;->E(LTi;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, LTi;->d()Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    const/4 v5, 0x0

    .line 431
    if-nez v0, :cond_b

    .line 432
    .line 433
    iget-object v0, v3, LTi;->g:Lci;

    .line 434
    .line 435
    if-eqz v0, :cond_1

    .line 436
    .line 437
    invoke-virtual {v0}, Lci;->m()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    .line 443
    move-object v2, v0

    .line 444
    goto/16 :goto_7

    .line 445
    .line 446
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 447
    .line 448
    const-class v4, LRd;

    .line 449
    .line 450
    invoke-virtual {v0, v2, v4}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    check-cast v0, LRd;

    .line 455
    .line 456
    if-eqz v0, :cond_2

    .line 457
    .line 458
    const-string v4, "detail"

    .line 459
    .line 460
    invoke-virtual {v0, v4}, LRd;->j(Ljava/lang/String;)LOd;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    if-eqz v0, :cond_2

    .line 465
    .line 466
    invoke-virtual {v0}, LOd;->h()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    goto :goto_2

    .line 471
    :catchall_1
    move-exception v0

    .line 472
    goto :goto_1

    .line 473
    :cond_2
    move-object v0, v5

    .line 474
    goto :goto_2

    .line 475
    :goto_1
    :try_start_2
    invoke-static {v0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    :goto_2
    instance-of v4, v0, LUi;

    .line 480
    .line 481
    if-eqz v4, :cond_3

    .line 482
    .line 483
    move-object v0, v5

    .line 484
    :cond_3
    check-cast v0, Ljava/lang/String;

    .line 485
    .line 486
    iget v4, v3, LTi;->d:I

    .line 487
    .line 488
    const/16 v6, 0x191

    .line 489
    .line 490
    if-ne v4, v6, :cond_5

    .line 491
    .line 492
    if-eqz p4, :cond_5

    .line 493
    .line 494
    if-eqz v0, :cond_5

    .line 495
    .line 496
    const-string v4, "Timestamp"

    .line 497
    .line 498
    const/4 v7, 0x1

    .line 499
    invoke-static {v0, v4, v7}, LGl;->v0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-nez v4, :cond_4

    .line 504
    .line 505
    const-string v4, "janela"

    .line 506
    .line 507
    invoke-static {v0, v4, v7}, LGl;->v0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    if-eqz v4, :cond_5

    .line 512
    .line 513
    :cond_4
    move-object/from16 v4, p1

    .line 514
    .line 515
    move-object/from16 v7, p2

    .line 516
    .line 517
    const/4 v2, 0x0

    .line 518
    goto :goto_3

    .line 519
    :cond_5
    move-object/from16 v4, p1

    .line 520
    .line 521
    move-object/from16 v7, p2

    .line 522
    .line 523
    goto :goto_4

    .line 524
    :goto_3
    invoke-virtual {v1, v4, v7, v11, v2}, Lcom/twntool/network/ApiClient;->d(Ljava/lang/String;Ljava/lang/Object;[BZ)Lu1;

    .line 525
    .line 526
    .line 527
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    invoke-static {v3, v5}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 529
    .line 530
    .line 531
    return-object v0

    .line 532
    :goto_4
    :try_start_3
    iget v8, v3, LTi;->d:I

    .line 533
    .line 534
    if-ne v8, v6, :cond_6

    .line 535
    .line 536
    if-eqz p4, :cond_6

    .line 537
    .line 538
    iput-object v5, v1, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->j()V

    .line 541
    .line 542
    .line 543
    const/4 v2, 0x0

    .line 544
    invoke-virtual {v1, v4, v7, v11, v2}, Lcom/twntool/network/ApiClient;->d(Ljava/lang/String;Ljava/lang/Object;[BZ)Lu1;

    .line 545
    .line 546
    .line 547
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    invoke-static {v3, v5}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 549
    .line 550
    .line 551
    return-object v0

    .line 552
    :cond_6
    const/16 v6, 0x193

    .line 553
    .line 554
    if-eq v8, v6, :cond_a

    .line 555
    .line 556
    const/16 v6, 0x199

    .line 557
    .line 558
    if-ne v8, v6, :cond_7

    .line 559
    .line 560
    if-eqz p4, :cond_7

    .line 561
    .line 562
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->n()V

    .line 563
    .line 564
    .line 565
    const/4 v2, 0x0

    .line 566
    invoke-virtual {v1, v4, v7, v11, v2}, Lcom/twntool/network/ApiClient;->d(Ljava/lang/String;Ljava/lang/Object;[BZ)Lu1;

    .line 567
    .line 568
    .line 569
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 570
    invoke-static {v3, v5}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 571
    .line 572
    .line 573
    return-object v0

    .line 574
    :cond_7
    const/16 v4, 0x194

    .line 575
    .line 576
    if-eq v8, v4, :cond_9

    .line 577
    .line 578
    const/16 v4, 0x195

    .line 579
    .line 580
    if-eq v8, v4, :cond_9

    .line 581
    .line 582
    :try_start_5
    new-instance v4, LF1;

    .line 583
    .line 584
    iget v5, v3, LTi;->d:I

    .line 585
    .line 586
    if-nez v0, :cond_8

    .line 587
    .line 588
    goto :goto_5

    .line 589
    :cond_8
    move-object v2, v0

    .line 590
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    move-object/from16 v6, v25

    .line 593
    .line 594
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v5, ": "

    .line 601
    .line 602
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-direct {v4, v0}, LF1;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    throw v4

    .line 616
    :cond_9
    new-instance v0, Ls1;

    .line 617
    .line 618
    const-string v2, "bin unsupported"

    .line 619
    .line 620
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    throw v0

    .line 624
    :cond_a
    new-instance v0, LF1;

    .line 625
    .line 626
    const-string v2, "Sua chave n\u00e3o tem acesso a esta ferramenta."

    .line 627
    .line 628
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v0

    .line 632
    :cond_b
    iget-object v0, v3, LTi;->g:Lci;

    .line 633
    .line 634
    if-eqz v0, :cond_c

    .line 635
    .line 636
    invoke-virtual {v0}, Lci;->a()[B

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    goto :goto_6

    .line 641
    :cond_c
    const/4 v2, 0x0

    .line 642
    new-array v0, v2, [B

    .line 643
    .line 644
    :goto_6
    array-length v2, v0

    .line 645
    const/16 v6, 0x1c

    .line 646
    .line 647
    if-lt v2, v6, :cond_d

    .line 648
    .line 649
    invoke-static/range {v26 .. v26}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 654
    .line 655
    iget-object v7, v1, Lcom/twntool/network/ApiClient;->j:[B

    .line 656
    .line 657
    invoke-direct {v6, v7, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 658
    .line 659
    .line 660
    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    .line 661
    .line 662
    const/16 v7, 0xc

    .line 663
    .line 664
    const/4 v8, 0x0

    .line 665
    invoke-static {v0, v8, v7}, Ly3;->U([BII)[B

    .line 666
    .line 667
    .line 668
    move-result-object v8

    .line 669
    const/16 v9, 0x80

    .line 670
    .line 671
    invoke-direct {v4, v9, v8}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 672
    .line 673
    .line 674
    const/4 v8, 0x2

    .line 675
    invoke-virtual {v2, v8, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 676
    .line 677
    .line 678
    array-length v4, v0

    .line 679
    invoke-static {v0, v7, v4}, Ly3;->U([BII)[B

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-static {v0}, Lud;->o(Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1, v0}, Lcom/twntool/network/ApiClient;->b([B)Lu1;

    .line 691
    .line 692
    .line 693
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 694
    invoke-static {v3, v5}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 695
    .line 696
    .line 697
    return-object v0

    .line 698
    :cond_d
    :try_start_6
    new-instance v0, LF1;

    .line 699
    .line 700
    const-string v2, "Resposta vazia da VPS."

    .line 701
    .line 702
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 706
    :goto_7
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 707
    :catchall_2
    move-exception v0

    .line 708
    move-object v4, v0

    .line 709
    invoke-static {v3, v2}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 710
    .line 711
    .line 712
    throw v4
.end method

.method public final e(Ljava/lang/String;[BZLwb;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->j()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->k()V

    .line 14
    .line 15
    .line 16
    const/16 v0, 0xc

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    iget-object v6, v1, Lcom/twntool/network/ApiClient;->d:Ljava/security/SecureRandom;

    .line 21
    .line 22
    invoke-virtual {v6, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 23
    .line 24
    .line 25
    const-string v6, "AES/GCM/NoPadding"

    .line 26
    .line 27
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    .line 32
    .line 33
    iget-object v8, v1, Lcom/twntool/network/ApiClient;->j:[B

    .line 34
    .line 35
    const-string v9, "AES"

    .line 36
    .line 37
    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Ljavax/crypto/spec/GCMParameterSpec;

    .line 41
    .line 42
    const/16 v9, 0x80

    .line 43
    .line 44
    invoke-direct {v8, v9, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    invoke-virtual {v6, v9, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    array-length v7, v6

    .line 56
    add-int/lit8 v7, v7, 0xe

    .line 57
    .line 58
    div-int/lit8 v7, v7, 0x3

    .line 59
    .line 60
    mul-int/lit8 v7, v7, 0x4

    .line 61
    .line 62
    new-instance v8, Lw1;

    .line 63
    .line 64
    iget-object v10, v1, Lcom/twntool/network/ApiClient;->t:[B

    .line 65
    .line 66
    array-length v10, v10

    .line 67
    add-int/2addr v10, v7

    .line 68
    iget-object v7, v1, Lcom/twntool/network/ApiClient;->u:[B

    .line 69
    .line 70
    array-length v7, v7

    .line 71
    add-int/2addr v10, v7

    .line 72
    add-int/lit8 v10, v10, 0x8

    .line 73
    .line 74
    invoke-direct {v8, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iget-object v7, v1, Lcom/twntool/network/ApiClient;->t:[B

    .line 78
    .line 79
    invoke-virtual {v8, v7}, Ljava/io/OutputStream;->write([B)V

    .line 80
    .line 81
    .line 82
    new-instance v7, Landroid/util/Base64OutputStream;

    .line 83
    .line 84
    const/16 v10, 0x12

    .line 85
    .line 86
    invoke-direct {v7, v8, v10}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 87
    .line 88
    .line 89
    :try_start_0
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 93
    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    invoke-static {v7, v6}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v1, Lcom/twntool/network/ApiClient;->u:[B

    .line 100
    .line 101
    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->v()J

    .line 105
    .line 106
    .line 107
    move-result-wide v10

    .line 108
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/16 v7, 0x10

    .line 113
    .line 114
    new-array v7, v7, [B

    .line 115
    .line 116
    iget-object v10, v1, Lcom/twntool/network/ApiClient;->d:Ljava/security/SecureRandom;

    .line 117
    .line 118
    invoke-virtual {v10, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 119
    .line 120
    .line 121
    sget-object v10, LD1;->d:LD1;

    .line 122
    .line 123
    invoke-static {v7, v10}, Ly3;->X([BLwb;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    iget-object v10, v1, Lcom/twntool/network/ApiClient;->k:[B

    .line 128
    .line 129
    invoke-static {v10}, Lud;->o(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Lw1;->a()[B

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v8}, Lw1;->f()I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    sget-object v13, LG4;->a:Ljava/nio/charset/Charset;

    .line 141
    .line 142
    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    const-string v15, "getBytes(...)"

    .line 147
    .line 148
    invoke-static {v14, v15}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-static {v13, v15}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    filled-new-array {v14, v13}, [[B

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    const-string v14, "HmacSHA256"

    .line 163
    .line 164
    invoke-static {v14}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 169
    .line 170
    invoke-direct {v6, v10, v14}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v15, v11, v5, v12}, Ljavax/crypto/Mac;->update([BII)V

    .line 177
    .line 178
    .line 179
    move v6, v5

    .line 180
    :goto_0
    const/4 v10, 0x2

    .line 181
    if-ge v6, v10, :cond_0

    .line 182
    .line 183
    aget-object v10, v13, v6

    .line 184
    .line 185
    invoke-virtual {v15, v10}, Ljavax/crypto/Mac;->update([B)V

    .line 186
    .line 187
    .line 188
    add-int/2addr v6, v9

    .line 189
    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v15}, Ljavax/crypto/Mac;->doFinal()[B

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    const-string v10, "doFinal(...)"

    .line 195
    .line 196
    invoke-static {v6, v10}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object v10, LD1;->f:LD1;

    .line 200
    .line 201
    invoke-static {v6, v10}, Ly3;->X([BLwb;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    new-instance v10, LAa;

    .line 206
    .line 207
    invoke-direct {v10}, LAa;-><init>()V

    .line 208
    .line 209
    .line 210
    sget-object v11, Lud;->m:Ljava/lang/String;

    .line 211
    .line 212
    new-array v12, v9, [C

    .line 213
    .line 214
    const/16 v13, 0x2f

    .line 215
    .line 216
    aput-char v13, v12, v5

    .line 217
    .line 218
    invoke-static {v11, v12}, LGl;->b1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    new-instance v12, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    invoke-virtual {v10, v11}, LAa;->d(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8}, Lw1;->a()[B

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    iget-object v12, v1, Lcom/twntool/network/ApiClient;->c:LBf;

    .line 245
    .line 246
    invoke-virtual {v8}, Lw1;->f()I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    array-length v13, v11

    .line 251
    int-to-long v13, v13

    .line 252
    move-object/from16 v22, v10

    .line 253
    .line 254
    int-to-long v9, v5

    .line 255
    move-object/from16 v23, v6

    .line 256
    .line 257
    int-to-long v5, v8

    .line 258
    move-wide/from16 v16, v13

    .line 259
    .line 260
    move-wide/from16 v18, v9

    .line 261
    .line 262
    move-wide/from16 v20, v5

    .line 263
    .line 264
    invoke-static/range {v16 .. v21}, Lat;->c(JJJ)V

    .line 265
    .line 266
    .line 267
    new-instance v5, LDi;

    .line 268
    .line 269
    const/4 v6, 0x0

    .line 270
    invoke-direct {v5, v12, v8, v11, v6}, LDi;-><init>(LBf;I[BI)V

    .line 271
    .line 272
    .line 273
    const-string v6, "POST"

    .line 274
    .line 275
    move-object/from16 v8, v22

    .line 276
    .line 277
    invoke-virtual {v8, v6, v5}, LAa;->c(Ljava/lang/String;Los;)V

    .line 278
    .line 279
    .line 280
    const-string v5, "Content-Type"

    .line 281
    .line 282
    const-string v6, "application/json"

    .line 283
    .line 284
    invoke-virtual {v8, v5, v6}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object v5, v1, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 288
    .line 289
    const-string v6, ""

    .line 290
    .line 291
    if-nez v5, :cond_1

    .line 292
    .line 293
    move-object v5, v6

    .line 294
    :cond_1
    const-string v9, "Bearer "

    .line 295
    .line 296
    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    const-string v9, "Authorization"

    .line 301
    .line 302
    invoke-virtual {v8, v9, v5}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v5, v1, Lcom/twntool/network/ApiClient;->i:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v5}, Lud;->o(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    const-string v9, "X-Session-Id"

    .line 311
    .line 312
    invoke-virtual {v8, v9, v5}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string v5, "X-Timestamp"

    .line 316
    .line 317
    invoke-virtual {v8, v5, v0}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    const-string v0, "X-Nonce"

    .line 321
    .line 322
    invoke-virtual {v8, v0, v7}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const-string v0, "X-Signature"

    .line 326
    .line 327
    move-object/from16 v5, v23

    .line 328
    .line 329
    invoke-virtual {v8, v0, v5}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8}, LAa;->a()Li2;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    iget-object v5, v1, Lcom/twntool/network/ApiClient;->g:Lam;

    .line 337
    .line 338
    invoke-virtual {v5}, Lam;->a()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    check-cast v5, LJg;

    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    new-instance v7, LWh;

    .line 348
    .line 349
    const/4 v8, 0x0

    .line 350
    invoke-direct {v7, v5, v0, v8}, LWh;-><init>(LJg;Li2;Z)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v7}, LWh;->c()LTi;

    .line 354
    .line 355
    .line 356
    move-result-object v5

    .line 357
    :try_start_1
    invoke-virtual {v1, v5}, Lcom/twntool/network/ApiClient;->E(LTi;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5}, LTi;->d()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_a

    .line 365
    .line 366
    iget-object v0, v5, LTi;->g:Lci;

    .line 367
    .line 368
    if-eqz v0, :cond_2

    .line 369
    .line 370
    invoke-virtual {v0}, Lci;->m()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    goto :goto_1

    .line 375
    :catchall_0
    move-exception v0

    .line 376
    move-object v2, v0

    .line 377
    goto/16 :goto_4

    .line 378
    .line 379
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, v1, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 380
    .line 381
    const-class v7, LRd;

    .line 382
    .line 383
    invoke-virtual {v0, v6, v7}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, LRd;

    .line 388
    .line 389
    if-eqz v0, :cond_3

    .line 390
    .line 391
    const-string v7, "detail"

    .line 392
    .line 393
    invoke-virtual {v0, v7}, LRd;->j(Ljava/lang/String;)LOd;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    if-eqz v0, :cond_3

    .line 398
    .line 399
    invoke-virtual {v0}, LOd;->h()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 403
    goto :goto_3

    .line 404
    :catchall_1
    move-exception v0

    .line 405
    goto :goto_2

    .line 406
    :cond_3
    const/4 v0, 0x0

    .line 407
    goto :goto_3

    .line 408
    :goto_2
    :try_start_3
    invoke-static {v0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    :goto_3
    instance-of v7, v0, LUi;

    .line 413
    .line 414
    if-eqz v7, :cond_4

    .line 415
    .line 416
    const/4 v0, 0x0

    .line 417
    :cond_4
    check-cast v0, Ljava/lang/String;

    .line 418
    .line 419
    iget v7, v5, LTi;->d:I

    .line 420
    .line 421
    const/16 v8, 0x191

    .line 422
    .line 423
    if-ne v7, v8, :cond_6

    .line 424
    .line 425
    if-eqz p3, :cond_6

    .line 426
    .line 427
    if-eqz v0, :cond_6

    .line 428
    .line 429
    const-string v7, "Timestamp"

    .line 430
    .line 431
    const/4 v9, 0x1

    .line 432
    invoke-static {v0, v7, v9}, LGl;->v0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    if-nez v7, :cond_5

    .line 437
    .line 438
    const-string v7, "janela"

    .line 439
    .line 440
    invoke-static {v0, v7, v9}, LGl;->v0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-eqz v0, :cond_6

    .line 445
    .line 446
    :cond_5
    const/4 v6, 0x0

    .line 447
    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/twntool/network/ApiClient;->e(Ljava/lang/String;[BZLwb;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    const/4 v2, 0x0

    .line 452
    invoke-static {v5, v2}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 453
    .line 454
    .line 455
    return-object v0

    .line 456
    :cond_6
    :try_start_4
    iget v0, v5, LTi;->d:I

    .line 457
    .line 458
    if-ne v0, v8, :cond_7

    .line 459
    .line 460
    if-eqz p3, :cond_7

    .line 461
    .line 462
    const/4 v7, 0x0

    .line 463
    iput-object v7, v1, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->j()V

    .line 466
    .line 467
    .line 468
    const/4 v6, 0x0

    .line 469
    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/twntool/network/ApiClient;->e(Ljava/lang/String;[BZLwb;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 473
    invoke-static {v5, v7}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 474
    .line 475
    .line 476
    return-object v0

    .line 477
    :cond_7
    const/16 v7, 0x193

    .line 478
    .line 479
    if-eq v0, v7, :cond_9

    .line 480
    .line 481
    const/16 v7, 0x199

    .line 482
    .line 483
    if-ne v0, v7, :cond_8

    .line 484
    .line 485
    if-eqz p3, :cond_8

    .line 486
    .line 487
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->n()V

    .line 488
    .line 489
    .line 490
    const/4 v6, 0x0

    .line 491
    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/twntool/network/ApiClient;->e(Ljava/lang/String;[BZLwb;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 495
    const/4 v2, 0x0

    .line 496
    invoke-static {v5, v2}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 497
    .line 498
    .line 499
    return-object v0

    .line 500
    :cond_8
    :try_start_6
    new-instance v0, LF1;

    .line 501
    .line 502
    iget v2, v5, LTi;->d:I

    .line 503
    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    const-string v4, "HTTP "

    .line 510
    .line 511
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v2, ": "

    .line 518
    .line 519
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-direct {v0, v2}, LF1;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    throw v0

    .line 533
    :cond_9
    new-instance v0, LF1;

    .line 534
    .line 535
    const-string v2, "Sua chave n\u00e3o tem acesso a esta ferramenta."

    .line 536
    .line 537
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    throw v0

    .line 541
    :cond_a
    iget-object v0, v5, LTi;->g:Lci;

    .line 542
    .line 543
    if-eqz v0, :cond_b

    .line 544
    .line 545
    invoke-virtual {v0}, Lci;->k()Lm4;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    invoke-interface {v2}, Lm4;->C()Ljava/io/InputStream;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    invoke-virtual {v0}, Lci;->d()J

    .line 554
    .line 555
    .line 556
    move-result-wide v6

    .line 557
    invoke-virtual {v1, v6, v7, v2}, Lcom/twntool/network/ApiClient;->g(JLjava/io/InputStream;)[B

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    const-string v2, "TwnMem"

    .line 562
    .line 563
    array-length v3, v0

    .line 564
    div-int/lit16 v3, v3, 0x400

    .line 565
    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    const-string v7, "resposta selada: "

    .line 572
    .line 573
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const-string v3, " KB (gzip)"

    .line 580
    .line 581
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .line 590
    .line 591
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .line 592
    .line 593
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 594
    .line 595
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 596
    .line 597
    .line 598
    const/high16 v0, 0x10000

    .line 599
    .line 600
    invoke-direct {v2, v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 601
    .line 602
    .line 603
    :try_start_7
    invoke-interface {v4, v2}, Lwb;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 607
    const/4 v3, 0x0

    .line 608
    :try_start_8
    invoke-static {v2, v3}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 609
    .line 610
    .line 611
    invoke-static {v5, v3}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 612
    .line 613
    .line 614
    return-object v0

    .line 615
    :catchall_2
    move-exception v0

    .line 616
    move-object v3, v0

    .line 617
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 618
    :catchall_3
    move-exception v0

    .line 619
    move-object v4, v0

    .line 620
    :try_start_a
    invoke-static {v2, v3}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 621
    .line 622
    .line 623
    throw v4

    .line 624
    :cond_b
    new-instance v0, LF1;

    .line 625
    .line 626
    const-string v2, "Resposta vazia da VPS."

    .line 627
    .line 628
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 632
    :goto_4
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 633
    :catchall_4
    move-exception v0

    .line 634
    move-object v3, v0

    .line 635
    invoke-static {v5, v2}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 636
    .line 637
    .line 638
    throw v3

    .line 639
    :catchall_5
    move-exception v0

    .line 640
    move-object v2, v0

    .line 641
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 642
    :catchall_6
    move-exception v0

    .line 643
    move-object v3, v0

    .line 644
    invoke-static {v7, v2}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 645
    .line 646
    .line 647
    throw v3
.end method

.method public final f([BLjava/lang/String;Ljava/lang/String;)LO6;
    .locals 16

    const-string v15, "township"

    move-object/from16 v12, p2

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v12, p1

    invoke-static {v12}, Lcom/twntool/local/LocalCodec;->decode([B)[B

    move-result-object v15

    new-instance v14, LO6;

    const/4 v13, 0x0

    invoke-direct {v14, v15, v13, v13}, LO6;-><init>([BLjava/util/Map;Ljava/lang/String;)V

    return-object v14

    .line 1
    :cond_0
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    const-string v2, "decode bin: doc="

    .line 10
    .line 11
    const-string v4, "game"

    .line 12
    .line 13
    invoke-static {v0, v4}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "filename"

    .line 17
    .line 18
    invoke-static {v1, v5}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v6, "data"

    .line 22
    .line 23
    invoke-static {v3, v6}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->l()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    const-string v6, "bin/zstd"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v6, "json/base64"

    .line 36
    .line 37
    :goto_0
    array-length v7, v3

    .line 38
    div-int/lit16 v7, v7, 0x400

    .line 39
    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v10, "decode: canal="

    .line 43
    .line 44
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, " save="

    .line 51
    .line 52
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v6, " KB"

    .line 59
    .line 60
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const-string v9, "TwnMem"

    .line 68
    .line 69
    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->l()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const/4 v10, 0x1

    .line 77
    if-eqz v7, :cond_a

    .line 78
    .line 79
    :try_start_0
    iget-object v7, v8, Lcom/twntool/network/ApiClient;->s:Lf3;

    .line 80
    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    iget-object v12, v7, Lf3;->a:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v12, Ljava/lang/String;

    .line 86
    .line 87
    invoke-static/range {p1 .. p1}, Lcom/twntool/network/ApiClient;->x([B)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    invoke-static {v12, v13}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-eqz v12, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const/4 v7, 0x0

    .line 99
    :goto_1
    new-instance v12, Lih;

    .line 100
    .line 101
    invoke-direct {v12, v4, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance v13, Lih;

    .line 105
    .line 106
    invoke-direct {v13, v5, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    filled-new-array {v12, v13}, [Lih;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-static {v12}, Lvf;->o0([Lih;)Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    if-eqz v7, :cond_3

    .line 118
    .line 119
    const-string v13, "have"

    .line 120
    .line 121
    iget-object v14, v7, Lf3;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v14, Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_3
    const-string v13, "/api/bin/decode"

    .line 129
    .line 130
    invoke-virtual {v8, v13, v12, v3, v10}, Lcom/twntool/network/ApiClient;->d(Ljava/lang/String;Ljava/lang/Object;[BZ)Lu1;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    iget-object v13, v12, Lu1;->a:LRd;

    .line 135
    .line 136
    const-string v14, "handle"

    .line 137
    .line 138
    invoke-virtual {v13, v14}, LRd;->j(Ljava/lang/String;)LOd;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    if-eqz v13, :cond_5

    .line 143
    .line 144
    instance-of v14, v13, LQd;

    .line 145
    .line 146
    xor-int/2addr v14, v10

    .line 147
    if-eqz v14, :cond_4

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_4
    const/4 v13, 0x0

    .line 151
    :goto_2
    if-eqz v13, :cond_5

    .line 152
    .line 153
    invoke-virtual {v13}, LOd;->h()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    goto :goto_3

    .line 158
    :cond_5
    const/4 v13, 0x0

    .line 159
    :goto_3
    iget-object v14, v12, Lu1;->a:LRd;

    .line 160
    .line 161
    const-string v15, "meta"

    .line 162
    .line 163
    invoke-virtual {v14, v15}, LRd;->j(Ljava/lang/String;)LOd;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    if-eqz v14, :cond_7

    .line 168
    .line 169
    instance-of v15, v14, LQd;

    .line 170
    .line 171
    xor-int/2addr v15, v10

    .line 172
    if-eqz v15, :cond_6

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_6
    const/4 v14, 0x0

    .line 176
    :goto_4
    if-eqz v14, :cond_7

    .line 177
    .line 178
    iget-object v15, v8, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 179
    .line 180
    const-class v11, Ljava/util/Map;

    .line 181
    .line 182
    invoke-virtual {v15, v14, v11}, LZb;->b(LOd;Ljava/lang/Class;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    instance-of v14, v11, Ljava/util/Map;

    .line 187
    .line 188
    if-eqz v14, :cond_7

    .line 189
    .line 190
    check-cast v11, Ljava/util/Map;

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_7
    const/4 v11, 0x0

    .line 194
    :goto_5
    if-eqz v7, :cond_9

    .line 195
    .line 196
    iget-object v14, v12, Lu1;->a:LRd;

    .line 197
    .line 198
    const-string v15, "unchanged"

    .line 199
    .line 200
    invoke-virtual {v14, v15}, LRd;->j(Ljava/lang/String;)LOd;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    if-eqz v14, :cond_9

    .line 205
    .line 206
    instance-of v15, v14, LQd;

    .line 207
    .line 208
    xor-int/2addr v15, v10

    .line 209
    if-eqz v15, :cond_8

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_8
    const/4 v14, 0x0

    .line 213
    :goto_6
    if-eqz v14, :cond_9

    .line 214
    .line 215
    invoke-virtual {v14}, LOd;->a()Z

    .line 216
    .line 217
    .line 218
    move-result v14

    .line 219
    if-ne v14, v10, :cond_9

    .line 220
    .line 221
    const-string v2, "decode bin: inalterado, doc reaproveitado"

    .line 222
    .line 223
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    new-instance v2, LO6;

    .line 227
    .line 228
    iget-object v6, v7, Lf3;->c:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v6, [B

    .line 231
    .line 232
    invoke-direct {v2, v6, v11, v13}, LO6;-><init>([BLjava/util/Map;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-object v2

    .line 236
    :cond_9
    iget-object v7, v12, Lu1;->b:[B

    .line 237
    .line 238
    array-length v7, v7

    .line 239
    div-int/lit16 v7, v7, 0x400

    .line 240
    .line 241
    new-instance v14, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    new-instance v2, LO6;

    .line 260
    .line 261
    iget-object v6, v12, Lu1;->b:[B

    .line 262
    .line 263
    invoke-static {v6}, Lcom/twntool/network/ApiClient;->m([B)[B

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-direct {v2, v6, v11, v13}, LO6;-><init>([BLjava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ls1; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 269
    .line 270
    return-object v2

    .line 271
    :catch_0
    :cond_a
    new-instance v2, Lih;

    .line 272
    .line 273
    invoke-direct {v2, v4, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    new-instance v0, Lih;

    .line 277
    .line 278
    invoke-direct {v0, v5, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    filled-new-array {v2, v0}, [Lih;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v0}, LZ4;->l0([Ljava/lang/Object;)Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const/4 v5, 0x0

    .line 290
    const/4 v6, 0x0

    .line 291
    const-string v2, "data"

    .line 292
    .line 293
    const/4 v4, 0x0

    .line 294
    const/16 v7, 0x38

    .line 295
    .line 296
    move-object/from16 v0, p0

    .line 297
    .line 298
    move-object/from16 v3, p1

    .line 299
    .line 300
    invoke-static/range {v0 .. v7}, Lcom/twntool/network/ApiClient;->A(Lcom/twntool/network/ApiClient;Ljava/util/List;Ljava/lang/String;[BLjava/lang/String;Ljava/util/zip/GZIPInputStream;II)[B

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    new-instance v1, LC1;

    .line 305
    .line 306
    const/4 v2, 0x1

    .line 307
    invoke-direct {v1, v8, v2}, LC1;-><init>(Lcom/twntool/network/ApiClient;I)V

    .line 308
    .line 309
    .line 310
    const-string v2, "/api/decode"

    .line 311
    .line 312
    invoke-virtual {v8, v2, v0, v10, v1}, Lcom/twntool/network/ApiClient;->e(Ljava/lang/String;[BZLwb;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    check-cast v0, LO6;

    .line 317
    .line 318
    return-object v0
.end method

.method public final g(JLjava/io/InputStream;)[B
    .locals 6

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 2
    .line 3
    const/high16 v1, 0x10000

    .line 4
    .line 5
    invoke-direct {v0, p3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 6
    .line 7
    .line 8
    const-string p3, "\"payload\""

    .line 9
    .line 10
    sget-object v2, LG4;->d:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    const-string v2, "getBytes(...)"

    .line 17
    .line 18
    invoke-static {p3, v2}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :cond_0
    move v3, v2

    .line 23
    :goto_0
    array-length v4, p3

    .line 24
    if-ge v3, v4, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ltz v4, :cond_5

    .line 31
    .line 32
    aget-byte v5, p3, v3

    .line 33
    .line 34
    if-ne v4, v5, :cond_1

    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    aget-byte v3, p3, v2

    .line 40
    .line 41
    if-ne v4, v3, :cond_0

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-ltz p3, :cond_5

    .line 50
    .line 51
    const/16 v3, 0x22

    .line 52
    .line 53
    if-ne p3, v3, :cond_2

    .line 54
    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    cmp-long p3, p1, v3

    .line 58
    .line 59
    if-lez p3, :cond_3

    .line 60
    .line 61
    const/4 p3, 0x4

    .line 62
    int-to-long v3, p3

    .line 63
    div-long/2addr p1, v3

    .line 64
    const/4 p3, 0x3

    .line 65
    int-to-long v3, p3

    .line 66
    mul-long/2addr p1, v3

    .line 67
    long-to-int p1, p1

    .line 68
    add-int/lit8 p1, p1, 0x40

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/high16 p1, 0x100000

    .line 72
    .line 73
    :goto_1
    new-instance p2, Lw1;

    .line 74
    .line 75
    invoke-direct {p2, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroid/util/Base64InputStream;

    .line 79
    .line 80
    new-instance p3, Lz1;

    .line 81
    .line 82
    invoke-direct {p3, v0}, Lz1;-><init>(Ljava/io/BufferedInputStream;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p1, p3, v2}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-static {p1, p2, v1}, LN6;->i(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    const/4 p3, 0x0

    .line 92
    invoke-static {p1, p3}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lw1;->f()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/16 p3, 0x1c

    .line 100
    .line 101
    if-lt p1, p3, :cond_4

    .line 102
    .line 103
    invoke-virtual {p2}, Lw1;->a()[B

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string p3, "AES/GCM/NoPadding"

    .line 108
    .line 109
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/twntool/network/ApiClient;->j:[B

    .line 116
    .line 117
    const-string v3, "AES"

    .line 118
    .line 119
    invoke-direct {v0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 123
    .line 124
    const/16 v3, 0x80

    .line 125
    .line 126
    const/16 v4, 0xc

    .line 127
    .line 128
    invoke-direct {v1, v3, p1, v2, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 129
    .line 130
    .line 131
    const/4 v2, 0x2

    .line 132
    invoke-virtual {p3, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Lw1;->f()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    sub-int/2addr p2, v4

    .line 140
    invoke-virtual {p3, p1, v4, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string p2, "doFinal(...)"

    .line 145
    .line 146
    invoke-static {p1, p2}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_4
    new-instance p1, LF1;

    .line 151
    .line 152
    const-string p2, "Resposta vazia da VPS."

    .line 153
    .line 154
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :catchall_0
    move-exception p2

    .line 159
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :catchall_1
    move-exception p3

    .line 161
    invoke-static {p1, p2}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    throw p3

    .line 165
    :cond_5
    new-instance p1, LF1;

    .line 166
    .line 167
    const-string p2, "Resposta inv\u00e1lida da VPS."

    .line 168
    .line 169
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lih;
    .locals 4

    .line 1
    const-string v0, "game"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "op"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "params"

    .line 12
    .line 13
    invoke-static {p4, v2}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lih;

    .line 17
    .line 18
    invoke-direct {v3, v0, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lih;

    .line 22
    .line 23
    invoke-direct {p1, v1, p2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lih;

    .line 27
    .line 28
    const-string v0, "text"

    .line 29
    .line 30
    invoke-direct {p2, v0, p3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p3, Lih;

    .line 34
    .line 35
    invoke-direct {p3, v2, p4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    filled-new-array {v3, p1, p2, p3}, [Lih;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "/api/edit"

    .line 47
    .line 48
    invoke-static {p0, p2, p1}, Lcom/twntool/network/ApiClient;->c(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/lang/Object;)LRd;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v0}, LRd;->j(Ljava/lang/String;)LOd;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    invoke-virtual {p2}, LOd;->h()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p2, 0x0

    .line 64
    :goto_0
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iget-object p1, p1, LRd;->a:LCe;

    .line 67
    .line 68
    const-string p3, "info"

    .line 69
    .line 70
    invoke-virtual {p1, p3}, LCe;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, LRd;

    .line 75
    .line 76
    if-nez p1, :cond_1

    .line 77
    .line 78
    new-instance p1, LRd;

    .line 79
    .line 80
    invoke-direct {p1}, LRd;-><init>()V

    .line 81
    .line 82
    .line 83
    :cond_1
    new-instance p3, Lih;

    .line 84
    .line 85
    invoke-direct {p3, p2, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object p3

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string p2, "edit: resposta sem \'text\'"

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)[B
    .locals 16

    const-string v15, "township"

    move-object/from16 v14, p1

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v14, p3

    invoke-static {v14}, Lcom/twntool/local/LocalCodec;->plainFromGzip([B)[B

    move-result-object v15

    return-object v15

    .line 1
    :cond_0
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    const-string v5, "game"

    .line 12
    .line 13
    invoke-static {v1, v5}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v6, "filename"

    .line 17
    .line 18
    invoke-static {v2, v6}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lih;

    .line 22
    .line 23
    invoke-direct {v0, v5, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v7, Lih;

    .line 27
    .line 28
    invoke-direct {v7, v6, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v8, Lih;

    .line 32
    .line 33
    const-string v10, "handle"

    .line 34
    .line 35
    invoke-direct {v8, v10, v4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    filled-new-array {v0, v7, v8}, [Lih;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lvf;->o0([Lih;)Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v7, "township"

    .line 47
    .line 48
    invoke-static {v1, v7}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    sget-object v11, Lv8;->a:Lv8;

    .line 53
    .line 54
    const-string v12, "meta"

    .line 55
    .line 56
    const-string v13, "use_lz4"

    .line 57
    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    if-nez p4, :cond_2

    .line 67
    .line 68
    move-object v8, v11

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    move-object/from16 v8, p4

    .line 71
    .line 72
    :goto_0
    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/twntool/network/ApiClient;->l()Z

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    const/high16 v14, 0x10000

    .line 80
    .line 81
    if-eqz v8, :cond_3

    .line 82
    .line 83
    :try_start_0
    new-instance v8, Ljava/util/zip/GZIPInputStream;

    .line 84
    .line 85
    new-instance v15, Ljava/io/ByteArrayInputStream;

    .line 86
    .line 87
    invoke-direct {v15, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v8, v15, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ls1; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    :try_start_1
    invoke-static {v8}, LN6;->K(Ljava/io/InputStream;)[B

    .line 94
    .line 95
    .line 96
    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const/4 v14, 0x0

    .line 98
    :try_start_2
    invoke-static {v8, v14}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    const-string v8, "/api/bin/encode"

    .line 102
    .line 103
    const/4 v14, 0x1

    .line 104
    invoke-virtual {v9, v8, v0, v15, v14}, Lcom/twntool/network/ApiClient;->d(Ljava/lang/String;Ljava/lang/Object;[BZ)Lu1;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v0, v0, Lu1;->b:[B

    .line 109
    .line 110
    new-instance v8, Lf3;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/twntool/network/ApiClient;->x([B)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    invoke-static {v15}, Lcom/twntool/network/ApiClient;->x([B)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    invoke-direct {v8, v14, v15, v3}, Lf3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iput-object v8, v9, Lcom/twntool/network/ApiClient;->s:Lf3;
    :try_end_2
    .catch Ls1; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .line 125
    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    move-object v14, v0

    .line 128
    :try_start_3
    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :catchall_1
    move-exception v0

    .line 130
    move-object v15, v0

    .line 131
    :try_start_4
    invoke-static {v8, v14}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw v15
    :try_end_4
    .catch Ls1; {:try_start_4 .. :try_end_4} :catch_0

    .line 135
    :catch_0
    :cond_3
    new-instance v0, Lih;

    .line 136
    .line 137
    invoke-direct {v0, v5, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Lih;

    .line 141
    .line 142
    invoke-direct {v5, v6, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Lih;

    .line 146
    .line 147
    invoke-direct {v2, v10, v4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    filled-new-array {v0, v5, v2}, [Lih;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, LZ4;->m0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-static {v1, v7}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_4

    .line 163
    .line 164
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 165
    .line 166
    new-instance v1, Lih;

    .line 167
    .line 168
    invoke-direct {v1, v13, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_4
    if-nez p4, :cond_5

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_5
    move-object/from16 v11, p4

    .line 179
    .line 180
    :goto_2
    new-instance v0, Lih;

    .line 181
    .line 182
    invoke-direct {v0, v12, v11}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :goto_3
    new-instance v10, Ljava/util/zip/GZIPInputStream;

    .line 189
    .line 190
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 191
    .line 192
    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    .line 194
    .line 195
    const/high16 v1, 0x10000

    .line 196
    .line 197
    invoke-direct {v10, v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 198
    .line 199
    .line 200
    :try_start_5
    const-string v5, "text"

    .line 201
    .line 202
    array-length v0, v3

    .line 203
    mul-int/lit8 v7, v0, 0x8

    .line 204
    .line 205
    const/4 v8, 0x6

    .line 206
    const/4 v3, 0x0

    .line 207
    const/4 v4, 0x0

    .line 208
    move-object/from16 v1, p0

    .line 209
    .line 210
    move-object v6, v10

    .line 211
    invoke-static/range {v1 .. v8}, Lcom/twntool/network/ApiClient;->A(Lcom/twntool/network/ApiClient;Ljava/util/List;Ljava/lang/String;[BLjava/lang/String;Ljava/util/zip/GZIPInputStream;II)[B

    .line 212
    .line 213
    .line 214
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 215
    const/4 v1, 0x0

    .line 216
    invoke-static {v10, v1}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    new-instance v1, LC1;

    .line 220
    .line 221
    const/4 v2, 0x2

    .line 222
    invoke-direct {v1, v9, v2}, LC1;-><init>(Lcom/twntool/network/ApiClient;I)V

    .line 223
    .line 224
    .line 225
    const-string v2, "/api/encode"

    .line 226
    .line 227
    const/4 v3, 0x1

    .line 228
    invoke-virtual {v9, v2, v0, v3, v1}, Lcom/twntool/network/ApiClient;->e(Ljava/lang/String;[BZLwb;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    check-cast v0, [B

    .line 233
    .line 234
    return-object v0

    .line 235
    :goto_4
    move-object v1, v0

    .line 236
    goto :goto_5

    .line 237
    :catchall_2
    move-exception v0

    .line 238
    goto :goto_4

    .line 239
    :goto_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 240
    :catchall_3
    move-exception v0

    .line 241
    move-object v2, v0

    .line 242
    invoke-static {v10, v1}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    throw v2
.end method

.method public final j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/twntool/network/ApiClient;->n:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/twntool/network/ApiClient;->o:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v0, "device"

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/twntool/network/ApiClient;->n:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/twntool/network/ApiClient;->o:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, "password"

    .line 29
    .line 30
    invoke-static {v1, v3}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v4, "hwid"

    .line 34
    .line 35
    invoke-static {v2, v4}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lih;

    .line 39
    .line 40
    const-string v6, "username"

    .line 41
    .line 42
    invoke-direct {v5, v6, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lih;

    .line 46
    .line 47
    invoke-direct {v0, v3, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lih;

    .line 51
    .line 52
    invoke-direct {v1, v4, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    filled-new-array {v5, v0, v1}, [Lih;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "/api/auth/login"

    .line 64
    .line 65
    invoke-static {p0, v1, v0}, Lcom/twntool/network/ApiClient;->q(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/util/Map;)LRd;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "access_token"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, LOd;->h()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "refresh_token"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, LOd;->h()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/twntool/network/ApiClient;->k()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    new-instance v0, LF1;

    .line 95
    .line 96
    const-string v1, "Fa\u00e7a login com sua chave premium para usar esta fun\u00e7\u00e3o."

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method

.method public final k()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/twntool/network/ApiClient;->v()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/twntool/network/ApiClient;->i:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/twntool/network/ApiClient;->j:[B

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/twntool/network/ApiClient;->k:[B

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/twntool/network/ApiClient;->l:J

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/twntool/network/ApiClient;->n()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twntool/network/ApiClient;->f:Lam;

    .line 2
    .line 3
    invoke-virtual {v0}, Lam;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final n()V
    .locals 7

    .line 1
    sget-object v0, Lwu;->a:Ljava/security/SecureRandom;

    .line 2
    .line 3
    new-instance v0, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    .line 4
    .line 5
    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    .line 9
    .line 10
    sget-object v2, Lwu;->a:Ljava/security/SecureRandom;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "null cannot be cast to non-null type org.bouncycastle.crypto.params.X25519PrivateKeyParameters"

    .line 27
    .line 28
    invoke-static {v1, v2}, Lud;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "null cannot be cast to non-null type org.bouncycastle.crypto.params.X25519PublicKeyParameters"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lud;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "getEncoded(...)"

    .line 49
    .line 50
    invoke-static {v0, v2}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Lih;

    .line 59
    .line 60
    const-string v3, "client_pubkey"

    .line 61
    .line 62
    invoke-direct {v2, v3, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lvf;->m0(Lih;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, "/api/auth/handshake"

    .line 70
    .line 71
    invoke-static {p0, v2, v0}, Lcom/twntool/network/ApiClient;->q(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/util/Map;)LRd;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "server_pubkey"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, LRd;->j(Ljava/lang/String;)LOd;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, LOd;->h()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "getAsString(...)"

    .line 86
    .line 87
    invoke-static {v2, v3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, Lud;->o(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v4, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    .line 99
    .line 100
    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    .line 104
    .line 105
    invoke-direct {v2}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    new-array v1, v1, [B

    .line 116
    .line 117
    invoke-virtual {v2, v4, v1, v3}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    .line 118
    .line 119
    .line 120
    sget-object v2, LG4;->a:Ljava/nio/charset/Charset;

    .line 121
    .line 122
    const-string v3, "twn/aes"

    .line 123
    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const-string v4, "getBytes(...)"

    .line 129
    .line 130
    invoke-static {v3, v4}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v3}, Lcom/twntool/network/ApiClient;->o([B[B)[B

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iput-object v3, p0, Lcom/twntool/network/ApiClient;->j:[B

    .line 138
    .line 139
    const-string v3, "twn/mac"

    .line 140
    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2, v4}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v2}, Lcom/twntool/network/ApiClient;->o([B[B)[B

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, p0, Lcom/twntool/network/ApiClient;->k:[B

    .line 153
    .line 154
    const-string v1, "session_id"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, LOd;->h()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iput-object v1, p0, Lcom/twntool/network/ApiClient;->i:Ljava/lang/String;

    .line 165
    .line 166
    const-string v1, "expires_in"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-eqz v0, :cond_1

    .line 173
    .line 174
    instance-of v1, v0, LQd;

    .line 175
    .line 176
    xor-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    if-eqz v1, :cond_0

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    if-eqz v0, :cond_1

    .line 183
    .line 184
    invoke-virtual {v0}, LOd;->g()J

    .line 185
    .line 186
    .line 187
    move-result-wide v0

    .line 188
    goto :goto_1

    .line 189
    :cond_1
    const-wide/16 v0, 0x708

    .line 190
    .line 191
    :goto_1
    invoke-virtual {p0}, Lcom/twntool/network/ApiClient;->v()J

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    const-wide/16 v4, 0x3c

    .line 196
    .line 197
    sub-long/2addr v0, v4

    .line 198
    const-wide/16 v4, 0x0

    .line 199
    .line 200
    cmp-long v6, v0, v4

    .line 201
    .line 202
    if-gez v6, :cond_2

    .line 203
    .line 204
    move-wide v0, v4

    .line 205
    :cond_2
    add-long/2addr v0, v2

    .line 206
    iput-wide v0, p0, Lcom/twntool/network/ApiClient;->l:J

    .line 207
    .line 208
    return-void
.end method

.method public final t([BLjava/lang/String;Ljava/lang/String;)LO6;
    .locals 12

    .line 1
    const-string v0, "game"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "filename"

    .line 7
    .line 8
    invoke-static {p3, v1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/twntool/network/ApiClient;->l()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    :try_start_0
    const-string v2, "/api/bin/decode"

    .line 19
    .line 20
    new-instance v4, Lih;

    .line 21
    .line 22
    invoke-direct {v4, v0, p2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lih;

    .line 26
    .line 27
    invoke-direct {v5, v1, p3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    filled-new-array {v4, v5}, [Lih;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p0, v2, v4, p1, v3}, Lcom/twntool/network/ApiClient;->d(Ljava/lang/String;Ljava/lang/Object;[BZ)Lu1;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v4, v2, Lu1;->a:LRd;

    .line 43
    .line 44
    const-string v5, "handle"

    .line 45
    .line 46
    invoke-virtual {v4, v5}, LRd;->j(Ljava/lang/String;)LOd;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x0

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    instance-of v6, v4, LQd;

    .line 54
    .line 55
    xor-int/2addr v6, v3

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v4, v5

    .line 60
    :goto_0
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v4}, LOd;->h()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object v4, v5

    .line 68
    :goto_1
    iget-object v6, v2, Lu1;->a:LRd;

    .line 69
    .line 70
    const-string v7, "meta"

    .line 71
    .line 72
    invoke-virtual {v6, v7}, LRd;->j(Ljava/lang/String;)LOd;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    if-eqz v6, :cond_3

    .line 77
    .line 78
    instance-of v7, v6, LQd;

    .line 79
    .line 80
    xor-int/2addr v7, v3

    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move-object v6, v5

    .line 85
    :goto_2
    if-eqz v6, :cond_3

    .line 86
    .line 87
    iget-object v7, p0, Lcom/twntool/network/ApiClient;->b:LZb;

    .line 88
    .line 89
    const-class v8, Ljava/util/Map;

    .line 90
    .line 91
    invoke-virtual {v7, v6, v8}, LZb;->b(LOd;Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    instance-of v7, v6, Ljava/util/Map;

    .line 96
    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    move-object v5, v6

    .line 100
    check-cast v5, Ljava/util/Map;

    .line 101
    .line 102
    :cond_3
    new-instance v6, LO6;

    .line 103
    .line 104
    iget-object v2, v2, Lu1;->b:[B

    .line 105
    .line 106
    invoke-static {v2}, Lcom/twntool/network/ApiClient;->m([B)[B

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-direct {v6, v2, v5, v4}, LO6;-><init>([BLjava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ls1; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return-object v6

    .line 114
    :catch_0
    :cond_4
    new-instance v2, Lih;

    .line 115
    .line 116
    invoke-direct {v2, v0, p2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Lih;

    .line 120
    .line 121
    invoke-direct {p2, v1, p3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    filled-new-array {v2, p2}, [Lih;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {p2}, LZ4;->l0([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    const/4 v9, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    const-string v6, "data"

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    const/16 v11, 0x38

    .line 138
    .line 139
    move-object v4, p0

    .line 140
    move-object v7, p1

    .line 141
    invoke-static/range {v4 .. v11}, Lcom/twntool/network/ApiClient;->A(Lcom/twntool/network/ApiClient;Ljava/util/List;Ljava/lang/String;[BLjava/lang/String;Ljava/util/zip/GZIPInputStream;II)[B

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance p2, LC1;

    .line 146
    .line 147
    const/4 p3, 0x3

    .line 148
    invoke-direct {p2, p0, p3}, LC1;-><init>(Lcom/twntool/network/ApiClient;I)V

    .line 149
    .line 150
    .line 151
    const-string p3, "/api/decode"

    .line 152
    .line 153
    invoke-virtual {p0, p3, p1, v3, p2}, Lcom/twntool/network/ApiClient;->e(Ljava/lang/String;[BZLwb;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, LO6;

    .line 158
    .line 159
    return-object p1
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LRd;
    .locals 8

    .line 1
    const-string v0, "game"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "filename"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/twntool/network/ApiClient;->l()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "handle"

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    :try_start_0
    const-string v2, "/api/bin/encode"

    .line 20
    .line 21
    new-instance v4, Lih;

    .line 22
    .line 23
    invoke-direct {v4, v0, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lih;

    .line 27
    .line 28
    invoke-direct {v5, v1, p2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lih;

    .line 32
    .line 33
    invoke-direct {v6, v3, p4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    filled-new-array {v4, v5, v6}, [Lih;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-object v5, LG4;->a:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "getBytes(...)"

    .line 51
    .line 52
    invoke-static {v5, v6}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/twntool/network/ApiClient;->d(Ljava/lang/String;Ljava/lang/Object;[BZ)Lu1;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v4, v2, Lu1;->a:LRd;

    .line 61
    .line 62
    const-string v5, "data"

    .line 63
    .line 64
    iget-object v6, v2, Lu1;->b:[B

    .line 65
    .line 66
    const/4 v7, 0x2

    .line 67
    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-nez v6, :cond_0

    .line 72
    .line 73
    sget-object v6, LQd;->a:LQd;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v7, LSd;

    .line 80
    .line 81
    invoke-direct {v7, v6}, LSd;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    move-object v6, v7

    .line 85
    :goto_0
    invoke-virtual {v4, v5, v6}, LRd;->i(Ljava/lang/String;LOd;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, v2, Lu1;->a:LRd;
    :try_end_0
    .catch Ls1; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    return-object p1

    .line 91
    :catch_0
    :cond_1
    new-instance v2, Lih;

    .line 92
    .line 93
    invoke-direct {v2, v0, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Lih;

    .line 97
    .line 98
    invoke-direct {p1, v1, p2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance p2, Lih;

    .line 102
    .line 103
    const-string v0, "text"

    .line 104
    .line 105
    invoke-direct {p2, v0, p3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance p3, Lih;

    .line 109
    .line 110
    invoke-direct {p3, v3, p4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    filled-new-array {v2, p1, p2, p3}, [Lih;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string p2, "/api/encode"

    .line 122
    .line 123
    invoke-static {p0, p2, p1}, Lcom/twntool/network/ApiClient;->c(Lcom/twntool/network/ApiClient;Ljava/lang/String;Ljava/lang/Object;)LRd;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    return-object p1
.end method

.method public final v()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    int-to-long v2, v2

    .line 8
    div-long/2addr v0, v2

    .line 9
    iget-wide v2, p0, Lcom/twntool/network/ApiClient;->m:J

    .line 10
    .line 11
    add-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "hwid"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/twntool/network/ApiClient;->n:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->n:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/twntool/network/ApiClient;->o:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    return-void
.end method
