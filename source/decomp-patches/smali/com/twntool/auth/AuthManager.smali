.class public final Lcom/twntool/auth/AuthManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:Lam;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/twntool/network/SecureHttpFactory;

.field public final c:Lcom/twntool/network/ApiClient;

.field public final d:LZb;

.field public final e:Lam;

.field public final f:Lam;

.field public final g:Lf6;

.field public final h:Lam;

.field public volatile i:Ljava/util/LinkedHashMap;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/util/Set;

.field public final l:Ljava/util/Set;

.field public final m:Lam;

.field public volatile n:Ljava/lang/String;

.field public final o:Lxi;

.field public final p:Ljava/util/Set;

.field public volatile q:Z

.field public final r:Ljava/lang/Object;

.field public volatile s:I

.field public final t:Lmg;

.field public volatile u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, LE3;->c:LE3;

    .line 2
    .line 3
    new-instance v1, Lam;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lam;-><init>(Llb;)V

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/twntool/auth/AuthManager;->v:Lam;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/twntool/network/SecureHttpFactory;Lcom/twntool/network/ApiClient;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation runtime Lo3;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "httpFactory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "apiClient"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/twntool/auth/AuthManager;->b:Lcom/twntool/network/SecureHttpFactory;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/twntool/auth/AuthManager;->c:Lcom/twntool/network/ApiClient;

    .line 24
    .line 25
    new-instance p1, LZb;

    .line 26
    .line 27
    invoke-direct {p1}, LZb;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->d:LZb;

    .line 31
    .line 32
    new-instance p1, LK3;

    .line 33
    .line 34
    const/4 p2, 0x2

    .line 35
    invoke-direct {p1, p0, p2}, LK3;-><init>(Lcom/twntool/auth/AuthManager;I)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lam;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lam;-><init>(Llb;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/twntool/auth/AuthManager;->e:Lam;

    .line 44
    .line 45
    new-instance p1, LK3;

    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-direct {p1, p0, p2}, LK3;-><init>(Lcom/twntool/auth/AuthManager;I)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lam;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lam;-><init>(Llb;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/twntool/auth/AuthManager;->f:Lam;

    .line 57
    .line 58
    new-instance p1, LTl;

    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    invoke-direct {p1, p2}, LFd;-><init>(LCd;)V

    .line 62
    .line 63
    .line 64
    sget-object p3, Lu7;->b:LW6;

    .line 65
    .line 66
    invoke-static {p1, p3}, Lud;->P(Ln6;Lp6;)Lp6;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance p3, Lf6;

    .line 71
    .line 72
    sget-object v0, Ly1;->l:Ly1;

    .line 73
    .line 74
    invoke-interface {p1, v0}, Lp6;->d(Lo6;)Ln6;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, LFd;

    .line 82
    .line 83
    invoke-direct {v0, p2}, LFd;-><init>(LCd;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Lp6;->v(Lp6;)Lp6;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :goto_0
    invoke-direct {p3, p1}, Lf6;-><init>(Lp6;)V

    .line 91
    .line 92
    .line 93
    iput-object p3, p0, Lcom/twntool/auth/AuthManager;->g:Lf6;

    .line 94
    .line 95
    new-instance p1, LK3;

    .line 96
    .line 97
    const/4 p2, 0x1

    .line 98
    invoke-direct {p1, p0, p2}, LK3;-><init>(Lcom/twntool/auth/AuthManager;I)V

    .line 99
    .line 100
    .line 101
    new-instance p2, Lam;

    .line 102
    .line 103
    invoke-direct {p2, p1}, Lam;-><init>(Llb;)V

    .line 104
    .line 105
    .line 106
    iput-object p2, p0, Lcom/twntool/auth/AuthManager;->h:Lam;

    .line 107
    .line 108
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/Object;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 121
    .line 122
    const-string v5, "key_expired"

    .line 123
    .line 124
    const-string v6, "key_suspended"

    .line 125
    .line 126
    const-string v0, "revoked"

    .line 127
    .line 128
    const-string v1, "clone_detected"

    .line 129
    .line 130
    const-string v2, "hwid_mismatch"

    .line 131
    .line 132
    const-string v3, "blocked"

    .line 133
    .line 134
    const-string v4, "key_revoked"

    .line 135
    .line 136
    const-string v7, "key_blocked"

    .line 137
    .line 138
    const-string v8, "update_required"

    .line 139
    .line 140
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, LQk;->P([Ljava/lang/Object;)Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->k:Ljava/util/Set;

    .line 149
    .line 150
    const-string v4, "royalkingdom"

    .line 151
    .line 152
    const-string v5, "fishdom"

    .line 153
    .line 154
    const-string v0, "township"

    .line 155
    .line 156
    const-string v1, "gardenscapes"

    .line 157
    .line 158
    const-string v2, "homescapes"

    .line 159
    .line 160
    const-string v3, "royalmatch"

    .line 161
    .line 162
    const-string v6, "familyisland"

    .line 163
    .line 164
    const-string v7, "simcity"

    .line 165
    .line 166
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, LQk;->P([Ljava/lang/Object;)Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->l:Ljava/util/Set;

    .line 175
    .line 176
    new-instance p1, LK3;

    .line 177
    .line 178
    const/4 p2, 0x3

    .line 179
    invoke-direct {p1, p0, p2}, LK3;-><init>(Lcom/twntool/auth/AuthManager;I)V

    .line 180
    .line 181
    .line 182
    new-instance p2, Lam;

    .line 183
    .line 184
    invoke-direct {p2, p1}, Lam;-><init>(Llb;)V

    .line 185
    .line 186
    .line 187
    iput-object p2, p0, Lcom/twntool/auth/AuthManager;->m:Lam;

    .line 188
    .line 189
    sget-object p1, Lcom/twntool/auth/AuthManager;->v:Lam;

    .line 190
    .line 191
    invoke-virtual {p1}, Lam;->a()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Ljava/lang/String;

    .line 196
    .line 197
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->n:Ljava/lang/String;

    .line 198
    .line 199
    new-instance p1, Lxi;

    .line 200
    .line 201
    const-string p2, "(\\d+)\\s*s\\b"

    .line 202
    .line 203
    invoke-direct {p1, p2}, Lxi;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->o:Lxi;

    .line 207
    .line 208
    const-string v7, "key_suspended"

    .line 209
    .line 210
    const-string v8, "key_blocked"

    .line 211
    .line 212
    const-string v0, "not_found"

    .line 213
    .line 214
    const-string v1, "blocked"

    .line 215
    .line 216
    const-string v2, "expired"

    .line 217
    .line 218
    const-string v3, "device_limit"

    .line 219
    .line 220
    const-string v4, "hwid_missing"

    .line 221
    .line 222
    const-string v5, "suspended"

    .line 223
    .line 224
    const-string v6, "key_expired"

    .line 225
    .line 226
    const-string v9, "key_revoked"

    .line 227
    .line 228
    const-string v10, "platform_mobile_required"

    .line 229
    .line 230
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-static {p1}, LQk;->P([Ljava/lang/Object;)Ljava/util/Set;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->p:Ljava/util/Set;

    .line 239
    .line 240
    new-instance p1, Ljava/lang/Object;

    .line 241
    .line 242
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 243
    .line 244
    .line 245
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->r:Ljava/lang/Object;

    .line 246
    .line 247
    invoke-static {}, Le4;->a()Lmg;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->t:Lmg;

    .line 252
    .line 253
    return-void
.end method

.method public static final a(Lcom/twntool/auth/AuthManager;Ljava/lang/String;)Lah;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    div-long/2addr v0, v2

    .line 12
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/twntool/auth/AuthManager;->p(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    const-string v4, "https://twntool.com/auth/login"

    .line 22
    .line 23
    const-string v5, "key"

    .line 24
    .line 25
    new-instance v6, Lih;

    .line 26
    .line 27
    invoke-direct {v6, v5, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "hwid"

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    new-instance v7, Lih;

    .line 37
    .line 38
    invoke-direct {v7, p1, v5}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "ts"

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lih;

    .line 48
    .line 49
    invoke-direct {v1, p1, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "sig"

    .line 53
    .line 54
    new-instance v0, Lih;

    .line 55
    .line 56
    invoke-direct {v0, p1, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    filled-new-array {v6, v7, v1, v0}, [Lih;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->h()Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    const-string p1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

    .line 80
    .line 81
    invoke-virtual {p0, v4, p1, v1}, Lcom/twntool/auth/AuthManager;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)LRd;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "ok"

    .line 86
    .line 87
    invoke-virtual {p0, p1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    .line 93
    invoke-virtual {p1}, LOd;->a()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const/4 v0, 0x1

    .line 98
    if-ne p1, v0, :cond_0

    .line 99
    .line 100
    new-instance p1, LI3;

    .line 101
    .line 102
    invoke-direct {p1, p0}, LI3;-><init>(LRd;)V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :catch_0
    move-exception p0

    .line 107
    goto :goto_3

    .line 108
    :cond_0
    const-string p1, "msg"

    .line 109
    .line 110
    invoke-virtual {p0, p1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_1

    .line 115
    .line 116
    invoke-virtual {p1}, LOd;->h()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    move-object p1, v3

    .line 122
    :goto_0
    if-nez p1, :cond_2

    .line 123
    .line 124
    const-string p1, "Chave inv\u00e1lida."

    .line 125
    .line 126
    :cond_2
    const-string v0, "blocked"

    .line 127
    .line 128
    invoke-virtual {p0, v0}, LRd;->j(Ljava/lang/String;)LOd;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    invoke-virtual {v0}, LOd;->a()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    const/4 v0, 0x0

    .line 140
    :goto_1
    const-string v1, "error"

    .line 141
    .line 142
    invoke-virtual {p0, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    if-eqz p0, :cond_4

    .line 147
    .line 148
    invoke-virtual {p0}, LOd;->h()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    goto :goto_2

    .line 153
    :cond_4
    move-object p0, v3

    .line 154
    :goto_2
    if-nez p0, :cond_5

    .line 155
    .line 156
    const-string p0, ""

    .line 157
    .line 158
    :cond_5
    new-instance v1, LH3;

    .line 159
    .line 160
    invoke-direct {v1, p1, p0, v0}, LH3;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    move-object p1, v1

    .line 164
    goto :goto_4

    .line 165
    :goto_3
    new-instance p1, LG3;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    if-eqz p0, :cond_6

    .line 172
    .line 173
    const/16 v0, 0x64

    .line 174
    .line 175
    invoke-static {v0, p0}, LGl;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :cond_6
    const-string p0, "Erro de conex\u00e3o com o servidor: "

    .line 180
    .line 181
    invoke-static {p0, v3}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-direct {p1, p0}, LG3;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_4
    return-object p1
.end method

.method public static final b(Lcom/twntool/auth/AuthManager;Ljava/lang/String;LRd;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "key"

    .line 5
    .line 6
    new-instance v2, Lih;

    .line 7
    .line 8
    invoke-direct {v2, v1, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "access_token"

    .line 12
    .line 13
    const-string v1, "access_token"

    .line 14
    .line 15
    invoke-virtual {p2, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, LOd;->h()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_b

    .line 29
    .line 30
    :cond_0
    move-object v1, v9

    .line 31
    :goto_0
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v1, ""

    .line 34
    .line 35
    :cond_1
    new-instance v3, Lih;

    .line 36
    .line 37
    invoke-direct {v3, p1, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "refresh_token"

    .line 41
    .line 42
    const-string v1, "refresh_token"

    .line 43
    .line 44
    invoke-virtual {p2, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, LOd;->h()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move-object v1, v9

    .line 56
    :goto_1
    if-nez v1, :cond_3

    .line 57
    .line 58
    const-string v1, ""

    .line 59
    .line 60
    :cond_3
    new-instance v4, Lih;

    .line 61
    .line 62
    invoke-direct {v4, p1, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "expiry"

    .line 66
    .line 67
    const-string v1, "expiry"

    .line 68
    .line 69
    invoke-virtual {p2, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1}, LOd;->h()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    move-object v1, v9

    .line 81
    :goto_2
    if-nez v1, :cond_5

    .line 82
    .line 83
    const-string v1, ""

    .line 84
    .line 85
    :cond_5
    new-instance v5, Lih;

    .line 86
    .line 87
    invoke-direct {v5, p1, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const-string p1, "note"

    .line 91
    .line 92
    const-string v1, "note"

    .line 93
    .line 94
    invoke-virtual {p2, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {v1}, LOd;->h()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    move-object v1, v9

    .line 106
    :goto_3
    if-nez v1, :cond_7

    .line 107
    .line 108
    const-string v1, ""

    .line 109
    .line 110
    :cond_7
    new-instance v6, Lih;

    .line 111
    .line 112
    invoke-direct {v6, p1, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const-string p1, "send_cards"

    .line 116
    .line 117
    const-string v1, "send_cards"

    .line 118
    .line 119
    invoke-virtual {p2, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const/4 v10, 0x1

    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    invoke-virtual {v1}, LOd;->a()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    goto :goto_4

    .line 131
    :cond_8
    move v1, v10

    .line 132
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v7, Lih;

    .line 137
    .line 138
    invoke-direct {v7, p1, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const-string p1, "tools"

    .line 142
    .line 143
    invoke-virtual {p0, p2}, Lcom/twntool/auth/AuthManager;->q(LRd;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    new-instance v8, Lih;

    .line 148
    .line 149
    invoke-direct {v8, p1, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    filled-new-array/range {v2 .. v8}, [Lih;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p1}, Lvf;->o0([Lih;)Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 161
    .line 162
    sget-object p1, LPk;->a:Lam;

    .line 163
    .line 164
    iget-object p1, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 165
    .line 166
    invoke-static {p1}, LPk;->c(Ljava/util/Map;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 170
    .line 171
    const-string v1, "access_token"

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    instance-of v1, p1, Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    check-cast p1, Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_9
    move-object p1, v9

    .line 185
    :goto_5
    if-nez p1, :cond_a

    .line 186
    .line 187
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .line 189
    :cond_a
    monitor-exit v0

    .line 190
    :try_start_1
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->m()Lpk;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v0, v0, Lpk;->a:Lam;

    .line 195
    .line 196
    invoke-virtual {v0}, Lam;->a()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/content/SharedPreferences;

    .line 201
    .line 202
    const-string v1, "hwid_override"

    .line 203
    .line 204
    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-eqz v0, :cond_b

    .line 209
    .line 210
    invoke-static {v0}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    xor-int/2addr v1, v10

    .line 215
    if-eqz v1, :cond_b

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_b
    move-object v0, v9

    .line 219
    :goto_6
    if-nez v0, :cond_c

    .line 220
    .line 221
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->a:Landroid/content/Context;

    .line 222
    .line 223
    const-string v1, "context"

    .line 224
    .line 225
    invoke-static {v0, v1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .line 227
    .line 228
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const-string v1, "twn_device"

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 236
    .line 237
    .line 238
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    goto :goto_7

    .line 240
    :catch_0
    move-object v0, v9

    .line 241
    :goto_7
    if-eqz v0, :cond_c

    .line 242
    .line 243
    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    if-eqz v0, :cond_c

    .line 248
    .line 249
    const-string v1, "hwid_prev_v1"

    .line 250
    .line 251
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    if-eqz v0, :cond_c

    .line 256
    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 258
    .line 259
    .line 260
    :catch_1
    :cond_c
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->c:Lcom/twntool/network/ApiClient;

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v0, p1, v1}, Lcom/twntool/network/ApiClient;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v0, "unlock"

    .line 270
    .line 271
    invoke-virtual {p2, v0}, LRd;->j(Ljava/lang/String;)LOd;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    if-eqz p2, :cond_f

    .line 276
    .line 277
    invoke-virtual {p2}, LOd;->h()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    if-eqz p2, :cond_f

    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-lez v0, :cond_d

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_d
    move-object p2, v9

    .line 291
    :goto_8
    if-eqz p2, :cond_f

    .line 292
    .line 293
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->a:Landroid/content/Context;

    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/twntool/auth/AuthManager;->n:Ljava/lang/String;

    .line 300
    .line 301
    const-string v3, "getBytes(...)"

    .line 302
    .line 303
    const-string v4, "context"

    .line 304
    .line 305
    invoke-static {v0, v4}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const-string v4, "hwid"

    .line 309
    .line 310
    invoke-static {v1, v4}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string v4, "appSecret"

    .line 314
    .line 315
    invoke-static {v2, v4}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string p1, "|"

    .line 327
    .line 328
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    sget-object v2, LG4;->a:Ljava/nio/charset/Charset;

    .line 339
    .line 340
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-static {p1, v3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-static {v1, v3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const-string v4, "twn-blob-unlock-v1"

    .line 355
    .line 356
    sget-object v5, LG4;->d:Ljava/nio/charset/Charset;

    .line 357
    .line 358
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-static {v4, v3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-static {p1, v1, v4}, Ly1;->m([B[B[B)[B

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    const/16 v1, 0xb

    .line 370
    .line 371
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    const-string v1, "decode(...)"

    .line 376
    .line 377
    invoke-static {p2, v1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static {p1, p2}, Ly1;->l([B[B)[B

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    array-length p2, p1

    .line 385
    const/16 v1, 0x20

    .line 386
    .line 387
    if-eq p2, v1, :cond_e

    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_e
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    const-string v0, "secure_tables.enc"

    .line 395
    .line 396
    invoke-virtual {p2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 397
    .line 398
    .line 399
    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 400
    :try_start_5
    invoke-static {p2}, Lud;->o(Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-static {p2}, LN6;->K(Ljava/io/InputStream;)[B

    .line 404
    .line 405
    .line 406
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 407
    :try_start_6
    invoke-static {p2, v9}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 408
    .line 409
    .line 410
    new-instance p2, Ljava/lang/String;

    .line 411
    .line 412
    invoke-static {p1, v0}, Ly1;->l([B[B)[B

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    invoke-direct {p2, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 417
    .line 418
    .line 419
    invoke-static {p2}, Ly1;->B(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 420
    .line 421
    .line 422
    goto :goto_9

    .line 423
    :catchall_1
    move-exception p1

    .line 424
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 425
    :catchall_2
    move-exception v0

    .line 426
    :try_start_8
    invoke-static {p2, p1}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 430
    :catch_2
    :cond_f
    :goto_9
    new-instance p1, Lfi;

    .line 431
    .line 432
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 433
    .line 434
    .line 435
    iget-object p2, p0, Lcom/twntool/auth/AuthManager;->r:Ljava/lang/Object;

    .line 436
    .line 437
    monitor-enter p2

    .line 438
    :try_start_9
    iget-boolean v0, p0, Lcom/twntool/auth/AuthManager;->q:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 439
    .line 440
    if-eqz v0, :cond_10

    .line 441
    .line 442
    monitor-exit p2

    .line 443
    goto :goto_a

    .line 444
    :cond_10
    :try_start_a
    iput-boolean v10, p0, Lcom/twntool/auth/AuthManager;->q:Z

    .line 445
    .line 446
    iget v0, p0, Lcom/twntool/auth/AuthManager;->s:I

    .line 447
    .line 448
    add-int/2addr v0, v10

    .line 449
    iput v0, p0, Lcom/twntool/auth/AuthManager;->s:I

    .line 450
    .line 451
    iget v0, p0, Lcom/twntool/auth/AuthManager;->s:I

    .line 452
    .line 453
    iput v0, p1, Lfi;->a:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 454
    .line 455
    monitor-exit p2

    .line 456
    iget-object p2, p0, Lcom/twntool/auth/AuthManager;->g:Lf6;

    .line 457
    .line 458
    new-instance v0, LO3;

    .line 459
    .line 460
    invoke-direct {v0, p0, p1, v9}, LO3;-><init>(Lcom/twntool/auth/AuthManager;Lfi;Li6;)V

    .line 461
    .line 462
    .line 463
    const/4 v1, 0x3

    .line 464
    invoke-static {p2, v9, v0, v1}, Le4;->y(Lw6;Lr6;LAb;I)LAl;

    .line 465
    .line 466
    .line 467
    iget-object p2, p0, Lcom/twntool/auth/AuthManager;->g:Lf6;

    .line 468
    .line 469
    new-instance v0, LP3;

    .line 470
    .line 471
    invoke-direct {v0, p0, p1, v9}, LP3;-><init>(Lcom/twntool/auth/AuthManager;Lfi;Li6;)V

    .line 472
    .line 473
    .line 474
    invoke-static {p2, v9, v0, v1}, Le4;->y(Lw6;Lr6;LAb;I)LAl;

    .line 475
    .line 476
    .line 477
    :goto_a
    return-void

    .line 478
    :catchall_3
    move-exception p0

    .line 479
    monitor-exit p2

    .line 480
    throw p0

    .line 481
    :goto_b
    monitor-exit v0

    .line 482
    throw p0
.end method

.method public static final c(Lcom/twntool/auth/AuthManager;ILi6;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    instance-of v2, v1, LL3;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, LL3;

    .line 14
    .line 15
    iget v3, v2, LL3;->h:I

    .line 16
    .line 17
    const/high16 v4, -0x80000000

    .line 18
    .line 19
    and-int v5, v3, v4

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sub-int/2addr v3, v4

    .line 24
    iput v3, v2, LL3;->h:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v2, LL3;

    .line 28
    .line 29
    invoke-direct {v2, v0, v1}, LL3;-><init>(Lcom/twntool/auth/AuthManager;Li6;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v1, v2, LL3;->f:Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v3, Lx6;->a:Lx6;

    .line 35
    .line 36
    iget v4, v2, LL3;->h:I

    .line 37
    .line 38
    const/4 v5, 0x5

    .line 39
    const/4 v6, 0x4

    .line 40
    const/4 v7, 0x3

    .line 41
    const/4 v8, 0x2

    .line 42
    const-wide/32 v9, 0xea60

    .line 43
    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    if-eqz v4, :cond_7

    .line 47
    .line 48
    if-eq v4, v11, :cond_6

    .line 49
    .line 50
    if-eq v4, v8, :cond_5

    .line 51
    .line 52
    if-eq v4, v7, :cond_4

    .line 53
    .line 54
    if-eq v4, v6, :cond_3

    .line 55
    .line 56
    if-ne v4, v5, :cond_2

    .line 57
    .line 58
    iget v0, v2, LL3;->e:I

    .line 59
    .line 60
    iget-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 61
    .line 62
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    move v1, v0

    .line 66
    goto/16 :goto_c

    .line 67
    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_3
    iget v0, v2, LL3;->e:I

    .line 77
    .line 78
    iget-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 79
    .line 80
    :try_start_0
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .line 82
    .line 83
    goto/16 :goto_9

    .line 84
    .line 85
    :cond_4
    iget v0, v2, LL3;->e:I

    .line 86
    .line 87
    iget-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    iget v0, v2, LL3;->e:I

    .line 91
    .line 92
    iget-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 93
    .line 94
    :goto_1
    :try_start_1
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .line 96
    .line 97
    move v1, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    iget v0, v2, LL3;->e:I

    .line 100
    .line 101
    iget-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 102
    .line 103
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    move v1, v0

    .line 107
    move-object v0, v4

    .line 108
    goto :goto_2

    .line 109
    :cond_7
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 113
    .line 114
    move/from16 v1, p1

    .line 115
    .line 116
    iput v1, v2, LL3;->e:I

    .line 117
    .line 118
    iput v11, v2, LL3;->h:I

    .line 119
    .line 120
    invoke-static {v9, v10, v2}, Lud;->x(JLi6;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-ne v4, v3, :cond_8

    .line 125
    .line 126
    goto/16 :goto_d

    .line 127
    .line 128
    :cond_8
    :goto_2
    move-object v4, v0

    .line 129
    :cond_9
    :goto_3
    iget v0, v4, Lcom/twntool/auth/AuthManager;->s:I

    .line 130
    .line 131
    if-ne v0, v1, :cond_18

    .line 132
    .line 133
    :try_start_2
    invoke-virtual {v4}, Lcom/twntool/auth/AuthManager;->o()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_a

    .line 138
    .line 139
    iput-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 140
    .line 141
    iput v1, v2, LL3;->e:I

    .line 142
    .line 143
    iput v8, v2, LL3;->h:I

    .line 144
    .line 145
    invoke-static {v9, v10, v2}, Lud;->x(JLi6;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-ne v0, v3, :cond_9

    .line 150
    .line 151
    goto/16 :goto_d

    .line 152
    .line 153
    :cond_a
    iget-object v12, v4, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 154
    .line 155
    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    :try_start_3
    iget-object v0, v4, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    const-string v13, "access_token"

    .line 159
    .line 160
    invoke-virtual {v0, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    instance-of v13, v0, Ljava/lang/String;

    .line 165
    .line 166
    const/4 v14, 0x0

    .line 167
    if-eqz v13, :cond_b

    .line 168
    .line 169
    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    goto/16 :goto_a

    .line 174
    .line 175
    :cond_b
    move-object v0, v14

    .line 176
    :goto_4
    :try_start_4
    monitor-exit v12

    .line 177
    if-nez v0, :cond_c

    .line 178
    .line 179
    iput-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 180
    .line 181
    iput v1, v2, LL3;->e:I

    .line 182
    .line 183
    iput v7, v2, LL3;->h:I

    .line 184
    .line 185
    invoke-static {v9, v10, v2}, Lud;->x(JLi6;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-ne v0, v3, :cond_9

    .line 190
    .line 191
    goto/16 :goto_d

    .line 192
    .line 193
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v12

    .line 197
    const/16 v15, 0x3e8

    .line 198
    .line 199
    int-to-long v7, v15

    .line 200
    div-long/2addr v12, v7

    .line 201
    invoke-virtual {v4}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-virtual {v4, v0, v7, v12, v13}, Lcom/twntool/auth/AuthManager;->p(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    const-string v8, "https://twntool.com/auth/validate"

    .line 210
    .line 211
    const-string v15, "token"

    .line 212
    .line 213
    new-instance v9, Lih;

    .line 214
    .line 215
    invoke-direct {v9, v15, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    const-string v0, "hwid"

    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    new-instance v15, Lih;

    .line 225
    .line 226
    invoke-direct {v15, v0, v10}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    const-string v0, "ts"

    .line 230
    .line 231
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    new-instance v12, Lih;

    .line 236
    .line 237
    invoke-direct {v12, v0, v10}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    const-string v0, "sig"

    .line 241
    .line 242
    new-instance v10, Lih;

    .line 243
    .line 244
    invoke-direct {v10, v0, v7}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    filled-new-array {v9, v15, v12, v10}, [Lih;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v0}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v4}, Lcom/twntool/auth/AuthManager;->h()Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 260
    .line 261
    invoke-direct {v9, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9, v7}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 265
    .line 266
    .line 267
    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

    .line 268
    .line 269
    invoke-virtual {v4, v8, v0, v9}, Lcom/twntool/auth/AuthManager;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)LRd;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v7, "ok"

    .line 274
    .line 275
    invoke-virtual {v0, v7}, LRd;->j(Ljava/lang/String;)LOd;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    if-eqz v7, :cond_12

    .line 280
    .line 281
    invoke-virtual {v7}, LOd;->a()Z

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    if-ne v7, v11, :cond_12

    .line 286
    .line 287
    const-string v7, "send_cards"

    .line 288
    .line 289
    iget-object v8, v0, LRd;->a:LCe;

    .line 290
    .line 291
    invoke-virtual {v8, v7}, LCe;->containsKey(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    if-nez v7, :cond_d

    .line 296
    .line 297
    const-string v7, "tools"

    .line 298
    .line 299
    iget-object v8, v0, LRd;->a:LCe;

    .line 300
    .line 301
    invoke-virtual {v8, v7}, LCe;->containsKey(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-eqz v7, :cond_14

    .line 306
    .line 307
    :cond_d
    iget-object v7, v4, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 308
    .line 309
    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 310
    :try_start_5
    iget-object v8, v4, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 311
    .line 312
    const-string v9, "key"

    .line 313
    .line 314
    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    instance-of v9, v8, Ljava/lang/String;

    .line 319
    .line 320
    if-eqz v9, :cond_e

    .line 321
    .line 322
    move-object v14, v8

    .line 323
    check-cast v14, Ljava/lang/String;

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :catchall_1
    move-exception v0

    .line 327
    goto :goto_7

    .line 328
    :cond_e
    :goto_5
    if-eqz v14, :cond_11

    .line 329
    .line 330
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-nez v8, :cond_f

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :cond_f
    const-string v8, "send_cards"

    .line 338
    .line 339
    invoke-virtual {v0, v8}, LRd;->j(Ljava/lang/String;)LOd;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    if-eqz v8, :cond_10

    .line 344
    .line 345
    iget-object v9, v4, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 346
    .line 347
    const-string v10, "send_cards"

    .line 348
    .line 349
    invoke-virtual {v8}, LOd;->a()Z

    .line 350
    .line 351
    .line 352
    move-result v8

    .line 353
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 354
    .line 355
    .line 356
    move-result-object v8

    .line 357
    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    :cond_10
    invoke-virtual {v4, v0}, Lcom/twntool/auth/AuthManager;->e(LRd;)V

    .line 361
    .line 362
    .line 363
    sget-object v0, LPk;->a:Lam;

    .line 364
    .line 365
    iget-object v0, v4, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 366
    .line 367
    invoke-static {v0}, LPk;->c(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 368
    .line 369
    .line 370
    :cond_11
    :goto_6
    :try_start_6
    monitor-exit v7

    .line 371
    goto :goto_8

    .line 372
    :goto_7
    monitor-exit v7

    .line 373
    throw v0

    .line 374
    :cond_12
    iget-object v7, v4, Lcom/twntool/auth/AuthManager;->k:Ljava/util/Set;

    .line 375
    .line 376
    const-string v8, "error"

    .line 377
    .line 378
    invoke-virtual {v0, v8}, LRd;->j(Ljava/lang/String;)LOd;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    if-eqz v0, :cond_13

    .line 383
    .line 384
    invoke-virtual {v0}, LOd;->h()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    :cond_13
    invoke-static {v7, v14}, LY4;->u0(Ljava/lang/Iterable;Ljava/io/Serializable;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_15

    .line 393
    .line 394
    invoke-virtual {v4}, Lcom/twntool/auth/AuthManager;->n()V

    .line 395
    .line 396
    .line 397
    :catch_0
    :cond_14
    :goto_8
    move v0, v1

    .line 398
    goto :goto_b

    .line 399
    :cond_15
    iput-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 400
    .line 401
    iput v1, v2, LL3;->e:I

    .line 402
    .line 403
    iput v6, v2, LL3;->h:I

    .line 404
    .line 405
    invoke-virtual {v4, v2}, Lcom/twntool/auth/AuthManager;->r(Li6;)Ljava/lang/Enum;

    .line 406
    .line 407
    .line 408
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 409
    if-ne v0, v3, :cond_16

    .line 410
    .line 411
    goto :goto_d

    .line 412
    :cond_16
    move/from16 v16, v1

    .line 413
    .line 414
    move-object v1, v0

    .line 415
    move/from16 v0, v16

    .line 416
    .line 417
    :goto_9
    :try_start_7
    sget-object v7, LJ3;->b:LJ3;

    .line 418
    .line 419
    if-ne v1, v7, :cond_17

    .line 420
    .line 421
    invoke-virtual {v4}, Lcom/twntool/auth/AuthManager;->n()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 422
    .line 423
    .line 424
    goto :goto_b

    .line 425
    :goto_a
    :try_start_8
    monitor-exit v12

    .line 426
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 427
    :catch_1
    :cond_17
    :goto_b
    iput-object v4, v2, LL3;->d:Lcom/twntool/auth/AuthManager;

    .line 428
    .line 429
    iput v0, v2, LL3;->e:I

    .line 430
    .line 431
    iput v5, v2, LL3;->h:I

    .line 432
    .line 433
    const-wide/32 v7, 0x493e0

    .line 434
    .line 435
    .line 436
    invoke-static {v7, v8, v2}, Lud;->x(JLi6;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    if-ne v1, v3, :cond_1

    .line 441
    .line 442
    goto :goto_d

    .line 443
    :goto_c
    const/4 v7, 0x3

    .line 444
    const/4 v8, 0x2

    .line 445
    const-wide/32 v9, 0xea60

    .line 446
    .line 447
    .line 448
    goto/16 :goto_3

    .line 449
    .line 450
    :cond_18
    sget-object v3, Ly1;->r:Ly1;

    .line 451
    .line 452
    :goto_d
    return-object v3
.end method

.method public static final d(Lcom/twntool/auth/AuthManager;ILi6;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, LN3;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p2

    .line 9
    check-cast v0, LN3;

    .line 10
    .line 11
    iget v1, v0, LN3;->h:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, LN3;->h:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, LN3;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, LN3;-><init>(Lcom/twntool/auth/AuthManager;Li6;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p2, v0, LN3;->f:Ljava/lang/Object;

    .line 29
    .line 30
    sget-object v1, Lx6;->a:Lx6;

    .line 31
    .line 32
    iget v2, v0, LN3;->h:I

    .line 33
    .line 34
    sget-object v3, Ly1;->r:Ly1;

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v5, :cond_2

    .line 41
    .line 42
    if-ne v2, v4, :cond_1

    .line 43
    .line 44
    iget p0, v0, LN3;->e:I

    .line 45
    .line 46
    iget-object p1, v0, LN3;->d:Lcom/twntool/auth/AuthManager;

    .line 47
    .line 48
    :try_start_0
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    move-object v8, p1

    .line 52
    move p1, p0

    .line 53
    move-object p0, v8

    .line 54
    goto :goto_3

    .line 55
    :catch_0
    move-object v8, p1

    .line 56
    move p1, p0

    .line 57
    move-object p0, v8

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    iget p0, v0, LN3;->e:I

    .line 68
    .line 69
    iget-object p1, v0, LN3;->d:Lcom/twntool/auth/AuthManager;

    .line 70
    .line 71
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    move-object v8, p1

    .line 75
    move p1, p0

    .line 76
    move-object p0, v8

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :catch_1
    :cond_4
    :goto_1
    iget p2, p0, Lcom/twntool/auth/AuthManager;->s:I

    .line 82
    .line 83
    if-ne p2, p1, :cond_6

    .line 84
    .line 85
    iput-object p0, v0, LN3;->d:Lcom/twntool/auth/AuthManager;

    .line 86
    .line 87
    iput p1, v0, LN3;->e:I

    .line 88
    .line 89
    iput v5, v0, LN3;->h:I

    .line 90
    .line 91
    const-wide/32 v6, 0x927c0

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v7, v0}, Lud;->x(JLi6;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-ne p2, v1, :cond_5

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    :goto_2
    iget p2, p0, Lcom/twntool/auth/AuthManager;->s:I

    .line 102
    .line 103
    if-eq p2, p1, :cond_7

    .line 104
    .line 105
    :cond_6
    move-object v1, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->o()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_4

    .line 112
    .line 113
    iput-object p0, v0, LN3;->d:Lcom/twntool/auth/AuthManager;

    .line 114
    .line 115
    iput p1, v0, LN3;->e:I

    .line 116
    .line 117
    iput v4, v0, LN3;->h:I

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lcom/twntool/auth/AuthManager;->r(Li6;)Ljava/lang/Enum;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-ne p2, v1, :cond_8

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_8
    :goto_3
    sget-object v2, LJ3;->b:LJ3;

    .line 127
    .line 128
    if-ne p2, v2, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->n()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :goto_4
    return-object v1
.end method

.method public static g([B)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, LI;->f()Ljava/util/Base64$Encoder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, LI;->g(Ljava/util/Base64$Encoder;)Ljava/util/Base64$Encoder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p0}, LI;->e(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lud;->o(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0xb

    .line 24
    .line 25
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lud;->o(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final e(LRd;)V
    .locals 3

    .line 1
    iget-object v0, p1, LRd;->a:LCe;

    .line 2
    .line 3
    const-string v1, "tools"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, LCe;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/twntool/auth/AuthManager;->q(LRd;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v2, v0, Ljava/util/List;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v0, Ljava/util/List;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-nez v0, :cond_2

    .line 31
    .line 32
    sget-object v0, Lu8;->a:Lu8;

    .line 33
    .line 34
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    xor-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_4
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)LRd;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    move-object v6, v5

    .line 38
    check-cast v6, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    const-string v5, "name"

    .line 47
    .line 48
    invoke-static {v6, v5}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v5, "value"

    .line 52
    .line 53
    invoke-static {v4, v5}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/16 v15, 0x5b

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    const-string v9, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v12, 0x1

    .line 65
    const/4 v13, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v14, v5

    .line 68
    invoke-static/range {v6 .. v15}, LR5;->e(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    const/4 v12, 0x0

    .line 76
    const/16 v16, 0x5b

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    const-string v10, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    .line 80
    .line 81
    const/4 v13, 0x1

    .line 82
    const/4 v14, 0x0

    .line 83
    move-object v7, v4

    .line 84
    move-object v15, v5

    .line 85
    invoke-static/range {v7 .. v16}, LR5;->e(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    new-instance v3, LNa;

    .line 94
    .line 95
    invoke-direct {v3, v0, v2}, LNa;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, LAa;

    .line 99
    .line 100
    invoke-direct {v0}, LAa;-><init>()V

    .line 101
    .line 102
    .line 103
    move-object/from16 v2, p1

    .line 104
    .line 105
    invoke-virtual {v0, v2}, LAa;->d(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v2, "POST"

    .line 109
    .line 110
    invoke-virtual {v0, v2, v3}, LAa;->c(Ljava/lang/String;Los;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "Accept"

    .line 114
    .line 115
    const-string v3, "application/json, text/plain, */*"

    .line 116
    .line 117
    invoke-virtual {v0, v2, v3}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v2, "User-Agent"

    .line 121
    .line 122
    move-object/from16 v3, p2

    .line 123
    .line 124
    invoke-virtual {v0, v2, v3}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, LAa;->a()Li2;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v2, v1, Lcom/twntool/auth/AuthManager;->f:Lam;

    .line 132
    .line 133
    invoke-virtual {v2}, Lam;->a()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, LJg;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    new-instance v3, LWh;

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    invoke-direct {v3, v2, v0, v4}, LWh;-><init>(LJg;Li2;Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, LWh;->c()LTi;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    :try_start_0
    iget-object v0, v2, LTi;->g:Lci;

    .line 153
    .line 154
    if-eqz v0, :cond_1

    .line 155
    .line 156
    invoke-virtual {v0}, Lci;->m()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_1

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    move-object v3, v0

    .line 163
    goto :goto_3

    .line 164
    :cond_1
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    :goto_1
    :try_start_1
    iget-object v3, v1, Lcom/twntool/auth/AuthManager;->d:LZb;

    .line 167
    .line 168
    const-class v4, LRd;

    .line 169
    .line 170
    invoke-virtual {v3, v0, v4}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, LRd;

    .line 175
    .line 176
    if-nez v0, :cond_2

    .line 177
    .line 178
    new-instance v0, LRd;

    .line 179
    .line 180
    invoke-direct {v0}, LRd;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catch_0
    :try_start_2
    invoke-virtual {v2}, LTi;->d()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_3

    .line 189
    .line 190
    new-instance v0, LRd;

    .line 191
    .line 192
    invoke-direct {v0}, LRd;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 196
    invoke-static {v2, v3}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    return-object v0

    .line 200
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 201
    .line 202
    iget v3, v2, LTi;->d:I

    .line 203
    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v5, "HTTP "

    .line 210
    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v3, ": resposta n\u00e3o-JSON (WAF/host)."

    .line 218
    .line 219
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    :catchall_1
    move-exception v0

    .line 232
    move-object v4, v0

    .line 233
    invoke-static {v2, v3}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    throw v4
.end method

.method public final h()Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->a:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lih;

    .line 4
    .line 5
    const-string v2, "client"

    .line 6
    .line 7
    const-string v3, "desktop"

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    filled-new-array {v1}, [Lih;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lvf;->o0([Lih;)Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->m()Lpk;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v2, v2, Lpk;->a:Lam;

    .line 25
    .line 26
    invoke-virtual {v2}, Lam;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/content/SharedPreferences;

    .line 31
    .line 32
    const-string v3, "hwid_override"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-static {v2}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    xor-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v2, v4

    .line 51
    :goto_0
    if-nez v2, :cond_6

    .line 52
    .line 53
    :try_start_0
    sget-object v2, Ly1;->h:Ly1;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ly1;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v2}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    xor-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move-object v2, v4

    .line 69
    :goto_1
    if-eqz v2, :cond_2

    .line 70
    .line 71
    const-string v3, "dev_fp"

    .line 72
    .line 73
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_2
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .line 78
    :try_start_1
    invoke-static {v0}, Ly1;->D(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    const-string v3, "hwid_prev_v1"

    .line 85
    .line 86
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object v2, v0

    .line 94
    :catch_0
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {v2}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    xor-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    move-object v4, v2

    .line 113
    :cond_5
    if-eqz v4, :cond_6

    .line 114
    .line 115
    const-string v0, "hwid_prev"

    .line 116
    .line 117
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    .line 119
    .line 120
    :catch_1
    :cond_6
    return-object v1
.end method

.method public final i()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->o()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    const-string v3, "access_token"

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v3, v1, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    move-object v2, v1

    .line 24
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-object v2

    .line 31
    :goto_1
    monitor-exit v0

    .line 32
    throw v1
.end method

.method public final j()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->l:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->m()Lpk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lpk;->a:Lam;

    .line 6
    .line 7
    invoke-virtual {v0}, Lam;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/SharedPreferences;

    .line 12
    .line 13
    const-string v1, "hwid_override"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {v0}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    xor-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    :cond_0
    if-nez v2, :cond_2

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->h:Lam;

    .line 34
    .line 35
    invoke-virtual {v0}, Lam;->a()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v2, v0

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    :cond_2
    return-object v2
.end method

.method public final l()Ljava/util/Map;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->o()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lv8;->a:Lv8;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "note"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    const-string v3, "note"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lih;

    .line 24
    .line 25
    invoke-direct {v3, v1, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "expiry"

    .line 29
    .line 30
    iget-object v2, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    const-string v4, "expiry"

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v4, Lih;

    .line 39
    .line 40
    invoke-direct {v4, v1, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "send_cards"

    .line 44
    .line 45
    iget-object v2, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    const-string v5, "send_cards"

    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v5, Lih;

    .line 54
    .line 55
    invoke-direct {v5, v1, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "tools"

    .line 59
    .line 60
    iget-object v2, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    const-string v6, "tools"

    .line 63
    .line 64
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v6, Lih;

    .line 69
    .line 70
    invoke-direct {v6, v1, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    filled-new-array {v3, v4, v5, v6}, [Lih;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit v0

    .line 82
    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0

    .line 85
    throw v1
.end method

.method public final m()Lpk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->e:Lam;

    .line 2
    .line 3
    invoke-virtual {v0}, Lam;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpk;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 7
    .line 8
    .line 9
    sget-object v1, LPk;->a:Lam;

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    sput-object v1, LPk;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lcom/twntool/auth/AuthManager;->c:Lcom/twntool/network/ApiClient;

    .line 18
    .line 19
    iput-object v0, v1, Lcom/twntool/network/ApiClient;->h:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, v1, Lcom/twntool/network/ApiClient;->i:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, v1, Lcom/twntool/network/ApiClient;->j:[B

    .line 24
    .line 25
    iput-object v0, v1, Lcom/twntool/network/ApiClient;->k:[B

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    iput-wide v2, v1, Lcom/twntool/network/ApiClient;->l:J

    .line 30
    .line 31
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->r:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :try_start_1
    iput-boolean v1, p0, Lcom/twntool/auth/AuthManager;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0

    .line 41
    throw v1

    .line 42
    :catchall_1
    move-exception v1

    .line 43
    monitor-exit v0

    .line 44
    throw v1
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "\n"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p2, LG4;->a:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p3, "getBytes(...)"

    .line 34
    .line 35
    invoke-static {p1, p3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p4, "HmacSHA256"

    .line 39
    .line 40
    invoke-static {p4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/twntool/auth/AuthManager;->n:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2, p3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p2, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lud;->o(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/twntool/auth/AuthManager;->g([B)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final q(LRd;)Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "tools"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, LRd;->j(Ljava/lang/String;)LOd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    instance-of v1, p1, LNd;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object p1, v0

    .line 16
    :goto_0
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, LOd;->d()LNd;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object p1, v0

    .line 24
    :goto_1
    if-nez p1, :cond_2

    .line 25
    .line 26
    sget-object p1, Lu8;->a:Lu8;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_5

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, LOd;

    .line 49
    .line 50
    invoke-virtual {v2}, LOd;->h()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "toLowerCase(...)"

    .line 63
    .line 64
    invoke-static {v2, v3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move-object v2, v0

    .line 69
    :goto_3
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v2, v1

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/twntool/auth/AuthManager;->l:Ljava/util/Set;

    .line 98
    .line 99
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_7
    return-object p1
.end method

.method public final r(Li6;)Ljava/lang/Enum;
    .locals 11

    .line 1
    instance-of v0, p1, LM3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, LM3;

    .line 7
    .line 8
    iget v1, v0, LM3;->h:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, LM3;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, LM3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, LM3;-><init>(Lcom/twntool/auth/AuthManager;Li6;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, LM3;->f:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lx6;->a:Lx6;

    .line 28
    .line 29
    iget v2, v0, LM3;->h:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object v1, v0, LM3;->e:Lmg;

    .line 37
    .line 38
    iget-object v0, v0, LM3;->d:Lcom/twntool/auth/AuthManager;

    .line 39
    .line 40
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/twntool/auth/AuthManager;->t:Lmg;

    .line 56
    .line 57
    iput-object p0, v0, LM3;->d:Lcom/twntool/auth/AuthManager;

    .line 58
    .line 59
    iput-object p1, v0, LM3;->e:Lmg;

    .line 60
    .line 61
    iput v3, v0, LM3;->h:I

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lmg;->c(Li6;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-ne v0, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    move-object v0, p0

    .line 71
    move-object v1, p1

    .line 72
    :goto_1
    const/4 p1, 0x0

    .line 73
    :try_start_0
    iget-object v2, v0, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    iget-object v4, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 77
    .line 78
    const-string v5, "refresh_token"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    instance-of v5, v4, Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto/16 :goto_a

    .line 93
    .line 94
    :cond_4
    move-object v4, p1

    .line 95
    :goto_2
    :try_start_2
    monitor-exit v2

    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    sget-object v0, LJ3;->c:LJ3;

    .line 99
    .line 100
    goto/16 :goto_9

    .line 101
    .line 102
    :catchall_1
    move-exception v0

    .line 103
    goto/16 :goto_b

    .line 104
    .line 105
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    const/16 v2, 0x3e8

    .line 110
    .line 111
    int-to-long v7, v2

    .line 112
    div-long/2addr v5, v7

    .line 113
    invoke-virtual {v0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/twntool/auth/AuthManager;->p(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    :try_start_3
    const-string v7, "https://twntool.com/auth/refresh"

    .line 122
    .line 123
    const-string v8, "refresh"

    .line 124
    .line 125
    new-instance v9, Lih;

    .line 126
    .line 127
    invoke-direct {v9, v8, v4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const-string v4, "hwid"

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    new-instance v10, Lih;

    .line 137
    .line 138
    invoke-direct {v10, v4, v8}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const-string v4, "ts"

    .line 142
    .line 143
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    new-instance v6, Lih;

    .line 148
    .line 149
    invoke-direct {v6, v4, v5}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const-string v4, "sig"

    .line 153
    .line 154
    new-instance v5, Lih;

    .line 155
    .line 156
    invoke-direct {v5, v4, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    filled-new-array {v9, v10, v6, v5}, [Lih;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v2}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0}, Lcom/twntool/auth/AuthManager;->h()Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 172
    .line 173
    invoke-direct {v5, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v4}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 177
    .line 178
    .line 179
    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

    .line 180
    .line 181
    invoke-virtual {v0, v7, v2, v5}, Lcom/twntool/auth/AuthManager;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)LRd;

    .line 182
    .line 183
    .line 184
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    :try_start_4
    const-string v4, "ok"

    .line 186
    .line 187
    invoke-virtual {v2, v4}, LRd;->j(Ljava/lang/String;)LOd;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    if-eqz v4, :cond_11

    .line 192
    .line 193
    invoke-virtual {v4}, LOd;->a()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-ne v4, v3, :cond_11

    .line 198
    .line 199
    iget-object v4, v0, Lcom/twntool/auth/AuthManager;->j:Ljava/lang/Object;

    .line 200
    .line 201
    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    :try_start_5
    iget-object v5, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 203
    .line 204
    const-string v6, "key"

    .line 205
    .line 206
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    instance-of v6, v5, Ljava/lang/String;

    .line 211
    .line 212
    if-eqz v6, :cond_6

    .line 213
    .line 214
    check-cast v5, Ljava/lang/String;

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :catchall_2
    move-exception v0

    .line 218
    goto/16 :goto_7

    .line 219
    .line 220
    :cond_6
    move-object v5, p1

    .line 221
    :goto_3
    if-eqz v5, :cond_f

    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-nez v5, :cond_7

    .line 228
    .line 229
    goto/16 :goto_5

    .line 230
    .line 231
    :cond_7
    iget-object v3, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 232
    .line 233
    const-string v5, "access_token"

    .line 234
    .line 235
    const-string v6, "access_token"

    .line 236
    .line 237
    invoke-virtual {v2, v6}, LRd;->j(Ljava/lang/String;)LOd;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    if-eqz v6, :cond_8

    .line 242
    .line 243
    invoke-virtual {v6}, LOd;->h()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    if-nez v6, :cond_9

    .line 248
    .line 249
    :cond_8
    iget-object v6, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 250
    .line 251
    const-string v7, "access_token"

    .line 252
    .line 253
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    :cond_9
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    iget-object v3, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 261
    .line 262
    const-string v5, "refresh_token"

    .line 263
    .line 264
    const-string v6, "refresh_token"

    .line 265
    .line 266
    invoke-virtual {v2, v6}, LRd;->j(Ljava/lang/String;)LOd;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    if-eqz v6, :cond_a

    .line 271
    .line 272
    invoke-virtual {v6}, LOd;->h()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    if-nez v6, :cond_b

    .line 277
    .line 278
    :cond_a
    iget-object v6, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 279
    .line 280
    const-string v7, "refresh_token"

    .line 281
    .line 282
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    :cond_b
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    const-string v3, "send_cards"

    .line 290
    .line 291
    invoke-virtual {v2, v3}, LRd;->j(Ljava/lang/String;)LOd;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    if-eqz v3, :cond_c

    .line 296
    .line 297
    iget-object v5, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 298
    .line 299
    const-string v6, "send_cards"

    .line 300
    .line 301
    invoke-virtual {v3}, LOd;->a()Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    :cond_c
    invoke-virtual {v0, v2}, Lcom/twntool/auth/AuthManager;->e(LRd;)V

    .line 313
    .line 314
    .line 315
    sget-object v2, LPk;->a:Lam;

    .line 316
    .line 317
    iget-object v2, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 318
    .line 319
    invoke-static {v2}, LPk;->c(Ljava/util/Map;)V

    .line 320
    .line 321
    .line 322
    iget-object v2, v0, Lcom/twntool/auth/AuthManager;->i:Ljava/util/LinkedHashMap;

    .line 323
    .line 324
    const-string v3, "access_token"

    .line 325
    .line 326
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    instance-of v3, v2, Ljava/lang/String;

    .line 331
    .line 332
    if-eqz v3, :cond_d

    .line 333
    .line 334
    check-cast v2, Ljava/lang/String;

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_d
    move-object v2, p1

    .line 338
    :goto_4
    if-nez v2, :cond_e

    .line 339
    .line 340
    const-string v2, ""

    .line 341
    .line 342
    :cond_e
    const/4 v3, 0x0

    .line 343
    goto :goto_6

    .line 344
    :cond_f
    :goto_5
    const-string v2, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 345
    .line 346
    :goto_6
    :try_start_6
    monitor-exit v4

    .line 347
    if-eqz v3, :cond_10

    .line 348
    .line 349
    sget-object v0, LJ3;->c:LJ3;

    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_10
    iget-object v3, v0, Lcom/twntool/auth/AuthManager;->c:Lcom/twntool/network/ApiClient;

    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v3, v2, v0}, Lcom/twntool/network/ApiClient;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    sget-object v0, LJ3;->a:LJ3;

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :goto_7
    monitor-exit v4

    .line 365
    throw v0

    .line 366
    :cond_11
    iget-object v0, v0, Lcom/twntool/auth/AuthManager;->k:Ljava/util/Set;

    .line 367
    .line 368
    const-string v3, "error"

    .line 369
    .line 370
    invoke-virtual {v2, v3}, LRd;->j(Ljava/lang/String;)LOd;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    if-eqz v2, :cond_12

    .line 375
    .line 376
    invoke-virtual {v2}, LOd;->h()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    goto :goto_8

    .line 381
    :cond_12
    move-object v2, p1

    .line 382
    :goto_8
    invoke-static {v0, v2}, LY4;->u0(Ljava/lang/Iterable;Ljava/io/Serializable;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_13

    .line 387
    .line 388
    sget-object v0, LJ3;->b:LJ3;

    .line 389
    .line 390
    goto :goto_9

    .line 391
    :cond_13
    sget-object v0, LJ3;->c:LJ3;

    .line 392
    .line 393
    goto :goto_9

    .line 394
    :catch_0
    sget-object v0, LJ3;->c:LJ3;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 395
    .line 396
    :goto_9
    invoke-virtual {v1, p1}, Lmg;->d(Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    return-object v0

    .line 400
    :goto_a
    :try_start_7
    monitor-exit v2

    .line 401
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 402
    :goto_b
    invoke-virtual {v1, p1}, Lmg;->d(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    throw v0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)LF3;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->i()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const/16 v3, 0x3e8

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    div-long/2addr v1, v3

    .line 15
    new-instance v3, Lf3;

    .line 16
    .line 17
    invoke-direct {v3}, Lf3;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "token"

    .line 21
    .line 22
    invoke-virtual {v3, v4, v0}, Lf3;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v4, "hwid"

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v3, v4, v5}, Lf3;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v4, "ts"

    .line 35
    .line 36
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v3, v4, v5}, Lf3;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/twntool/auth/AuthManager;->k()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/twntool/auth/AuthManager;->p(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "sig"

    .line 52
    .line 53
    invoke-virtual {v3, v1, v0}, Lf3;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "path"

    .line 57
    .line 58
    invoke-virtual {v3, v0, p1}, Lf3;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, LNa;

    .line 62
    .line 63
    iget-object v0, v3, Lf3;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    iget-object v1, v3, Lf3;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {p1, v0, v1}, LNa;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, LAa;

    .line 75
    .line 76
    invoke-direct {v0}, LAa;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "https://twntool.com/PHP/tool_image.php"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, LAa;->d(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "POST"

    .line 85
    .line 86
    invoke-virtual {v0, v1, p1}, LAa;->c(Ljava/lang/String;Los;)V

    .line 87
    .line 88
    .line 89
    const-string p1, "Accept"

    .line 90
    .line 91
    const-string v1, "image/png, application/json"

    .line 92
    .line 93
    invoke-virtual {v0, p1, v1}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p1, "User-Agent"

    .line 97
    .line 98
    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

    .line 99
    .line 100
    invoke-virtual {v0, p1, v1}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    if-eqz p2, :cond_1

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_0

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const-string p1, "If-None-Match"

    .line 113
    .line 114
    invoke-virtual {v0, p1, p2}, LAa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_0
    invoke-virtual {v0}, LAa;->a()Li2;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/twntool/auth/AuthManager;->f:Lam;

    .line 122
    .line 123
    invoke-virtual {v0}, Lam;->a()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, LJg;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    new-instance v1, LWh;

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    invoke-direct {v1, v0, p1, v2}, LWh;-><init>(LJg;Li2;Z)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, LWh;->c()LTi;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const/4 v0, 0x0

    .line 143
    const/16 v1, 0x130

    .line 144
    .line 145
    iget v3, p1, LTi;->d:I

    .line 146
    .line 147
    if-ne v3, v1, :cond_2

    .line 148
    .line 149
    :try_start_0
    new-instance v1, LF3;

    .line 150
    .line 151
    invoke-direct {v1, v0, p2}, LF3;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    invoke-static {p1, v0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    return-object v1

    .line 158
    :catchall_0
    move-exception p2

    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_2
    :try_start_1
    invoke-virtual {p1}, LTi;->d()Z

    .line 162
    .line 163
    .line 164
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-object v1, p1, LTi;->g:Lci;

    .line 166
    .line 167
    if-nez p2, :cond_8

    .line 168
    .line 169
    const-string p2, ""

    .line 170
    .line 171
    if-eqz v1, :cond_3

    .line 172
    .line 173
    :try_start_2
    invoke-virtual {v1}, Lci;->m()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :catch_0
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/twntool/auth/AuthManager;->d:LZb;

    .line 178
    .line 179
    const-class v2, LRd;

    .line 180
    .line 181
    invoke-virtual {v1, p2, v2}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, LRd;

    .line 186
    .line 187
    if-eqz p2, :cond_5

    .line 188
    .line 189
    const-string v1, "error"

    .line 190
    .line 191
    invoke-virtual {p2, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_5

    .line 196
    .line 197
    invoke-virtual {v1}, LOd;->h()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    if-nez v1, :cond_4

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_4
    move-object v0, v1

    .line 205
    goto :goto_2

    .line 206
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 207
    .line 208
    const-string v1, "msg"

    .line 209
    .line 210
    invoke-virtual {p2, v1}, LRd;->j(Ljava/lang/String;)LOd;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    if-eqz p2, :cond_6

    .line 215
    .line 216
    invoke-virtual {p2}, LOd;->h()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :catch_1
    :cond_6
    :goto_2
    :try_start_4
    new-instance p2, Ljava/lang/RuntimeException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    .line 222
    const-string v1, "HTTP "

    .line 223
    .line 224
    if-eqz v0, :cond_7

    .line 225
    .line 226
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, " ("

    .line 235
    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v0, ")"

    .line 243
    .line 244
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    goto :goto_3

    .line 252
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :goto_3
    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p2

    .line 268
    :cond_8
    if-eqz v1, :cond_9

    .line 269
    .line 270
    invoke-virtual {v1}, Lci;->a()[B

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    goto :goto_4

    .line 275
    :cond_9
    new-array p2, v2, [B

    .line 276
    .line 277
    :goto_4
    array-length v1, p2

    .line 278
    if-eqz v1, :cond_a

    .line 279
    .line 280
    new-instance v1, LF3;

    .line 281
    .line 282
    const-string v2, "ETag"

    .line 283
    .line 284
    invoke-static {p1, v2}, LTi;->a(LTi;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-direct {v1, p2, v2}, LF3;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 289
    .line 290
    .line 291
    invoke-static {p1, v0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    return-object v1

    .line 295
    :cond_a
    :try_start_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 296
    .line 297
    const-string v0, "imagem vazia"

    .line 298
    .line 299
    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 303
    :goto_5
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 304
    :catchall_1
    move-exception v0

    .line 305
    invoke-static {p1, p2}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    .line 310
    .line 311
    const-string p2, "NOT_AUTHENTICATED"

    .line 312
    .line 313
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p1
.end method
