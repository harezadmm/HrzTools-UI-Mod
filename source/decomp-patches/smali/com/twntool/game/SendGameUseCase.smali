.class public final Lcom/twntool/game/SendGameUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LXi;

.field public final b:Lcom/twntool/network/ApiClient;

.field public final c:Lcom/twntool/game/AppState;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LXi;Lcom/twntool/network/ApiClient;Lcom/twntool/game/AppState;)V
    .locals 1

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "api"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "state"

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
    iput-object p1, p0, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/twntool/game/SendGameUseCase;->b:Lcom/twntool/network/ApiClient;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/twntool/game/SendGameUseCase;->c:Lcom/twntool/game/AppState;

    .line 24
    .line 25
    const-string p1, "/sdcard/twn_temp"

    .line 26
    .line 27
    iput-object p1, p0, Lcom/twntool/game/SendGameUseCase;->d:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(LJb;[BLi6;)Ljava/lang/Object;
    .locals 12

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p1, LFk;

    .line 4
    .line 5
    const-string v2, "no_data"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v4, 0xa

    .line 11
    .line 12
    move-object v0, p1

    .line 13
    invoke-direct/range {v0 .. v5}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/twntool/game/SendGameUseCase;->b:Lcom/twntool/network/ApiClient;

    .line 18
    .line 19
    iget-object v0, p1, LJb;->a:LLb;

    .line 20
    .line 21
    invoke-virtual {v0}, LLb;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget-object v8, p1, LJb;->e:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string v0, "game"

    .line 31
    .line 32
    invoke-static {v7, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "filename"

    .line 36
    .line 37
    invoke-static {v8, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/twntool/network/ApiClient;->m([B)[B

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    invoke-static {v9}, Lcom/twntool/local/LocalCodec;->encode([B)[B

    .line 47
    .line 48
    .line 49
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    # LocalCodec.encode already performs the complete Township write cycle:
    # write plaintext, launch the game, wait for its native re-encode, stop it,
    # and read the encrypted save back. Running d() afterwards repeats the
    # write through the legacy pipeline and can report a false failure even
    # though the verified save is already installed.
    new-instance p1, LFk;

    iget-object p0, p0, Lcom/twntool/game/SendGameUseCase;->c:Lcom/twntool/game/AppState;

    iget-object v1, p0, Lcom/twntool/game/AppState;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    new-instance p2, LFk;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    const-string p1, "erro na VPS"

    .line 65
    .line 66
    :cond_1
    const-string p3, "encode: "

    .line 67
    .line 68
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v1, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    const/16 v4, 0xa

    .line 76
    .line 77
    move-object v0, p2

    .line 78
    invoke-direct/range {v0 .. v5}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 79
    .line 80
    .line 81
    return-object p2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Li6;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p3, LCk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, LCk;

    .line 7
    .line 8
    iget v1, v0, LCk;->h:I

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
    iput v1, v0, LCk;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, LCk;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, LCk;-><init>(Lcom/twntool/game/SendGameUseCase;Li6;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, LCk;->f:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lx6;->a:Lx6;

    .line 28
    .line 29
    iget v2, v0, LCk;->h:I

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    const/4 v4, 0x3

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    if-eq v2, v6, :cond_4

    .line 39
    .line 40
    if-eq v2, v5, :cond_3

    .line 41
    .line 42
    if-eq v2, v4, :cond_2

    .line 43
    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    iget-object p1, v0, LCk;->e:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p2, v0, LCk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 62
    .line 63
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    iget-object p1, v0, LCk;->e:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p2, v0, LCk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 71
    .line 72
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object p1, v0, LCk;->e:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p2, v0, LCk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 79
    .line 80
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v2, "stat -c \'%U:%G\' "

    .line 90
    .line 91
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iput-object p0, v0, LCk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 102
    .line 103
    iput-object p1, v0, LCk;->e:Ljava/lang/String;

    .line 104
    .line 105
    iput v6, v0, LCk;->h:I

    .line 106
    .line 107
    iget-object p3, p0, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 108
    .line 109
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 110
    .line 111
    invoke-virtual {p3, p2, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    if-ne p3, v1, :cond_6

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_6
    move-object p2, p0

    .line 119
    :goto_1
    check-cast p3, LSk;

    .line 120
    .line 121
    iget-object p3, p3, LSk;->b:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {p3}, LGl;->Y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-nez v2, :cond_7

    .line 136
    .line 137
    move-object p3, v7

    .line 138
    :cond_7
    if-eqz p3, :cond_8

    .line 139
    .line 140
    iget-object v2, p2, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 141
    .line 142
    const-string v6, "chown "

    .line 143
    .line 144
    const-string v8, " "

    .line 145
    .line 146
    invoke-static {v6, p3, v8, p1}, LS8;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    iput-object p2, v0, LCk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 151
    .line 152
    iput-object p1, v0, LCk;->e:Ljava/lang/String;

    .line 153
    .line 154
    iput v5, v0, LCk;->h:I

    .line 155
    .line 156
    check-cast v2, Lcom/twntool/root/RootManagerImpl;

    .line 157
    .line 158
    invoke-virtual {v2, p3, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    if-ne p3, v1, :cond_8

    .line 163
    .line 164
    return-object v1

    .line 165
    :cond_8
    :goto_2
    iget-object p3, p2, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 166
    .line 167
    const-string v2, "chmod 660 "

    .line 168
    .line 169
    invoke-static {v2, p1}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iput-object p2, v0, LCk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 174
    .line 175
    iput-object p1, v0, LCk;->e:Ljava/lang/String;

    .line 176
    .line 177
    iput v4, v0, LCk;->h:I

    .line 178
    .line 179
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 180
    .line 181
    invoke-virtual {p3, v2, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    if-ne p3, v1, :cond_9

    .line 186
    .line 187
    return-object v1

    .line 188
    :cond_9
    :goto_3
    iget-object p2, p2, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 189
    .line 190
    const-string p3, "restorecon "

    .line 191
    .line 192
    const-string v2, " 2>/dev/null || true"

    .line 193
    .line 194
    invoke-static {p3, p1, v2}, LS8;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iput-object v7, v0, LCk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 199
    .line 200
    iput-object v7, v0, LCk;->e:Ljava/lang/String;

    .line 201
    .line 202
    iput v3, v0, LCk;->h:I

    .line 203
    .line 204
    check-cast p2, Lcom/twntool/root/RootManagerImpl;

    .line 205
    .line 206
    invoke-virtual {p2, p1, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-ne p1, v1, :cond_a

    .line 211
    .line 212
    return-object v1

    .line 213
    :cond_a
    :goto_4
    sget-object p1, Ly1;->r:Ly1;

    .line 214
    .line 215
    return-object p1
.end method

.method public final c(LJb;Lfp;Li6;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p3, LDk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, LDk;

    .line 7
    .line 8
    iget v1, v0, LDk;->k:I

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
    iput v1, v0, LDk;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, LDk;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, LDk;-><init>(Lcom/twntool/game/SendGameUseCase;Li6;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, LDk;->h:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lx6;->a:Lx6;

    .line 28
    .line 29
    iget v2, v0, LDk;->k:I

    .line 30
    .line 31
    packed-switch v2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :pswitch_0
    iget-object p1, v0, LDk;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, LJb;

    .line 45
    .line 46
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :pswitch_1
    iget-object p1, v0, LDk;->g:Ljava/util/Iterator;

    .line 52
    .line 53
    iget-object p2, v0, LDk;->f:Lwb;

    .line 54
    .line 55
    iget-object v2, v0, LDk;->e:LJb;

    .line 56
    .line 57
    iget-object v3, v0, LDk;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, Lcom/twntool/game/SendGameUseCase;

    .line 60
    .line 61
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object p3, p2

    .line 65
    move-object p2, v2

    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :pswitch_2
    iget-object p1, v0, LDk;->f:Lwb;

    .line 69
    .line 70
    iget-object p2, v0, LDk;->e:LJb;

    .line 71
    .line 72
    iget-object v2, v0, LDk;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lcom/twntool/game/SendGameUseCase;

    .line 75
    .line 76
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :pswitch_3
    iget-object p1, v0, LDk;->f:Lwb;

    .line 82
    .line 83
    iget-object p2, v0, LDk;->e:LJb;

    .line 84
    .line 85
    iget-object v2, v0, LDk;->d:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Lcom/twntool/game/SendGameUseCase;

    .line 88
    .line 89
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :pswitch_4
    iget-object p1, v0, LDk;->f:Lwb;

    .line 95
    .line 96
    iget-object p2, v0, LDk;->e:LJb;

    .line 97
    .line 98
    iget-object v2, v0, LDk;->d:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v2, Lcom/twntool/game/SendGameUseCase;

    .line 101
    .line 102
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :pswitch_5
    iget-object p2, v0, LDk;->f:Lwb;

    .line 107
    .line 108
    iget-object p1, v0, LDk;->e:LJb;

    .line 109
    .line 110
    iget-object v2, v0, LDk;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Lcom/twntool/game/SendGameUseCase;

    .line 113
    .line 114
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_6
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iput-object p0, v0, LDk;->d:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object p1, v0, LDk;->e:LJb;

    .line 124
    .line 125
    iput-object p2, v0, LDk;->f:Lwb;

    .line 126
    .line 127
    const/4 p3, 0x1

    .line 128
    iput p3, v0, LDk;->k:I

    .line 129
    .line 130
    iget-object p3, p0, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 131
    .line 132
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 133
    .line 134
    invoke-virtual {p3, v0}, Lcom/twntool/root/RootManagerImpl;->l(Li6;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    if-ne p3, v1, :cond_1

    .line 139
    .line 140
    return-object v1

    .line 141
    :cond_1
    move-object v2, p0

    .line 142
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    .line 143
    .line 144
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    if-nez p3, :cond_2

    .line 149
    .line 150
    new-instance p1, LFk;

    .line 151
    .line 152
    const-string v5, "no_root"

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v4, 0x0

    .line 157
    const/16 v7, 0xa

    .line 158
    .line 159
    move-object v3, p1

    .line 160
    invoke-direct/range {v3 .. v8}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 161
    .line 162
    .line 163
    return-object p1

    .line 164
    :cond_2
    iget-object p3, p1, LJb;->b:Ljava/lang/String;

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v4, "Parando "

    .line 169
    .line 170
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p3, "..."

    .line 177
    .line 178
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-interface {p2, p3}, Lwb;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    iget-object p3, v2, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 189
    .line 190
    iput-object v2, v0, LDk;->d:Ljava/lang/Object;

    .line 191
    .line 192
    iput-object p1, v0, LDk;->e:LJb;

    .line 193
    .line 194
    iput-object p2, v0, LDk;->f:Lwb;

    .line 195
    .line 196
    const/4 v3, 0x2

    .line 197
    iput v3, v0, LDk;->k:I

    .line 198
    .line 199
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 200
    .line 201
    iget-object v3, p1, LJb;->c:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p3, v3, v0}, Lcom/twntool/root/RootManagerImpl;->j(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    if-ne p3, v1, :cond_3

    .line 208
    .line 209
    return-object v1

    .line 210
    :cond_3
    move-object v9, p2

    .line 211
    move-object p2, p1

    .line 212
    move-object p1, v9

    .line 213
    :goto_2
    const-string p3, "Limpando dados internos..."

    .line 214
    .line 215
    invoke-interface {p1, p3}, Lwb;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    iget-object p3, v2, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 219
    .line 220
    iget-object v3, p2, LJb;->c:Ljava/lang/String;

    .line 221
    .line 222
    const-string v4, "pm clear "

    .line 223
    .line 224
    invoke-static {v4, v3}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    iput-object v2, v0, LDk;->d:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object p2, v0, LDk;->e:LJb;

    .line 231
    .line 232
    iput-object p1, v0, LDk;->f:Lwb;

    .line 233
    .line 234
    const/4 v4, 0x3

    .line 235
    iput v4, v0, LDk;->k:I

    .line 236
    .line 237
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 238
    .line 239
    invoke-virtual {p3, v3, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p3

    .line 243
    if-ne p3, v1, :cond_4

    .line 244
    .line 245
    return-object v1

    .line 246
    :cond_4
    :goto_3
    iget-object p3, v2, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 247
    .line 248
    iget-object v3, p2, LJb;->c:Ljava/lang/String;

    .line 249
    .line 250
    const-string v4, "rm -rf /data/data/"

    .line 251
    .line 252
    const-string v5, "/* 2>/dev/null || true"

    .line 253
    .line 254
    invoke-static {v4, v3, v5}, LS8;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    iput-object v2, v0, LDk;->d:Ljava/lang/Object;

    .line 259
    .line 260
    iput-object p2, v0, LDk;->e:LJb;

    .line 261
    .line 262
    iput-object p1, v0, LDk;->f:Lwb;

    .line 263
    .line 264
    const/4 v4, 0x4

    .line 265
    iput v4, v0, LDk;->k:I

    .line 266
    .line 267
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 268
    .line 269
    invoke-virtual {p3, v3, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p3

    .line 273
    if-ne p3, v1, :cond_5

    .line 274
    .line 275
    return-object v1

    .line 276
    :cond_5
    :goto_4
    const-string p3, "Limpando dados externos..."

    .line 277
    .line 278
    invoke-interface {p1, p3}, Lwb;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    iget-object p3, p2, LJb;->c:Ljava/lang/String;

    .line 282
    .line 283
    const-string v3, "/sdcard/Android/data/"

    .line 284
    .line 285
    invoke-static {v3, p3}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p3

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v4, "/sdcard/Android/obb/"

    .line 292
    .line 293
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v4, p2, LJb;->c:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    filled-new-array {p3, v3}, [Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p3

    .line 309
    invoke-static {p3}, LZ4;->l0([Ljava/lang/Object;)Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object p3

    .line 313
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object p3

    .line 317
    move-object v3, v2

    .line 318
    move-object v9, p3

    .line 319
    move-object p3, p1

    .line 320
    move-object p1, v9

    .line 321
    :cond_6
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_7

    .line 326
    .line 327
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    check-cast v2, Ljava/lang/String;

    .line 332
    .line 333
    iget-object v4, v3, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 334
    .line 335
    const-string v5, "rm -rf "

    .line 336
    .line 337
    const-string v6, " 2>/dev/null || true"

    .line 338
    .line 339
    invoke-static {v5, v2, v6}, LS8;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    iput-object v3, v0, LDk;->d:Ljava/lang/Object;

    .line 344
    .line 345
    iput-object p2, v0, LDk;->e:LJb;

    .line 346
    .line 347
    iput-object p3, v0, LDk;->f:Lwb;

    .line 348
    .line 349
    iput-object p1, v0, LDk;->g:Ljava/util/Iterator;

    .line 350
    .line 351
    const/4 v5, 0x5

    .line 352
    iput v5, v0, LDk;->k:I

    .line 353
    .line 354
    check-cast v4, Lcom/twntool/root/RootManagerImpl;

    .line 355
    .line 356
    invoke-virtual {v4, v2, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    if-ne v2, v1, :cond_6

    .line 361
    .line 362
    return-object v1

    .line 363
    :cond_7
    const-string p1, "Reabrindo o jogo..."

    .line 364
    .line 365
    invoke-interface {p3, p1}, Lwb;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    iget-object p1, v3, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 369
    .line 370
    iget-object p3, p2, LJb;->c:Ljava/lang/String;

    .line 371
    .line 372
    iput-object p2, v0, LDk;->d:Ljava/lang/Object;

    .line 373
    .line 374
    const/4 v2, 0x0

    .line 375
    iput-object v2, v0, LDk;->e:LJb;

    .line 376
    .line 377
    iput-object v2, v0, LDk;->f:Lwb;

    .line 378
    .line 379
    iput-object v2, v0, LDk;->g:Ljava/util/Iterator;

    .line 380
    .line 381
    const/4 v2, 0x6

    .line 382
    iput v2, v0, LDk;->k:I

    .line 383
    .line 384
    check-cast p1, Lcom/twntool/root/RootManagerImpl;

    .line 385
    .line 386
    invoke-virtual {p1, p3, v0}, Lcom/twntool/root/RootManagerImpl;->m(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    if-ne p1, v1, :cond_8

    .line 391
    .line 392
    return-object v1

    .line 393
    :cond_8
    move-object p1, p2

    .line 394
    :goto_6
    new-instance p2, LFk;

    .line 395
    .line 396
    iget-object p1, p1, LJb;->b:Ljava/lang/String;

    .line 397
    .line 398
    const-string p3, "Nova conta preparada para "

    .line 399
    .line 400
    const-string v0, "."

    .line 401
    .line 402
    invoke-static {p3, p1, v0}, LS8;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    const/4 v1, 0x0

    .line 407
    const/4 v2, 0x0

    .line 408
    const/4 v5, 0x1

    .line 409
    const/4 v4, 0x6

    .line 410
    move-object v0, p2

    .line 411
    invoke-direct/range {v0 .. v5}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 412
    .line 413
    .line 414
    return-object p2

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(LJb;[BLi6;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    instance-of v3, v1, LEk;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    move-object v3, v1

    .line 11
    check-cast v3, LEk;

    .line 12
    .line 13
    iget v4, v3, LEk;->o:I

    .line 14
    .line 15
    const/high16 v5, -0x80000000

    .line 16
    .line 17
    and-int v6, v4, v5

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    .line 21
    sub-int/2addr v4, v5

    .line 22
    iput v4, v3, LEk;->o:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, LEk;

    .line 26
    .line 27
    invoke-direct {v3, v0, v1}, LEk;-><init>(Lcom/twntool/game/SendGameUseCase;Li6;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v1, v3, LEk;->m:Ljava/lang/Object;

    .line 31
    .line 32
    sget-object v4, Lx6;->a:Lx6;

    .line 33
    .line 34
    iget v5, v3, LEk;->o:I

    .line 35
    .line 36
    const-string v6, "mkdir -p "

    .line 37
    .line 38
    const-string v7, "/"

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    packed-switch v5, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :pswitch_0
    iget-object v2, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 53
    .line 54
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_11

    .line 58
    .line 59
    :pswitch_1
    iget-object v2, v3, LEk;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Ljava/lang/String;

    .line 62
    .line 63
    iget-object v5, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 64
    .line 65
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_f

    .line 69
    .line 70
    :pswitch_2
    iget-object v2, v3, LEk;->g:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v5, v3, LEk;->f:Ljava/io/Serializable;

    .line 73
    .line 74
    check-cast v5, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v6, v3, LEk;->e:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v6, LJb;

    .line 79
    .line 80
    iget-object v7, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 81
    .line 82
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_e

    .line 86
    .line 87
    :pswitch_3
    iget-object v2, v3, LEk;->j:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v5, v3, LEk;->h:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v6, v3, LEk;->g:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v7, v3, LEk;->f:Ljava/io/Serializable;

    .line 94
    .line 95
    check-cast v7, Ljava/lang/String;

    .line 96
    .line 97
    iget-object v9, v3, LEk;->e:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v9, LJb;

    .line 100
    .line 101
    iget-object v10, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 102
    .line 103
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_c

    .line 107
    .line 108
    :pswitch_4
    iget-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v6, v3, LEk;->h:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v7, v3, LEk;->g:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 117
    .line 118
    check-cast v9, Ljava/lang/String;

    .line 119
    .line 120
    iget-object v10, v3, LEk;->e:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v10, LJb;

    .line 123
    .line 124
    iget-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 125
    .line 126
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_b

    .line 130
    .line 131
    :pswitch_5
    iget-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v6, v3, LEk;->h:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v7, v3, LEk;->g:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 140
    .line 141
    check-cast v9, Ljava/lang/String;

    .line 142
    .line 143
    iget-object v10, v3, LEk;->e:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v10, LJb;

    .line 146
    .line 147
    iget-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 148
    .line 149
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :pswitch_6
    iget-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v7, v3, LEk;->h:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v9, v3, LEk;->g:Ljava/lang/String;

    .line 161
    .line 162
    iget-object v10, v3, LEk;->f:Ljava/io/Serializable;

    .line 163
    .line 164
    check-cast v10, Ljava/lang/String;

    .line 165
    .line 166
    iget-object v11, v3, LEk;->e:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v11, LJb;

    .line 169
    .line 170
    iget-object v12, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 171
    .line 172
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    move-object/from16 v19, v12

    .line 176
    .line 177
    move-object v12, v11

    .line 178
    move-object/from16 v11, v19

    .line 179
    .line 180
    goto/16 :goto_9

    .line 181
    .line 182
    :pswitch_7
    iget-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v9, v3, LEk;->h:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v10, v3, LEk;->g:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v11, v3, LEk;->f:Ljava/io/Serializable;

    .line 191
    .line 192
    check-cast v11, [B

    .line 193
    .line 194
    iget-object v12, v3, LEk;->e:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v12, LJb;

    .line 197
    .line 198
    iget-object v13, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 199
    .line 200
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_8

    .line 204
    .line 205
    :pswitch_8
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_7

    .line 209
    .line 210
    :pswitch_9
    iget-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 213
    .line 214
    iget-object v6, v3, LEk;->h:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v7, v3, LEk;->g:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 219
    .line 220
    check-cast v9, Ljava/lang/String;

    .line 221
    .line 222
    iget-object v10, v3, LEk;->e:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v10, LJb;

    .line 225
    .line 226
    iget-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 227
    .line 228
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_6

    .line 232
    .line 233
    :pswitch_a
    iget-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 234
    .line 235
    iget-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v6, v3, LEk;->h:Ljava/lang/String;

    .line 238
    .line 239
    iget-object v7, v3, LEk;->g:Ljava/lang/String;

    .line 240
    .line 241
    iget-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 242
    .line 243
    check-cast v9, Ljava/lang/String;

    .line 244
    .line 245
    iget-object v10, v3, LEk;->e:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v10, LJb;

    .line 248
    .line 249
    iget-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 250
    .line 251
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_5

    .line 255
    .line 256
    :pswitch_b
    iget-object v2, v3, LEk;->l:Ljava/lang/String;

    .line 257
    .line 258
    iget-object v5, v3, LEk;->k:Ljava/lang/String;

    .line 259
    .line 260
    iget-object v9, v3, LEk;->j:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v10, v3, LEk;->h:Ljava/lang/String;

    .line 263
    .line 264
    iget-object v11, v3, LEk;->g:Ljava/lang/String;

    .line 265
    .line 266
    iget-object v12, v3, LEk;->f:Ljava/io/Serializable;

    .line 267
    .line 268
    check-cast v12, [B

    .line 269
    .line 270
    iget-object v13, v3, LEk;->e:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v13, LJb;

    .line 273
    .line 274
    iget-object v14, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 275
    .line 276
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :pswitch_c
    iget-object v5, v3, LEk;->f:Ljava/io/Serializable;

    .line 282
    .line 283
    check-cast v5, [B

    .line 284
    .line 285
    iget-object v9, v3, LEk;->e:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v9, LJb;

    .line 288
    .line 289
    iget-object v10, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 290
    .line 291
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    move-object/from16 v19, v9

    .line 295
    .line 296
    move-object v9, v5

    .line 297
    move-object/from16 v5, v19

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :pswitch_d
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 304
    .line 305
    iput-object v0, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 306
    .line 307
    move-object/from16 v5, p1

    .line 308
    .line 309
    iput-object v5, v3, LEk;->e:Ljava/lang/Object;

    .line 310
    .line 311
    move-object/from16 v9, p2

    .line 312
    .line 313
    iput-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 314
    .line 315
    iput v2, v3, LEk;->o:I

    .line 316
    .line 317
    check-cast v1, Lcom/twntool/root/RootManagerImpl;

    .line 318
    .line 319
    invoke-virtual {v1, v3}, Lcom/twntool/root/RootManagerImpl;->l(Li6;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-ne v1, v4, :cond_1

    .line 324
    .line 325
    return-object v4

    .line 326
    :cond_1
    move-object v10, v0

    .line 327
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-nez v1, :cond_2

    .line 334
    .line 335
    new-instance v1, LFk;

    .line 336
    .line 337
    const-string v13, "no_root"

    .line 338
    .line 339
    const/4 v14, 0x0

    .line 340
    const/16 v16, 0x0

    .line 341
    .line 342
    const/4 v12, 0x0

    .line 343
    const/16 v15, 0xa

    .line 344
    .line 345
    move-object v11, v1

    .line 346
    invoke-direct/range {v11 .. v16}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 347
    .line 348
    .line 349
    return-object v1

    .line 350
    :cond_2
    iget-object v1, v5, LJb;->f:Lsu;

    .line 351
    .line 352
    sget-object v11, LBk;->a:[I

    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    aget v1, v11, v1

    .line 359
    .line 360
    packed-switch v1, :pswitch_data_1

    .line 361
    .line 362
    .line 363
    new-instance v1, Lq5;

    .line 364
    .line 365
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 366
    .line 367
    .line 368
    throw v1

    .line 369
    :pswitch_e
    move-object v1, v8

    .line 370
    goto :goto_2

    .line 371
    :pswitch_f
    iget-object v1, v10, Lcom/twntool/game/SendGameUseCase;->c:Lcom/twntool/game/AppState;

    .line 372
    .line 373
    iget-object v1, v1, Lcom/twntool/game/AppState;->g:Ljava/lang/String;

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :pswitch_10
    iget-object v1, v10, Lcom/twntool/game/SendGameUseCase;->c:Lcom/twntool/game/AppState;

    .line 377
    .line 378
    iget-object v1, v1, Lcom/twntool/game/AppState;->f:Ljava/lang/String;

    .line 379
    .line 380
    :goto_2
    const/16 v11, 0x2f

    .line 381
    .line 382
    if-eqz v1, :cond_3

    .line 383
    .line 384
    new-array v2, v2, [C

    .line 385
    .line 386
    const/4 v12, 0x0

    .line 387
    aput-char v11, v2, v12

    .line 388
    .line 389
    invoke-static {v1, v2}, LGl;->b1(Ljava/lang/String;[C)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    goto :goto_3

    .line 394
    :cond_3
    move-object v1, v8

    .line 395
    :goto_3
    if-eqz v1, :cond_4

    .line 396
    .line 397
    iget-object v2, v5, LJb;->e:Ljava/lang/String;

    .line 398
    .line 399
    invoke-static {v1, v7, v2}, Lrl;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    if-nez v2, :cond_5

    .line 404
    .line 405
    :cond_4
    iget-object v2, v5, LJb;->d:Ljava/lang/String;

    .line 406
    .line 407
    :cond_5
    if-eqz v1, :cond_6

    .line 408
    .line 409
    iget-object v12, v5, LJb;->e:Ljava/lang/String;

    .line 410
    .line 411
    const/16 v13, 0x2e

    .line 412
    .line 413
    invoke-static {v12, v13, v12}, LGl;->V0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v12

    .line 417
    new-instance v13, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v12, ".bak"

    .line 432
    .line 433
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    if-nez v12, :cond_7

    .line 441
    .line 442
    :cond_6
    iget-object v12, v5, LJb;->g:Ljava/lang/String;

    .line 443
    .line 444
    :cond_7
    invoke-static {v2, v11, v2}, LGl;->V0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    sget-object v13, LNb;->a:LJb;

    .line 449
    .line 450
    iget-object v13, v5, LJb;->c:Ljava/lang/String;

    .line 451
    .line 452
    invoke-static {v1, v13}, LNb;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v13

    .line 456
    iget-object v14, v10, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 457
    .line 458
    iput-object v10, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 459
    .line 460
    iput-object v5, v3, LEk;->e:Ljava/lang/Object;

    .line 461
    .line 462
    iput-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 463
    .line 464
    iput-object v1, v3, LEk;->g:Ljava/lang/String;

    .line 465
    .line 466
    iput-object v2, v3, LEk;->h:Ljava/lang/String;

    .line 467
    .line 468
    iput-object v12, v3, LEk;->j:Ljava/lang/String;

    .line 469
    .line 470
    iput-object v11, v3, LEk;->k:Ljava/lang/String;

    .line 471
    .line 472
    iput-object v13, v3, LEk;->l:Ljava/lang/String;

    .line 473
    .line 474
    const/4 v15, 0x2

    .line 475
    iput v15, v3, LEk;->o:I

    .line 476
    .line 477
    check-cast v14, Lcom/twntool/root/RootManagerImpl;

    .line 478
    .line 479
    invoke-virtual {v14, v13, v3}, Lcom/twntool/root/RootManagerImpl;->j(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v14

    .line 483
    if-ne v14, v4, :cond_8

    .line 484
    .line 485
    return-object v4

    .line 486
    :cond_8
    move-object v14, v10

    .line 487
    move-object v10, v2

    .line 488
    move-object v2, v13

    .line 489
    move-object v13, v5

    .line 490
    move-object v5, v11

    .line 491
    move-object v11, v1

    .line 492
    move-object/from16 v19, v12

    .line 493
    .line 494
    move-object v12, v9

    .line 495
    move-object/from16 v9, v19

    .line 496
    .line 497
    :goto_4
    if-eqz v11, :cond_e

    .line 498
    .line 499
    iget-object v1, v13, LJb;->e:Ljava/lang/String;

    .line 500
    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v7, "/."

    .line 510
    .line 511
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v1, ".twntmp"

    .line 518
    .line 519
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    iget-object v6, v14, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 527
    .line 528
    iput-object v14, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 529
    .line 530
    iput-object v13, v3, LEk;->e:Ljava/lang/Object;

    .line 531
    .line 532
    iput-object v10, v3, LEk;->f:Ljava/io/Serializable;

    .line 533
    .line 534
    iput-object v9, v3, LEk;->g:Ljava/lang/String;

    .line 535
    .line 536
    iput-object v5, v3, LEk;->h:Ljava/lang/String;

    .line 537
    .line 538
    iput-object v2, v3, LEk;->j:Ljava/lang/String;

    .line 539
    .line 540
    iput-object v1, v3, LEk;->k:Ljava/lang/String;

    .line 541
    .line 542
    iput-object v8, v3, LEk;->l:Ljava/lang/String;

    .line 543
    .line 544
    const/4 v7, 0x3

    .line 545
    iput v7, v3, LEk;->o:I

    .line 546
    .line 547
    check-cast v6, Lcom/twntool/root/RootManagerImpl;

    .line 548
    .line 549
    invoke-virtual {v6, v1, v12, v3}, Lcom/twntool/root/RootManagerImpl;->s(Ljava/lang/String;[BLi6;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    if-ne v6, v4, :cond_9

    .line 554
    .line 555
    return-object v4

    .line 556
    :cond_9
    move-object v7, v9

    .line 557
    move-object v9, v10

    .line 558
    move-object v10, v13

    .line 559
    move-object v11, v14

    .line 560
    move-object/from16 v19, v2

    .line 561
    .line 562
    move-object v2, v1

    .line 563
    move-object v1, v6

    .line 564
    move-object v6, v5

    .line 565
    move-object/from16 v5, v19

    .line 566
    .line 567
    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    .line 568
    .line 569
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-nez v1, :cond_a

    .line 574
    .line 575
    new-instance v1, LFk;

    .line 576
    .line 577
    const-string v14, "write_err"

    .line 578
    .line 579
    const/4 v15, 0x0

    .line 580
    const/16 v17, 0x0

    .line 581
    .line 582
    const/4 v13, 0x0

    .line 583
    const/16 v16, 0xa

    .line 584
    .line 585
    move-object v12, v1

    .line 586
    invoke-direct/range {v12 .. v17}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 587
    .line 588
    .line 589
    return-object v1

    .line 590
    :cond_a
    iget-object v1, v11, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 591
    .line 592
    const-string v12, "mv -f \""

    .line 593
    .line 594
    const-string v13, "\" \""

    .line 595
    .line 596
    const-string v14, "\""

    .line 597
    .line 598
    invoke-static {v12, v2, v13, v9, v14}, LLj;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v12

    .line 602
    iput-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 603
    .line 604
    iput-object v10, v3, LEk;->e:Ljava/lang/Object;

    .line 605
    .line 606
    iput-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 607
    .line 608
    iput-object v7, v3, LEk;->g:Ljava/lang/String;

    .line 609
    .line 610
    iput-object v6, v3, LEk;->h:Ljava/lang/String;

    .line 611
    .line 612
    iput-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 613
    .line 614
    iput-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 615
    .line 616
    const/4 v13, 0x4

    .line 617
    iput v13, v3, LEk;->o:I

    .line 618
    .line 619
    check-cast v1, Lcom/twntool/root/RootManagerImpl;

    .line 620
    .line 621
    invoke-virtual {v1, v12, v3}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    if-ne v1, v4, :cond_b

    .line 626
    .line 627
    return-object v4

    .line 628
    :cond_b
    :goto_6
    check-cast v1, LSk;

    .line 629
    .line 630
    invoke-virtual {v1}, LSk;->a()Z

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    if-nez v1, :cond_d

    .line 635
    .line 636
    iget-object v1, v11, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 637
    .line 638
    iput-object v8, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 639
    .line 640
    iput-object v8, v3, LEk;->e:Ljava/lang/Object;

    .line 641
    .line 642
    iput-object v8, v3, LEk;->f:Ljava/io/Serializable;

    .line 643
    .line 644
    iput-object v8, v3, LEk;->g:Ljava/lang/String;

    .line 645
    .line 646
    iput-object v8, v3, LEk;->h:Ljava/lang/String;

    .line 647
    .line 648
    iput-object v8, v3, LEk;->j:Ljava/lang/String;

    .line 649
    .line 650
    iput-object v8, v3, LEk;->k:Ljava/lang/String;

    .line 651
    .line 652
    const/4 v5, 0x5

    .line 653
    iput v5, v3, LEk;->o:I

    .line 654
    .line 655
    check-cast v1, Lcom/twntool/root/RootManagerImpl;

    .line 656
    .line 657
    invoke-virtual {v1, v2, v3}, Lcom/twntool/root/RootManagerImpl;->e(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    if-ne v1, v4, :cond_c

    .line 662
    .line 663
    return-object v4

    .line 664
    :cond_c
    :goto_7
    new-instance v1, LFk;

    .line 665
    .line 666
    const-string v7, "copy_err"

    .line 667
    .line 668
    const/4 v8, 0x0

    .line 669
    const/4 v10, 0x0

    .line 670
    const/4 v6, 0x0

    .line 671
    const/16 v9, 0xa

    .line 672
    .line 673
    move-object v5, v1

    .line 674
    invoke-direct/range {v5 .. v10}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 675
    .line 676
    .line 677
    return-object v1

    .line 678
    :cond_d
    move-object v2, v5

    .line 679
    move-object v5, v7

    .line 680
    move-object v7, v9

    .line 681
    move-object v9, v10

    .line 682
    goto/16 :goto_d

    .line 683
    .line 684
    :cond_e
    iget-object v1, v14, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 685
    .line 686
    iget-object v11, v14, Lcom/twntool/game/SendGameUseCase;->d:Ljava/lang/String;

    .line 687
    .line 688
    invoke-static {v6, v11}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v11

    .line 692
    iput-object v14, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 693
    .line 694
    iput-object v13, v3, LEk;->e:Ljava/lang/Object;

    .line 695
    .line 696
    iput-object v12, v3, LEk;->f:Ljava/io/Serializable;

    .line 697
    .line 698
    iput-object v10, v3, LEk;->g:Ljava/lang/String;

    .line 699
    .line 700
    iput-object v9, v3, LEk;->h:Ljava/lang/String;

    .line 701
    .line 702
    iput-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 703
    .line 704
    iput-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 705
    .line 706
    iput-object v8, v3, LEk;->l:Ljava/lang/String;

    .line 707
    .line 708
    const/4 v15, 0x6

    .line 709
    iput v15, v3, LEk;->o:I

    .line 710
    .line 711
    check-cast v1, Lcom/twntool/root/RootManagerImpl;

    .line 712
    .line 713
    invoke-virtual {v1, v11, v3}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    if-ne v1, v4, :cond_f

    .line 718
    .line 719
    return-object v4

    .line 720
    :cond_f
    move-object v11, v12

    .line 721
    move-object v12, v13

    .line 722
    move-object v13, v14

    .line 723
    :goto_8
    iget-object v1, v13, Lcom/twntool/game/SendGameUseCase;->d:Ljava/lang/String;

    .line 724
    .line 725
    iget-object v14, v12, LJb;->e:Ljava/lang/String;

    .line 726
    .line 727
    invoke-static {v1, v7, v14}, Lrl;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    iget-object v7, v13, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 732
    .line 733
    iput-object v13, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 734
    .line 735
    iput-object v12, v3, LEk;->e:Ljava/lang/Object;

    .line 736
    .line 737
    iput-object v10, v3, LEk;->f:Ljava/io/Serializable;

    .line 738
    .line 739
    iput-object v9, v3, LEk;->g:Ljava/lang/String;

    .line 740
    .line 741
    iput-object v5, v3, LEk;->h:Ljava/lang/String;

    .line 742
    .line 743
    iput-object v2, v3, LEk;->j:Ljava/lang/String;

    .line 744
    .line 745
    iput-object v1, v3, LEk;->k:Ljava/lang/String;

    .line 746
    .line 747
    const/4 v14, 0x7

    .line 748
    iput v14, v3, LEk;->o:I

    .line 749
    .line 750
    check-cast v7, Lcom/twntool/root/RootManagerImpl;

    .line 751
    .line 752
    invoke-virtual {v7, v1, v11, v3}, Lcom/twntool/root/RootManagerImpl;->s(Ljava/lang/String;[BLi6;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v7

    .line 756
    if-ne v7, v4, :cond_10

    .line 757
    .line 758
    return-object v4

    .line 759
    :cond_10
    move-object v11, v13

    .line 760
    move-object/from16 v19, v2

    .line 761
    .line 762
    move-object v2, v1

    .line 763
    move-object v1, v7

    .line 764
    move-object v7, v5

    .line 765
    move-object/from16 v5, v19

    .line 766
    .line 767
    :goto_9
    check-cast v1, Ljava/lang/Boolean;

    .line 768
    .line 769
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-nez v1, :cond_11

    .line 774
    .line 775
    new-instance v1, LFk;

    .line 776
    .line 777
    const-string v15, "write_err"

    .line 778
    .line 779
    const/16 v16, 0x0

    .line 780
    .line 781
    const/16 v18, 0x0

    .line 782
    .line 783
    const/4 v14, 0x0

    .line 784
    const/16 v17, 0xa

    .line 785
    .line 786
    move-object v13, v1

    .line 787
    invoke-direct/range {v13 .. v18}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 788
    .line 789
    .line 790
    return-object v1

    .line 791
    :cond_11
    iget-object v1, v11, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 792
    .line 793
    invoke-static {v6, v7}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    iput-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 798
    .line 799
    iput-object v12, v3, LEk;->e:Ljava/lang/Object;

    .line 800
    .line 801
    iput-object v10, v3, LEk;->f:Ljava/io/Serializable;

    .line 802
    .line 803
    iput-object v9, v3, LEk;->g:Ljava/lang/String;

    .line 804
    .line 805
    iput-object v7, v3, LEk;->h:Ljava/lang/String;

    .line 806
    .line 807
    iput-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 808
    .line 809
    iput-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 810
    .line 811
    const/16 v13, 0x8

    .line 812
    .line 813
    iput v13, v3, LEk;->o:I

    .line 814
    .line 815
    check-cast v1, Lcom/twntool/root/RootManagerImpl;

    .line 816
    .line 817
    invoke-virtual {v1, v6, v3}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    if-ne v1, v4, :cond_12

    .line 822
    .line 823
    return-object v4

    .line 824
    :cond_12
    move-object v6, v7

    .line 825
    move-object v7, v9

    .line 826
    move-object v9, v10

    .line 827
    move-object v10, v12

    .line 828
    :goto_a
    iget-object v1, v11, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 829
    .line 830
    iput-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 831
    .line 832
    iput-object v10, v3, LEk;->e:Ljava/lang/Object;

    .line 833
    .line 834
    iput-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 835
    .line 836
    iput-object v7, v3, LEk;->g:Ljava/lang/String;

    .line 837
    .line 838
    iput-object v6, v3, LEk;->h:Ljava/lang/String;

    .line 839
    .line 840
    iput-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 841
    .line 842
    iput-object v2, v3, LEk;->k:Ljava/lang/String;

    .line 843
    .line 844
    const/16 v12, 0x9

    .line 845
    .line 846
    iput v12, v3, LEk;->o:I

    .line 847
    .line 848
    check-cast v1, Lcom/twntool/root/RootManagerImpl;

    .line 849
    .line 850
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 851
    .line 852
    .line 853
    sget-object v12, Lu7;->b:LW6;

    .line 854
    .line 855
    new-instance v13, Laj;

    .line 856
    .line 857
    invoke-direct {v13, v1, v2, v9, v8}, Laj;-><init>(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 858
    .line 859
    .line 860
    invoke-static {v12, v13, v3}, Le4;->M(Lr6;LAb;Li6;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    if-ne v1, v4, :cond_13

    .line 865
    .line 866
    return-object v4

    .line 867
    :cond_13
    :goto_b
    check-cast v1, Ljava/lang/Boolean;

    .line 868
    .line 869
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    if-nez v1, :cond_14

    .line 874
    .line 875
    new-instance v1, LFk;

    .line 876
    .line 877
    const-string v14, "copy_err"

    .line 878
    .line 879
    const/4 v15, 0x0

    .line 880
    const/16 v17, 0x0

    .line 881
    .line 882
    const/4 v13, 0x0

    .line 883
    const/16 v16, 0xa

    .line 884
    .line 885
    move-object v12, v1

    .line 886
    invoke-direct/range {v12 .. v17}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 887
    .line 888
    .line 889
    return-object v1

    .line 890
    :cond_14
    iget-object v1, v11, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 891
    .line 892
    iput-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 893
    .line 894
    iput-object v10, v3, LEk;->e:Ljava/lang/Object;

    .line 895
    .line 896
    iput-object v9, v3, LEk;->f:Ljava/io/Serializable;

    .line 897
    .line 898
    iput-object v7, v3, LEk;->g:Ljava/lang/String;

    .line 899
    .line 900
    iput-object v6, v3, LEk;->h:Ljava/lang/String;

    .line 901
    .line 902
    iput-object v5, v3, LEk;->j:Ljava/lang/String;

    .line 903
    .line 904
    iput-object v8, v3, LEk;->k:Ljava/lang/String;

    .line 905
    .line 906
    const/16 v12, 0xa

    .line 907
    .line 908
    iput v12, v3, LEk;->o:I

    .line 909
    .line 910
    check-cast v1, Lcom/twntool/root/RootManagerImpl;

    .line 911
    .line 912
    invoke-virtual {v1, v2, v3}, Lcom/twntool/root/RootManagerImpl;->e(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v1

    .line 916
    if-ne v1, v4, :cond_15

    .line 917
    .line 918
    return-object v4

    .line 919
    :cond_15
    move-object v2, v5

    .line 920
    move-object v5, v6

    .line 921
    move-object v6, v7

    .line 922
    move-object v7, v9

    .line 923
    move-object v9, v10

    .line 924
    move-object v10, v11

    .line 925
    :goto_c
    move-object v11, v10

    .line 926
    move-object/from16 v19, v6

    .line 927
    .line 928
    move-object v6, v5

    .line 929
    move-object/from16 v5, v19

    .line 930
    .line 931
    :goto_d
    iput-object v11, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 932
    .line 933
    iput-object v9, v3, LEk;->e:Ljava/lang/Object;

    .line 934
    .line 935
    iput-object v5, v3, LEk;->f:Ljava/io/Serializable;

    .line 936
    .line 937
    iput-object v2, v3, LEk;->g:Ljava/lang/String;

    .line 938
    .line 939
    iput-object v8, v3, LEk;->h:Ljava/lang/String;

    .line 940
    .line 941
    iput-object v8, v3, LEk;->j:Ljava/lang/String;

    .line 942
    .line 943
    iput-object v8, v3, LEk;->k:Ljava/lang/String;

    .line 944
    .line 945
    const/16 v1, 0xb

    .line 946
    .line 947
    iput v1, v3, LEk;->o:I

    .line 948
    .line 949
    invoke-virtual {v11, v7, v6, v3}, Lcom/twntool/game/SendGameUseCase;->b(Ljava/lang/String;Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    if-ne v1, v4, :cond_16

    .line 954
    .line 955
    return-object v4

    .line 956
    :cond_16
    move-object v6, v9

    .line 957
    move-object v7, v11

    .line 958
    :goto_e
    iget-object v1, v6, LJb;->f:Lsu;

    .line 959
    .line 960
    sget-object v6, Lsu;->TWN:Lsu;

    .line 961
    .line 962
    if-ne v1, v6, :cond_18

    .line 963
    .line 964
    if-eqz v5, :cond_18

    .line 965
    .line 966
    iget-object v1, v7, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 967
    .line 968
    iput-object v7, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 969
    .line 970
    iput-object v2, v3, LEk;->e:Ljava/lang/Object;

    .line 971
    .line 972
    iput-object v8, v3, LEk;->f:Ljava/io/Serializable;

    .line 973
    .line 974
    iput-object v8, v3, LEk;->g:Ljava/lang/String;

    .line 975
    .line 976
    const/16 v6, 0xc

    .line 977
    .line 978
    iput v6, v3, LEk;->o:I

    .line 979
    .line 980
    check-cast v1, Lcom/twntool/root/RootManagerImpl;

    .line 981
    .line 982
    invoke-virtual {v1, v5, v3}, Lcom/twntool/root/RootManagerImpl;->e(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    if-ne v1, v4, :cond_17

    .line 987
    .line 988
    return-object v4

    .line 989
    :cond_17
    move-object v5, v7

    .line 990
    :goto_f
    move-object v1, v2

    .line 991
    move-object v2, v5

    .line 992
    goto :goto_10

    .line 993
    :cond_18
    move-object v1, v2

    .line 994
    move-object v2, v7

    .line 995
    :goto_10
    iget-object v5, v2, Lcom/twntool/game/SendGameUseCase;->a:LXi;

    .line 996
    .line 997
    iput-object v2, v3, LEk;->d:Lcom/twntool/game/SendGameUseCase;

    .line 998
    .line 999
    iput-object v8, v3, LEk;->e:Ljava/lang/Object;

    .line 1000
    .line 1001
    iput-object v8, v3, LEk;->f:Ljava/io/Serializable;

    .line 1002
    .line 1003
    iput-object v8, v3, LEk;->g:Ljava/lang/String;

    .line 1004
    .line 1005
    const/16 v6, 0xd

    .line 1006
    .line 1007
    iput v6, v3, LEk;->o:I

    .line 1008
    .line 1009
    check-cast v5, Lcom/twntool/root/RootManagerImpl;

    .line 1010
    .line 1011
    invoke-virtual {v5, v1, v3}, Lcom/twntool/root/RootManagerImpl;->m(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    if-ne v1, v4, :cond_19

    .line 1016
    .line 1017
    return-object v4

    .line 1018
    :cond_19
    :goto_11
    new-instance v1, LFk;

    .line 1019
    .line 1020
    iget-object v2, v2, Lcom/twntool/game/SendGameUseCase;->c:Lcom/twntool/game/AppState;

    .line 1021
    .line 1022
    iget-object v4, v2, Lcom/twntool/game/AppState;->e:Ljava/lang/String;

    .line 1023
    .line 1024
    const/4 v5, 0x0

    .line 1025
    const/4 v6, 0x0

    .line 1026
    const/4 v8, 0x1

    .line 1027
    const/16 v7, 0xc

    .line 1028
    .line 1029
    move-object v3, v1

    .line 1030
    invoke-direct/range {v3 .. v8}, LFk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1031
    .line 1032
    .line 1033
    return-object v1

    .line 1034
    nop

    .line 1035
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method
