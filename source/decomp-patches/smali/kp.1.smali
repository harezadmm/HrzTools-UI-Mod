.class public final Lkp;
.super LZl;
.source "SourceFile"

# interfaces
.implements LAb;


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/twntool/android/bridge/TwnBridge;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lkp;->h:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, LZl;-><init>(ILi6;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Lkp;->g(Ljava/lang/Object;Li6;)Li6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lkp;

    .line 10
    .line 11
    sget-object p2, Ly1;->r:Ly1;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lkp;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final g(Ljava/lang/Object;Li6;)Li6;
    .locals 3

    .line 1
    new-instance v0, Lkp;

    .line 2
    .line 3
    iget-object v1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 4
    .line 5
    iget-object v2, p0, Lkp;->h:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lkp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lkp;->f:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lx6;->a:Lx6;

    .line 2
    .line 3
    iget v1, p0, Lkp;->e:I

    .line 4
    .line 5
    sget-object v2, Ly1;->r:Ly1;

    .line 6
    .line 7
    const-string v3, "send_err"

    .line 8
    .line 9
    const-string v4, "e"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const-string v7, "js_on_regata_use"

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    if-ne v1, v6, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lkp;->f:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lw6;

    .line 22
    .line 23
    :try_start_0
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Lwm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lkp;->f:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lw6;

    .line 48
    .line 49
    iget-object v1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 50
    .line 51
    iget-object v8, v1, Lcom/twntool/android/bridge/TwnBridge;->a:Lcom/twntool/auth/AuthManager;

    .line 52
    .line 53
    invoke-virtual {v8}, Lcom/twntool/auth/AuthManager;->o()Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-nez v8, :cond_2

    .line 58
    .line 59
    const-string p1, "NOT_AUTHENTICATED"

    .line 60
    .line 61
    invoke-virtual {v1, v4, p1, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, v7, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_2
    iget-object v1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 75
    .line 76
    iget-object v8, v1, Lcom/twntool/android/bridge/TwnBridge;->a:Lcom/twntool/auth/AuthManager;

    .line 77
    .line 78
    invoke-virtual {v8}, Lcom/twntool/auth/AuthManager;->j()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    const-string v9, "township"

    .line 83
    .line 84
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-nez v8, :cond_3

    .line 89
    .line 90
    const-string p1, "tool_blocked"

    .line 91
    .line 92
    invoke-virtual {v1, v4, p1, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 96
    .line 97
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v1, v7, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object v2

    .line 105
    :cond_3
    :try_start_1
    iget-object v1, p0, Lkp;->h:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v1}, LNl;->k0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    const/16 v1, 0x64

    .line 119
    .line 120
    :goto_0
    iget-object v8, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 121
    .line 122
    iget-object v9, v8, Lcom/twntool/android/bridge/TwnBridge;->e:Lcom/twntool/township/TownshipEngine;

    .line 123
    .line 124
    iget-object v8, v8, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 125
    .line 126
    iget-object v8, v8, Lcom/twntool/game/AppState;->b:[B

    .line 127
    .line 128
    invoke-static {v8}, Lud;->o(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v8, v6}, Lcom/twntool/township/TownshipEngine;->p(I[BZ)LJn;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, LJn;->c()Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-nez v8, :cond_5

    .line 143
    .line 144
    iget-object p1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 145
    .line 146
    const-string v0, "reg_fail"

    .line 147
    .line 148
    invoke-virtual {p1, v4, v0, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 152
    .line 153
    const-string v0, "js_on_regata_use"

    .line 154
    .line 155
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 156
    .line 157
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p1, v0, v1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    return-object v2

    .line 165
    :cond_5
    iget-object v8, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 166
    .line 167
    iget-object v8, v8, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 168
    .line 169
    invoke-virtual {v1}, LJn;->d()[B

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iput-object v1, v8, Lcom/twntool/game/AppState;->b:[B

    .line 174
    .line 175
    iget-object v1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 176
    .line 177
    const-string v8, "w"

    .line 178
    .line 179
    const-string v9, "close_app"

    .line 180
    .line 181
    invoke-virtual {v1, v8, v9, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 185
    .line 186
    const-wide/16 v8, 0x2710

    .line 187
    .line 188
    new-instance v10, Ljp;

    .line 189
    .line 190
    invoke-direct {v10, v1, v5}, Ljp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 191
    .line 192
    .line 193
    iput-object p1, p0, Lkp;->f:Ljava/lang/Object;

    .line 194
    .line 195
    iput v6, p0, Lkp;->e:I

    .line 196
    .line 197
    invoke-static {v8, v9, v10, p0}, Los;->G(JLAb;Li6;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-ne p1, v0, :cond_6

    .line 202
    .line 203
    return-object v0

    .line 204
    :cond_6
    :goto_1
    check-cast p1, LFk;

    .line 205
    .line 206
    invoke-virtual {p1}, LFk;->d()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    iget-object v0, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 213
    .line 214
    iget-object v0, v0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/twntool/game/AppState;->c:Ljava/util/LinkedHashSet;

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 222
    .line 223
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {p1}, LFk;->a()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {v0, v7, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_7
    iget-object p1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 238
    .line 239
    invoke-virtual {p1, v4, v3, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 243
    .line 244
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 245
    .line 246
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p1, v7, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lwm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :goto_2
    :try_start_2
    iget-object v0, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {v0, v4, v3, p1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 264
    .line 265
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 266
    .line 267
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {p1, v7, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :catchall_1
    move-exception p1

    .line 276
    goto :goto_5

    .line 277
    :goto_3
    throw p1

    .line 278
    :catch_1
    iget-object p1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 279
    .line 280
    const-string v0, "timeout: permita o su e tente novamente"

    .line 281
    .line 282
    invoke-virtual {p1, v4, v3, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 286
    .line 287
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 288
    .line 289
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {p1, v7, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    .line 295
    .line 296
    :goto_4
    return-object v2

    .line 297
    :goto_5
    iget-object v0, p0, Lkp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 298
    .line 299
    :try_start_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 300
    .line 301
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v0, v7, v1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :catchall_2
    move-exception v0

    .line 310
    invoke-static {v0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 311
    .line 312
    .line 313
    :goto_6
    throw p1
.end method
