.class public final Lij;
.super LZl;
.source "SourceFile"

# interfaces
.implements LAb;


# instance fields
.field public e:I

.field public final synthetic f:Lcom/twntool/root/RootManagerImpl;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;Li6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lij;->f:Lcom/twntool/root/RootManagerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lij;->g:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lij;->g(Ljava/lang/Object;Li6;)Li6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lij;

    .line 10
    .line 11
    sget-object p2, Ly1;->r:Ly1;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lij;->n(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lij;

    .line 2
    .line 3
    iget-object v0, p0, Lij;->f:Lcom/twntool/root/RootManagerImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lij;->g:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lij;-><init>(Lcom/twntool/root/RootManagerImpl;Ljava/lang/String;Li6;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lx6;->a:Lx6;

    .line 2
    .line 3
    iget v1, p0, Lij;->e:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "monkey -p "

    .line 28
    .line 29
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lij;->g:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1"

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput v2, p0, Lij;->e:I

    .line 55
    .line 56
    sget-object v1, Lcom/twntool/root/RootManagerImpl;->e:Ljava/util/List;

    .line 57
    .line 58
    iget-object v1, p0, Lij;->f:Lcom/twntool/root/RootManagerImpl;

    .line 59
    .line 60
    invoke-virtual {v1, p1, p0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    :goto_0
    check-cast p1, LSk;

    .line 68
    .line 69
    invoke-virtual {p1}, LSk;->a()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method
