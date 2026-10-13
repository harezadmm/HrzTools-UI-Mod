.class public final Lnp;
.super LZl;
.source "SourceFile"

# interfaces
.implements LAb;


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/twntool/android/bridge/TwnBridge;


# direct methods
.method public constructor <init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, LZl;-><init>(ILi6;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p1, p2}, Lnp;->g(Ljava/lang/Object;Li6;)Li6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lnp;

    .line 10
    .line 11
    sget-object p2, Ly1;->r:Ly1;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lnp;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final g(Ljava/lang/Object;Li6;)Li6;
    .locals 2

    .line 1
    new-instance v0, Lnp;

    .line 2
    .line 3
    iget-object v1, p0, Lnp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lnp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lnp;->f:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lx6;->a:Lx6;

    .line 2
    .line 3
    iget v1, p0, Lnp;->e:I

    .line 4
    .line 5
    sget-object v2, Ly1;->r:Ly1;

    .line 6
    .line 7
    const-string v3, "e"

    .line 8
    .line 9
    const-string v4, "send_err"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v6, p0, Lnp;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const-string v8, "js_on_regata_use"

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-ne v1, v7, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lnp;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lw6;

    .line 24
    .line 25
    :try_start_0
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Lwm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :catch_0
    move-exception p1

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lnp;->f:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lw6;

    .line 49
    .line 50
    iget-object v1, v6, Lcom/twntool/android/bridge/TwnBridge;->a:Lcom/twntool/auth/AuthManager;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/twntool/auth/AuthManager;->o()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    const-string p1, "NOT_AUTHENTICATED"

    .line 59
    .line 60
    invoke-virtual {v6, v3, p1, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    .line 65
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v6, v8, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_2
    iget-object v1, v6, Lcom/twntool/android/bridge/TwnBridge;->a:Lcom/twntool/auth/AuthManager;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/twntool/auth/AuthManager;->j()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v9, "township"

    .line 80
    .line 81
    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    const-string p1, "tool_blocked"

    .line 88
    .line 89
    invoke-virtual {v6, v3, p1, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    .line 94
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v6, v8, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    :cond_3
    :try_start_1
    const-string v1, "w"

    .line 103
    .line 104
    const-string v9, "close_app"

    .line 105
    .line 106
    invoke-virtual {v6, v1, v9, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-wide/16 v9, 0x2710

    .line 110
    .line 111
    new-instance v1, Lmp;

    .line 112
    .line 113
    invoke-direct {v1, v6, v5}, Lmp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lnp;->f:Ljava/lang/Object;

    .line 117
    .line 118
    iput v7, p0, Lnp;->e:I

    .line 119
    .line 120
    invoke-static {v9, v10, v1, p0}, Los;->G(JLAb;Li6;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v0, :cond_4

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_4
    :goto_0
    check-cast p1, LFk;

    .line 128
    .line 129
    invoke-virtual {p1}, LFk;->d()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    iget-object v0, v6, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/twntool/game/AppState;->c:Ljava/util/LinkedHashSet;

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 140
    .line 141
    .line 142
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-virtual {p1}, LFk;->a()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v6, v8, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_5
    invoke-virtual {v6, v3, v4, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 160
    .line 161
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v6, v8, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lwm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {v6, v3, v4, p1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 177
    .line 178
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v6, v8, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catchall_1
    move-exception p1

    .line 187
    goto :goto_4

    .line 188
    :goto_2
    throw p1

    .line 189
    :catch_1
    const-string p1, "timeout: permita o su e tente novamente"

    .line 190
    .line 191
    invoke-virtual {v6, v3, v4, p1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 195
    .line 196
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v6, v8, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    .line 202
    .line 203
    :goto_3
    return-object v2

    .line 204
    :goto_4
    :try_start_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 205
    .line 206
    filled-new-array {v0, v5}, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v6, v8, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :catchall_2
    move-exception v0

    .line 215
    invoke-static {v0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 216
    .line 217
    .line 218
    :goto_5
    throw p1
.end method
