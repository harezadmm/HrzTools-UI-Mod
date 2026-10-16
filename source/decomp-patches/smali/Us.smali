.class public final LUs;
.super LZl;
.source "SourceFile"

# interfaces
.implements LAb;


# instance fields
.field public e:I

.field public final synthetic f:Z

.field public final synthetic g:Lt7;


# direct methods
.method public constructor <init>(ZLt7;Li6;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LUs;->f:Z

    .line 2
    .line 3
    iput-object p2, p0, LUs;->g:Lt7;

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
    invoke-virtual {p0, p1, p2}, LUs;->g(Ljava/lang/Object;Li6;)Li6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LUs;

    .line 10
    .line 11
    sget-object p2, Ly1;->r:Ly1;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LUs;->n(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, LUs;

    .line 2
    .line 3
    iget-boolean v0, p0, LUs;->f:Z

    .line 4
    .line 5
    iget-object v1, p0, LUs;->g:Lt7;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, LUs;-><init>(ZLt7;Li6;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lx6;->a:Lx6;
    # HrzTools updater disabled
    return-object v0

    .line 2
    .line 3
    iget v1, p0, LUs;->e:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, LUs;->g:Lt7;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lu7;->b:LW6;

    .line 28
    .line 29
    new-instance v1, LTs;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-direct {v1, v3, v4}, LTs;-><init>(Lt7;Li6;)V

    .line 33
    .line 34
    .line 35
    iput v2, p0, LUs;->e:I

    .line 36
    .line 37
    invoke-static {p1, v1, p0}, Le4;->M(Lr6;LAb;Li6;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    check-cast p1, LQs;

    .line 45
    .line 46
    sget-object v0, Ly1;->r:Ly1;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    iget-boolean v4, p0, LUs;->f:Z

    .line 50
    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    iget-object p1, v3, Lt7;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, LI1;

    .line 58
    .line 59
    const-string v2, "Could not check for updates."

    .line 60
    .line 61
    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-object v0

    .line 69
    :cond_4
    iget-object v5, v3, Lt7;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v5, LI1;

    .line 72
    .line 73
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v6, v5, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v7, 0x1c

    .line 88
    .line 89
    if-lt v6, v7, :cond_5

    .line 90
    .line 91
    invoke-static {v5}, LD;->c(Landroid/content/pm/PackageInfo;)J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    int-to-long v5, v5

    .line 99
    goto :goto_1

    .line 100
    :catch_0
    const-wide/16 v5, 0x0

    .line 101
    .line 102
    :goto_1
    iget-wide v7, p1, LQs;->a:J

    .line 103
    .line 104
    cmp-long v5, v7, v5

    .line 105
    .line 106
    iget-object v6, v3, Lt7;->a:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v6, LI1;

    .line 109
    .line 110
    if-gtz v5, :cond_7

    .line 111
    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    const-string p1, "You are already on the latest version."

    .line 115
    .line 116
    invoke-static {v6, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 121
    .line 122
    .line 123
    :cond_6
    return-object v0

    .line 124
    :cond_7
    iget-boolean v5, p1, LQs;->e:Z

    .line 125
    .line 126
    if-nez v5, :cond_8

    .line 127
    .line 128
    if-nez v4, :cond_8

    .line 129
    .line 130
    const-string v4, "twn_update"

    .line 131
    .line 132
    invoke-virtual {v6, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v4, "skip_version"

    .line 137
    .line 138
    const-wide/16 v9, -0x1

    .line 139
    .line 140
    invoke-interface {v1, v4, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 141
    .line 142
    .line 143
    move-result-wide v9

    .line 144
    cmp-long v1, v9, v7

    .line 145
    .line 146
    if-nez v1, :cond_8

    .line 147
    .line 148
    return-object v0

    .line 149
    :cond_8
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_b

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v7, "A new version "

    .line 163
    .line 164
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v7, p1, LQs;->b:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v7, " is available."

    .line 173
    .line 174
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object v4, p1, LQs;->d:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {v4}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    xor-int/2addr v2, v7

    .line 191
    if-eqz v2, :cond_9

    .line 192
    .line 193
    const-string v2, "\n\n"

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const-string v2, "toString(...)"

    .line 206
    .line 207
    invoke-static {v1, v2}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    new-instance v2, Le1;

    .line 211
    .line 212
    invoke-direct {v2, v6}, Le1;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    const-string v4, "Update available"

    .line 216
    .line 217
    iget-object v6, v2, Le1;->b:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v6, La1;

    .line 220
    .line 221
    iput-object v4, v6, La1;->d:Ljava/lang/CharSequence;

    .line 222
    .line 223
    iput-object v1, v6, La1;->f:Ljava/lang/CharSequence;

    .line 224
    .line 225
    xor-int/lit8 v1, v5, 0x1

    .line 226
    .line 227
    iput-boolean v1, v6, La1;->m:Z

    .line 228
    .line 229
    new-instance v4, LJs;

    .line 230
    .line 231
    const/4 v7, 0x2

    .line 232
    invoke-direct {v4, v3, p1, v7}, LJs;-><init>(Lt7;LQs;I)V

    .line 233
    .line 234
    .line 235
    const-string v7, "Update"

    .line 236
    .line 237
    invoke-virtual {v2, v7, v4}, Le1;->f(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    if-eqz v5, :cond_a

    .line 241
    .line 242
    new-instance v4, LJs;

    .line 243
    .line 244
    const/4 v5, 0x3

    .line 245
    invoke-direct {v4, v3, p1, v5}, LJs;-><init>(Lt7;LQs;I)V

    .line 246
    .line 247
    .line 248
    const-string p1, "Later"

    .line 249
    .line 250
    iput-object p1, v6, La1;->i:Ljava/lang/CharSequence;

    .line 251
    .line 252
    iput-object v4, v6, La1;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 253
    .line 254
    :cond_a
    invoke-virtual {v2}, Le1;->a()Lf1;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 262
    .line 263
    .line 264
    :cond_b
    return-object v0
.end method
