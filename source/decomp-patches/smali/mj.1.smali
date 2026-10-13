.class public final Lmj;
.super LZl;
.source "SourceFile"

# interfaces
.implements LAb;


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/twntool/root/RootManagerImpl;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic j:[B


# direct methods
.method public constructor <init>(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;[BLi6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmj;->g:Lcom/twntool/root/RootManagerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lmj;->h:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lmj;->j:[B

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, LZl;-><init>(ILi6;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lw6;

    .line 2
    .line 3
    check-cast p2, Li6;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lmj;->g(Ljava/lang/Object;Li6;)Li6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lmj;

    .line 10
    .line 11
    sget-object p2, Ly1;->r:Ly1;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lmj;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final g(Ljava/lang/Object;Li6;)Li6;
    .locals 4

    .line 1
    new-instance v0, Lmj;

    .line 2
    .line 3
    iget-object v1, p0, Lmj;->h:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lmj;->j:[B

    .line 6
    .line 7
    iget-object v3, p0, Lmj;->g:Lcom/twntool/root/RootManagerImpl;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2, p2}, Lmj;-><init>(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;[BLi6;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lmj;->f:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "TwnMem"

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    iget-object v3, v1, Lmj;->h:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v1, Lmj;->j:[B

    .line 10
    .line 11
    const-string v5, "writeFile "

    .line 12
    .line 13
    const-string v6, "mkdir -p "

    .line 14
    .line 15
    sget-object v7, Lx6;->a:Lx6;

    .line 16
    .line 17
    iget v8, v1, Lmj;->e:I

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    iget-object v10, v1, Lmj;->g:Lcom/twntool/root/RootManagerImpl;

    .line 21
    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    if-ne v8, v9, :cond_0

    .line 25
    .line 26
    iget-object v7, v1, Lmj;->f:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v7, Lw6;

    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, LN6;->O(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v8, p1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    invoke-static/range {p1 .. p1}, LN6;->O(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v8, v1, Lmj;->f:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v8, Lw6;

    .line 50
    .line 51
    iput-object v8, v1, Lmj;->f:Ljava/lang/Object;

    .line 52
    .line 53
    iput v9, v1, Lmj;->e:I

    .line 54
    .line 55
    invoke-virtual {v10, v1}, Lcom/twntool/root/RootManagerImpl;->l(Li6;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    if-ne v8, v7, :cond_2

    .line 60
    .line 61
    return-object v7

    .line 62
    :cond_2
    :goto_0
    check-cast v8, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_3

    .line 69
    .line 70
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    new-instance v11, Ljava/io/File;

    .line 78
    .line 79
    iget-object v12, v10, Lcom/twntool/root/RootManagerImpl;->a:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 86
    .line 87
    .line 88
    move-result-wide v13

    .line 89
    new-instance v15, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v9, "twn_w_"

    .line 92
    .line 93
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v9, ".bin"

    .line 100
    .line 101
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    .line 113
    .line 114
    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    .line 117
    :try_start_1
    new-instance v13, Ljava/io/BufferedOutputStream;

    .line 118
    .line 119
    const/high16 v14, 0x10000

    .line 120
    .line 121
    invoke-direct {v13, v12, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v13, v4}, Ljava/io/OutputStream;->write([B)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 128
    .line 129
    .line 130
    const/4 v13, 0x0

    .line 131
    :try_start_2
    invoke-static {v12, v13}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v10, v3}, Lcom/twntool/root/RootManagerImpl;->d(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    const-string v14, "getAbsolutePath(...)"

    .line 143
    .line 144
    invoke-static {v13, v14}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v10, v13}, Lcom/twntool/root/RootManagerImpl;->d(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    const/16 v14, 0x2f

    .line 152
    .line 153
    invoke-static {v3, v14, v0}, LGl;->V0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-lez v14, :cond_4

    .line 162
    .line 163
    invoke-static {v10, v3}, Lcom/twntool/root/RootManagerImpl;->d(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v0, " 2>/dev/null; "

    .line 176
    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    move-object v2, v0

    .line 187
    goto/16 :goto_4

    .line 188
    .line 189
    :catch_0
    move-exception v0

    .line 190
    goto/16 :goto_2

    .line 191
    .line 192
    :cond_4
    :goto_1
    array-length v3, v4

    .line 193
    int-to-long v14, v3

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v0, "target="

    .line 203
    .line 204
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v0, "; parent=${target%/*}; name=${target##*/}; mkdir -p \"$parent\" 2>/dev/null; cp "

    .line 208
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v0, " \"$target\"; toybox stat -c %s "

    .line 219
    .line 220
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v0, " 2>/dev/null || stat -c %s "

    .line 227
    .line 228
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v0, " 2>/dev/null || busybox stat -c %s "

    .line 235
    .line 236
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v0, " 2>/dev/null"

    .line 243
    .line 244
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    new-instance v3, Lbd;

    .line 252
    .line 253
    const/4 v6, 0x1

    .line 254
    invoke-direct {v3, v6, v14, v15}, Lbd;-><init>(IJ)V

    .line 255
    .line 256
    .line 257
    const-wide/32 v12, 0xea60

    .line 258
    .line 259
    .line 260
    invoke-static {v10, v0, v12, v13, v3}, Lcom/twntool/root/RootManagerImpl;->c(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;JLwb;)Lih;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v0, v0, Lih;->a:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v0, Ljava/lang/Number;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    array-length v3, v4

    .line 273
    div-int/lit16 v3, v3, 0x400

    .line 274
    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 276
    .line 277
    .line 278
    move-result-wide v12

    .line 279
    sub-long/2addr v12, v7

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v3, " KB em "

    .line 289
    .line 290
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v3, " ms (ns="

    .line 297
    .line 298
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v3, ")"

    .line 305
    .line 306
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    .line 315
    .line 316
    if-ltz v0, :cond_5

    .line 317
    .line 318
    const/4 v9, 0x1

    .line 319
    :cond_5
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :catchall_1
    move-exception v0

    .line 324
    move-object v2, v0

    .line 325
    invoke-static {v2}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :catchall_2
    move-exception v0

    .line 330
    move-object v3, v0

    .line 331
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 332
    :catchall_3
    move-exception v0

    .line 333
    move-object v4, v0

    .line 334
    :try_start_5
    invoke-static {v12, v3}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 338
    :goto_2
    :try_start_6
    const-string v3, "writeFile falhou"

    .line 339
    .line 340
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 341
    .line 342
    .line 343
    :try_start_7
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 344
    .line 345
    .line 346
    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    return-object v0

    .line 351
    :goto_4
    :try_start_8
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 352
    .line 353
    .line 354
    goto :goto_5

    .line 355
    :catchall_4
    move-exception v0

    .line 356
    move-object v3, v0

    .line 357
    invoke-static {v3}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 358
    .line 359
    .line 360
    :goto_5
    throw v2
.end method
