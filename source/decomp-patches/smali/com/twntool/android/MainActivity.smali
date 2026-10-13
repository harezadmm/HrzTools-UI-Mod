.class public final Lcom/twntool/android/MainActivity;
.super LI1;
.source "SourceFile"

# interfaces
.implements LA9;
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# annotations
.annotation runtime Lk1;
.end annotation


# static fields
.field public static final synthetic Q:I


# instance fields
.field public A:Z

.field public B:Lcom/twntool/android/bridge/TwnBridge;

.field public C:Lcom/twntool/android/bridge/ImageProxy;

.field public D:Landroid/webkit/WebView;

.field public E:Lt7;

.field public F:Z

.field public final G:Lam;

.field public final H:J

.field public I:Ll5;

.field public final J:LH0;

.field public K:Z

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public x:LSj;

.field public volatile y:Ly0;

.field public final z:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, LI1;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ly5;->e:LT5;

    .line 5
    .line 6
    iget-object v0, v0, LT5;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LI5;

    .line 9
    .line 10
    new-instance v1, LG1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, LG1;-><init>(Lcom/twntool/android/MainActivity;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "androidx:appcompat"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, LI5;->e(Ljava/lang/String;LYj;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, LH1;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, LH1;-><init>(Lcom/twntool/android/MainActivity;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ly5;->f(LRg;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/Object;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/twntool/android/MainActivity;->z:Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/twntool/android/MainActivity;->A:Z

    .line 38
    .line 39
    new-instance v0, LH1;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, p0, v1}, LH1;-><init>(Lcom/twntool/android/MainActivity;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ly5;->f(LRg;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lec;

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-direct {v0, p0, v1}, Lec;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lam;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lam;-><init>(Llb;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/twntool/android/MainActivity;->G:Lam;

    .line 60
    .line 61
    const-wide/32 v0, 0xc000000

    .line 62
    .line 63
    .line 64
    iput-wide v0, p0, Lcom/twntool/android/MainActivity;->H:J

    .line 65
    .line 66
    new-instance v0, LF0;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-direct {v0, v1}, LF0;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lff;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lff;-><init>(Lcom/twntool/android/MainActivity;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Ly5;->j:Lt5;

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v4, "activity_rq#"

    .line 82
    .line 83
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Ly5;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Ly5;->d:Lte;

    .line 103
    .line 104
    iget-object v5, v4, Lte;->d:Lke;

    .line 105
    .line 106
    sget-object v6, Lke;->d:Lke;

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-gez v5, :cond_1

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Lt5;->d(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v5, v2, Lt5;->d:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, LK0;

    .line 124
    .line 125
    if-nez v6, :cond_0

    .line 126
    .line 127
    new-instance v6, LK0;

    .line 128
    .line 129
    invoke-direct {v6, v4}, LK0;-><init>(Lte;)V

    .line 130
    .line 131
    .line 132
    :cond_0
    new-instance v4, LG0;

    .line 133
    .line 134
    invoke-direct {v4, v2, v3, v1, v0}, LG0;-><init>(Lt5;Ljava/lang/String;Lff;LF0;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v6, LK0;->a:Lte;

    .line 138
    .line 139
    invoke-virtual {v1, v4}, Lte;->a(Lqe;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v6, LK0;->b:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    new-instance v1, LH0;

    .line 151
    .line 152
    invoke-direct {v1, v2, v3, v0}, LH0;-><init>(Lt5;Ljava/lang/String;LF0;)V

    .line 153
    .line 154
    .line 155
    iput-object v1, p0, Lcom/twntool/android/MainActivity;->J:LH0;

    .line 156
    .line 157
    return-void

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v2, "LifecycleOwner "

    .line 163
    .line 164
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, " is attempting to register while current state is "

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v2, v4, Lte;->d:Lke;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, ". LifecycleOwners must call register before they are STARTED."

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v0
.end method


# virtual methods
.method public final bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->o()Ly0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->o()Ly0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ly0;->generatedComponent()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final o()Ly0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->y:Ly0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->z:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/twntool/android/MainActivity;->y:Ly0;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ly0;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Ly0;-><init>(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/twntool/android/MainActivity;->y:Ly0;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->y:Ly0;

    .line 27
    .line 28
    return-object v0
.end method

.method public final onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_0
    const-string v1, "javascript:window.__hrzHandleAndroidBack&&window.__hrzHandleAndroidBack()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-super {p0}, Ly5;->onBackPressed()V

    return-void
.end method


.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, LI1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->t()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lzt;->a:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-static {p1}, Lnt;->c(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    new-instance v0, Lef;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, v1}, Lef;-><init>(Lcom/twntool/android/MainActivity;I)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v1, 0xc8

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const-string p1, "webView"

    .line 43
    .line 44
    invoke-static {p1}, Lud;->a0(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/twntool/android/MainActivity;->r(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->G:Lam;

    .line 7
    .line 8
    invoke-virtual {p1}, Lam;->a()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 22
    .line 23
    .line 24
    const-string p1, "TwnTool"

    .line 25
    .line 26
    const-string v2, "Espa\u00e7o virtual detectado: for\u00e7ando retrato (evita tela tombada 90\u00b0)."

    .line 27
    .line 28
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v3, 0x1e

    .line 38
    .line 39
    if-lt v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p1, v0}, LZt;->a(Landroid/view/Window;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    or-int/lit16 v2, v2, 0x700

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    const p1, 0x7f0b001c

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, LI1;->setContentView(I)V

    .line 62
    .line 63
    .line 64
    const p1, 0x7f0800b1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, LI1;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v2, "findViewById(...)"

    .line 72
    .line 73
    invoke-static {p1, v2}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast p1, Landroid/webkit/WebView;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 79
    .line 80
    new-instance v2, Lff;

    .line 81
    .line 82
    invoke-direct {v2, p0}, Lff;-><init>(Lcom/twntool/android/MainActivity;)V

    .line 83
    .line 84
    .line 85
    sget-object v3, Lzt;->a:Ljava/util/WeakHashMap;

    .line 86
    .line 87
    invoke-static {p1, v2}, Lpt;->u(Landroid/view/View;LLg;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    const-string v3, "webView"

    .line 94
    .line 95
    if-eqz p1, :cond_8

    .line 96
    .line 97
    invoke-static {p1}, Lnt;->c(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->q()Lcom/twntool/android/bridge/TwnBridge;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v4, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 105
    .line 106
    if-eqz v4, :cond_7

    .line 107
    .line 108
    invoke-static {p0}, LN6;->u(Lre;)Lme;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iput-object v4, p1, Lcom/twntool/android/bridge/TwnBridge;->q:Landroid/webkit/WebView;

    .line 113
    .line 114
    iput-object v5, p1, Lcom/twntool/android/bridge/TwnBridge;->r:Lw6;

    .line 115
    .line 116
    iget-object v4, p1, Lcom/twntool/android/bridge/TwnBridge;->j:Lcom/twntool/familyisland/FamilyIslandEngine;

    .line 117
    .line 118
    new-instance v5, Lmo;

    .line 119
    .line 120
    invoke-direct {v5, p1, v0}, Lmo;-><init>(Lcom/twntool/android/bridge/TwnBridge;I)V

    .line 121
    .line 122
    .line 123
    iput-object v5, v4, Lcom/twntool/familyisland/FamilyIslandEngine;->g:LAb;

    .line 124
    .line 125
    iget-object v4, p1, Lcom/twntool/android/bridge/TwnBridge;->k:Lcom/twntool/simcity/SimCityEngine;

    .line 126
    .line 127
    new-instance v5, Lmo;

    .line 128
    .line 129
    invoke-direct {v5, p1, v1}, Lmo;-><init>(Lcom/twntool/android/bridge/TwnBridge;I)V

    .line 130
    .line 131
    .line 132
    iput-object v5, v4, Lcom/twntool/simcity/SimCityEngine;->e:LAb;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->q()Lcom/twntool/android/bridge/TwnBridge;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 139
    .line 140
    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iput-object v4, p1, Lcom/twntool/android/bridge/TwnBridge;->v:Ljava/lang/ref/WeakReference;

    .line 144
    .line 145
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 146
    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 172
    .line 173
    .line 174
    const/16 v4, 0x64

    .line 175
    .line 176
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 186
    .line 187
    .line 188
    const/4 v4, -0x1

    .line 189
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 190
    .line 191
    .line 192
    const-string v4, "TwnTool/5.0 Android"

    .line 193
    .line 194
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 198
    .line 199
    if-eqz p1, :cond_5

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->q()Lcom/twntool/android/bridge/TwnBridge;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    const-string v5, "Android"

    .line 206
    .line 207
    invoke-virtual {p1, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 211
    .line 212
    if-eqz p1, :cond_4

    .line 213
    .line 214
    new-instance v4, Ljf;

    .line 215
    .line 216
    invoke-direct {v4, p0}, Ljf;-><init>(Lcom/twntool/android/MainActivity;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 220
    .line 221
    .line 222
    :try_start_1
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 223
    .line 224
    if-eqz p1, :cond_2

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :catchall_0
    move-exception p1

    .line 231
    goto :goto_2

    .line 232
    :cond_2
    invoke-static {v3}, Lud;->a0(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :goto_2
    invoke-static {p1}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 237
    .line 238
    .line 239
    :goto_3
    iget-object p1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 240
    .line 241
    if-eqz p1, :cond_3

    .line 242
    .line 243
    new-instance v1, Lkf;

    .line 244
    .line 245
    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 249
    const-string v1, "file:///android_asset/index.html"

    .line 250
    iget-object v4, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 251
    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 252
    new-instance p1, Lt7;

    .line 298
    .line 299
    const-string v1, "activity"

    .line 300
    .line 301
    invoke-static {p0, v1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 305
    .line 306
    .line 307
    iput-object p0, p1, Lt7;->a:Ljava/lang/Object;

    .line 308
    .line 309
    new-instance v1, Lec;

    .line 310
    .line 311
    const/4 v3, 0x7

    .line 312
    invoke-direct {v1, p1, v3}, Lec;-><init>(Ljava/lang/Object;I)V

    .line 313
    .line 314
    .line 315
    new-instance v3, Lam;

    .line 316
    .line 317
    invoke-direct {v3, v1}, Lam;-><init>(Llb;)V

    .line 318
    .line 319
    .line 320
    iput-object v3, p1, Lt7;->d:Ljava/lang/Object;

    .line 321
    .line 322
    iput-object p1, p0, Lcom/twntool/android/MainActivity;->E:Lt7;

    .line 323
    .line 324
    invoke-static {p0}, LN6;->u(Lre;)Lme;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    new-instance v3, LUs;

    .line 329
    .line 330
    invoke-direct {v3, v0, p1, v2}, LUs;-><init>(ZLt7;Li6;)V

    .line 331
    .line 332
    .line 333
    const/4 p1, 0x3

    .line 334
    invoke-static {v1, v2, v3, p1}, Le4;->y(Lw6;Lr6;LAb;I)LAl;

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_3
    invoke-static {v3}, Lud;->a0(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v2

    .line 342
    :cond_4
    invoke-static {v3}, Lud;->a0(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v2

    .line 346
    :cond_5
    invoke-static {v3}, Lud;->a0(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v2

    .line 350
    :cond_6
    invoke-static {v3}, Lud;->a0(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v2

    .line 354
    :cond_7
    invoke-static {v3}, Lud;->a0(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v2

    .line 358
    :cond_8
    invoke-static {v3}, Lud;->a0(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v2
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->I:Ll5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ll5;->V(Landroid/net/Uri;)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lcom/twntool/android/MainActivity;->I:Ll5;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->q()Lcom/twntool/android/bridge/TwnBridge;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, v0, Lcom/twntool/android/bridge/TwnBridge;->v:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, LA9;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v2, v1

    .line 27
    :goto_0
    if-ne v2, p0, :cond_2

    .line 28
    .line 29
    iput-object v1, v0, Lcom/twntool/android/bridge/TwnBridge;->v:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->q()Lcom/twntool/android/bridge/TwnBridge;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v1, v0, Lcom/twntool/android/bridge/TwnBridge;->q:Landroid/webkit/WebView;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/twntool/android/bridge/TwnBridge;->r:Lw6;

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/twntool/android/MainActivity;->F:Z

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->s()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, LI1;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->E:Lt7;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lt7;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/io/File;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lt7;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-object v2, v0, Lt7;->b:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lt7;->p(Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->G:Lam;

    .line 28
    .line 29
    invoke-virtual {v0}, Lam;->a()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v0, 0x1

    .line 43
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 44
    .line 45
    .line 46
    const-string v0, "TwnTool"

    .line 47
    .line 48
    const-string v1, "Espa\u00e7o virtual detectado: for\u00e7ando retrato (evita tela tombada 90\u00b0)."

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    :goto_1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p(Li6;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lgf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lgf;

    .line 7
    .line 8
    iget v1, v0, Lgf;->g:I

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
    iput v1, v0, Lgf;->g:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lgf;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lgf;-><init>(Lcom/twntool/android/MainActivity;Li6;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lgf;->e:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lx6;->a:Lx6;

    .line 28
    .line 29
    iget v2, v0, Lgf;->g:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v4, :cond_2

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

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
    iget-object v2, v0, Lgf;->d:Lcom/twntool/android/MainActivity;

    .line 53
    .line 54
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lu7;->a:LZ6;

    .line 62
    .line 63
    sget-object p1, Lnf;->a:Lmf;

    .line 64
    .line 65
    new-instance v2, Lif;

    .line 66
    .line 67
    invoke-direct {v2, p0, v5}, Lif;-><init>(Lcom/twntool/android/MainActivity;Li6;)V

    .line 68
    .line 69
    .line 70
    iput-object p0, v0, Lgf;->d:Lcom/twntool/android/MainActivity;

    .line 71
    .line 72
    iput v4, v0, Lgf;->g:I

    .line 73
    .line 74
    invoke-static {p1, v2, v0}, Le4;->M(Lr6;LAb;Li6;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v1, :cond_4

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_4
    move-object v2, p0

    .line 82
    :goto_1
    check-cast p1, Landroid/net/Uri;

    .line 83
    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    return-object v5

    .line 87
    :cond_5
    sget-object v4, Lu7;->b:LW6;

    .line 88
    .line 89
    new-instance v6, Lhf;

    .line 90
    .line 91
    invoke-direct {v6, v2, p1, v5}, Lhf;-><init>(Lcom/twntool/android/MainActivity;Landroid/net/Uri;Li6;)V

    .line 92
    .line 93
    .line 94
    iput-object v5, v0, Lgf;->d:Lcom/twntool/android/MainActivity;

    .line 95
    .line 96
    iput v3, v0, Lgf;->g:I

    .line 97
    .line 98
    invoke-static {v4, v6, v0}, Le4;->M(Lr6;LAb;Li6;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v1, :cond_6

    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_6
    :goto_2
    return-object p1
.end method

.method public final q()Lcom/twntool/android/bridge/TwnBridge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->B:Lcom/twntool/android/bridge/TwnBridge;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "bridge"

    .line 7
    .line 8
    invoke-static {v0}, Lud;->a0(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    throw v0
.end method

.method public final r(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, LI1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of p1, p1, Ldagger/hilt/internal/GeneratedComponentManager;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/twntool/android/MainActivity;->o()Ly0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Ly0;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Ly0;

    .line 19
    .line 20
    iget-object v0, p1, Ly0;->c:Landroid/app/Activity;

    .line 21
    .line 22
    check-cast v0, Ly5;

    .line 23
    .line 24
    new-instance v1, Lf3;

    .line 25
    .line 26
    new-instance v2, LN0;

    .line 27
    .line 28
    iget-object p1, p1, Ly0;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ly5;

    .line 31
    .line 32
    invoke-direct {v2, p1}, LN0;-><init>(Ly5;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v0, v2}, Lf3;-><init>(LKt;LHt;)V

    .line 36
    .line 37
    .line 38
    const-class p1, LP0;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lf3;->j(Ljava/lang/Class;)LEt;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, LP0;

    .line 45
    .line 46
    iget-object p1, p1, LP0;->d:LSj;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/twntool/android/MainActivity;->x:LSj;

    .line 49
    .line 50
    iget-object v0, p1, LSj;->a:LC6;

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0}, Ly5;->g()Lhg;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p1, LSj;->a:LC6;

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-super {p0}, LI1;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->x:LSj;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, LSj;->a:LC6;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/twntool/android/MainActivity;->L:I

    .line 7
    .line 8
    iget v1, p0, Lcom/twntool/android/MainActivity;->M:I

    .line 9
    .line 10
    iget v2, p0, Lcom/twntool/android/MainActivity;->N:I

    .line 11
    .line 12
    iget v3, p0, Lcom/twntool/android/MainActivity;->O:I

    .line 13
    .line 14
    invoke-virtual {p0}, LI1;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 23
    .line 24
    const v5, 0x3f59999a    # 0.85f

    .line 25
    .line 26
    .line 27
    cmpg-float v6, v4, v5

    .line 28
    .line 29
    if-gez v6, :cond_1

    .line 30
    .line 31
    :goto_0
    move v4, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const v5, 0x3fa66666    # 1.3f

    .line 34
    .line 35
    .line 36
    cmpl-float v6, v4, v5

    .line 37
    .line 38
    if-lez v6, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const/4 v6, 0x1

    .line 52
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v6, "%.2f"

    .line 57
    .line 58
    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget v5, p0, Lcom/twntool/android/MainActivity;->P:I

    .line 63
    .line 64
    iget-object v6, p0, Lcom/twntool/android/MainActivity;->G:Lam;

    .line 65
    .line 66
    invoke-virtual {v6}, Lam;->a()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v8, "(function(){var f=function(){if(!document.documentElement){setTimeout(f,50);return;}document.documentElement.style.setProperty(\'--safe-top\',\'"

    .line 79
    .line 80
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, "px\');document.documentElement.style.setProperty(\'--safe-bottom\',\'"

    .line 87
    .line 88
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, "px\');document.documentElement.style.setProperty(\'--safe-left\',\'"

    .line 95
    .line 96
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, "px\');document.documentElement.style.setProperty(\'--safe-right\',\'"

    .line 103
    .line 104
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "px\');document.documentElement.style.setProperty(\'--font-scale\',\'"

    .line 111
    .line 112
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, "\');if(window._setKeyboardInset){window._setKeyboardInset("

    .line 119
    .line 120
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, ");}else{document.documentElement.style.setProperty(\'--kb\',\'"

    .line 127
    .line 128
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, "px\');document.documentElement.classList.toggle(\'kb-open\',"

    .line 135
    .line 136
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v0, ">0);}if(window._updateViewportUnits)window._updateViewportUnits();if(window._fitAppToWindow)window._fitAppToWindow();if(window._fitSaveMemoryRows)window._fitSaveMemoryRows();document.documentElement.classList.toggle(\'twn-vspace\',"

    .line 143
    .line 144
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, ");};f();})();"

    .line 151
    .line 152
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/twntool/android/MainActivity;->D:Landroid/webkit/WebView;

    .line 160
    .line 161
    const/4 v2, 0x0

    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_3
    const-string v0, "webView"

    .line 169
    .line 170
    invoke-static {v0}, Lud;->a0(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v2
.end method

.method public final u(Landroid/content/Intent;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v3, "queryIntentActivities(...)"

    .line 12
    .line 13
    invoke-static {v1, v3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    xor-int/2addr v1, v0

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v2

    .line 35
    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method
