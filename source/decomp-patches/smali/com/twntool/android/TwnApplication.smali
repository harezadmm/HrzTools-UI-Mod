.class public final Lcom/twntool/android/TwnApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# annotations
.annotation runtime Lkc;
.end annotation


# instance fields
.field public a:Z

.field public final b:Ln3;

.field public c:Lcom/twntool/network/VpsConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/twntool/android/TwnApplication;->a:Z

    .line 6
    .line 7
    new-instance v0, Ln3;

    .line 8
    .line 9
    new-instance v1, Lcom/twntool/android/d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/twntool/android/d;-><init>(Lcom/twntool/android/TwnApplication;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ln3;-><init>(Lcom/twntool/android/d;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/twntool/android/TwnApplication;->b:Ln3;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/twntool/android/TwnApplication;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/twntool/android/TwnApplication;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/twntool/android/TwnApplication;->b:Ln3;

    .line 9
    .line 10
    invoke-virtual {v0}, Ln3;->generatedComponent()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lfo;

    .line 15
    .line 16
    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/twntool/android/TwnApplication;

    .line 21
    .line 22
    invoke-interface {v0, v1}, Lfo;->injectTwnApplication(Lcom/twntool/android/TwnApplication;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twntool/android/TwnApplication;->b:Ln3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twntool/android/TwnApplication;->b:Ln3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln3;->generatedComponent()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    invoke-static {p0}, Lcom/twntool/local/LocalCodec;->init(Landroid/content/Context;)V

    .line 1
    invoke-virtual {p0}, Lcom/twntool/android/TwnApplication;->a()V

    .line 2
    .line 3
    .line 4
    goto :goto_0

    :goto_0
    iget-object v0, p0, Lcom/twntool/android/TwnApplication;->c:Lcom/twntool/network/VpsConfig;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string v0, "vpsConfig"

    .line 29
    .line 30
    invoke-static {v0}, Lud;->a0(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    throw v0
.end method
