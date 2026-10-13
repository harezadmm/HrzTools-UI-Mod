.class public final Lwo;
.super LZl;
.source "SourceFile"

# interfaces
.implements LAb;


# instance fields
.field public e:Ljava/lang/String;

.field public f:I

.field public final synthetic g:Lcom/twntool/android/bridge/TwnBridge;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lwo;->h:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lwo;->j:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lwo;->g(Ljava/lang/Object;Li6;)Li6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lwo;

    .line 10
    .line 11
    sget-object p2, Ly1;->r:Ly1;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lwo;->n(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lwo;

    .line 2
    .line 3
    iget-object v0, p0, Lwo;->h:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lwo;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 8
    .line 9
    invoke-direct {p1, v2, v0, v1, p2}, Lwo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lx6;->a:Lx6;

    .line 2
    .line 3
    iget v1, p0, Lwo;->f:I

    .line 4
    .line 5
    sget-object v2, Ly1;->r:Ly1;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, "e"

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-ne v1, v5, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lwo;->e:Ljava/lang/String;

    .line 16
    .line 17
    :try_start_0
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 36
    .line 37
    iget-object v1, p1, Lcom/twntool/android/bridge/TwnBridge;->a:Lcom/twntool/auth/AuthManager;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/twntool/auth/AuthManager;->o()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v0, "NOT_AUTHENTICATED"

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v4, v0, v1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    :try_start_1
    iget-object p1, p0, Lwo;->h:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {p1}, LGl;->Y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_3
    iget-object v1, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 70
    .line 71
    const-string v6, "township.save_memory"

    .line 72
    .line 73
    iget-object v7, v1, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 74
    .line 75
    iget-object v7, v7, Lcom/twntool/game/AppState;->b:[B

    .line 76
    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    new-array v7, v3, [B

    .line 80
    .line 81
    :cond_4
    const-string v8, "field"

    .line 82
    .line 83
    iget-object v9, p0, Lwo;->j:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v10, Lih;

    .line 86
    .line 87
    invoke-direct {v10, v8, v9}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const-string v8, "value"

    .line 91
    .line 92
    new-instance v9, Lih;

    .line 93
    .line 94
    invoke-direct {v9, v8, p1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    filled-new-array {v10, v9}, [Lih;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-static {v8}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    iput-object p1, p0, Lwo;->e:Ljava/lang/String;

    .line 106
    .line 107
    iput v5, p0, Lwo;->f:I

    .line 108
    .line 109
    invoke-static {v1, v6, v7, v8}, Lcom/twntool/android/bridge/TwnBridge;->x(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;[BLjava/util/Map;)LJn;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    invoke-virtual {v1}, LJn;->c()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v10, "Local Township XML edit rejected"

    invoke-direct {p1, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :goto_0
    if-ne v1, v0, :cond_6

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_6
    move-object v0, p1

    .line 117
    move-object p1, v1

    .line 118
    :goto_1
    check-cast p1, LJn;

    .line 119
    .line 120
    invoke-virtual {p1}, LJn;->d()[B

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    iget-object p1, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 129
    .line 130
    iget-object p1, p1, Lcom/twntool/game/AppState;->b:[B

    .line 131
    .line 132
    if-nez p1, :cond_7

    .line 133
    .line 134
    new-array p1, v3, [B

    .line 135
    .line 136
    :cond_7
    iget-object v1, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 137
    .line 138
    iget-object v1, v1, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 139
    .line 140
    iput-object p1, v1, Lcom/twntool/game/AppState;->b:[B

    .line 141
    .line 142
    iget-object p1, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/twntool/game/AppState;->c:Ljava/util/LinkedHashSet;

    .line 147
    .line 148
    iget-object v1, p0, Lwo;->j:Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 154
    .line 155
    const-string v1, "js_on_apply"

    .line 156
    .line 157
    iget-object v3, p0, Lwo;->j:Ljava/lang/String;

    .line 158
    .line 159
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v1, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :goto_2
    iget-object v0, p0, Lwo;->g:Lcom/twntool/android/bridge/TwnBridge;

    .line 168
    .line 169
    const-string v1, "apply_err"

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v0, v4, v1, p1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_3
    return-object v2
.end method
