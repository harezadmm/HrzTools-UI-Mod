.class public final Ljj;
.super LZl;
.source "SourceFile"

# interfaces
.implements LAb;


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/twntool/root/RootManagerImpl;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;Li6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljj;->g:Lcom/twntool/root/RootManagerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Ljj;->h:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Ljj;->g(Ljava/lang/Object;Li6;)Li6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljj;

    .line 10
    .line 11
    sget-object p2, Ly1;->r:Ly1;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljj;->n(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Ljj;

    .line 2
    .line 3
    iget-object v1, p0, Ljj;->g:Lcom/twntool/root/RootManagerImpl;

    .line 4
    .line 5
    iget-object v2, p0, Ljj;->h:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Ljj;-><init>(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;Li6;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Ljj;->f:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V


    iget-object v0, p0, Ljj;->g:Lcom/twntool/root/RootManagerImpl;

    invoke-static {v0}, Lcom/twntool/root/RootManagerImpl;->a(Lcom/twntool/root/RootManagerImpl;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Ljj;->h:Ljava/lang/String;

    const-string v3, "/system/bin/toybox base64 -w 0 /proc/1/root"

    invoke-static {v3, v2}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2


    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "-c"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/twntool/root/RootManagerImpl;->g(Ljava/io/InputStream;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    nop


    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
