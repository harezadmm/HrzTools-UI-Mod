.class public abstract Lnf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcc;

    invoke-direct {v0, v1}, Lcc;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lnf;->a:Lmf;

    return-void
.end method
