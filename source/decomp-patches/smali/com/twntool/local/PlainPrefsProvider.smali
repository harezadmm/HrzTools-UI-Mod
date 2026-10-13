.class public final Lcom/twntool/local/PlainPrefsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twntool/local/PlainPrefsProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/twntool/local/PlainPrefsProvider;->context:Landroid/content/Context;

    const-string v1, "twn_secure_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
