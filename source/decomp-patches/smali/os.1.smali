.class public abstract Los;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq1;

.field public static final b:[Ljava/lang/String;

.field public static final c:LS4;

.field public static d:LS4;

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B

.field public static l:Z

.field public static m:Ljava/lang/reflect/Method;

.field public static n:Z

.field public static o:Ljava/lang/reflect/Field;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    new-instance v2, Lq1;

    .line 4
    .line 5
    const-string v3, "RESUME_TOKEN"

    .line 6
    .line 7
    invoke-direct {v2, v3, v1}, Lq1;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v2, Los;->a:Lq1;

    .line 11
    .line 12
    new-array v0, v0, [Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Los;->b:[Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, LS4;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v2, v2, v2}, LS4;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Los;->c:LS4;

    .line 23
    .line 24
    new-array v0, v1, [B

    .line 25
    .line 26
    fill-array-data v0, :array_0

    .line 27
    .line 28
    .line 29
    sput-object v0, Los;->e:[B

    .line 30
    .line 31
    new-array v0, v1, [B

    .line 32
    .line 33
    fill-array-data v0, :array_1

    .line 34
    .line 35
    .line 36
    sput-object v0, Los;->f:[B

    .line 37
    .line 38
    new-array v0, v1, [B

    .line 39
    .line 40
    fill-array-data v0, :array_2

    .line 41
    .line 42
    .line 43
    sput-object v0, Los;->g:[B

    .line 44
    .line 45
    new-array v0, v1, [B

    .line 46
    .line 47
    fill-array-data v0, :array_3

    .line 48
    .line 49
    .line 50
    sput-object v0, Los;->h:[B

    .line 51
    .line 52
    new-array v0, v1, [B

    .line 53
    .line 54
    fill-array-data v0, :array_4

    .line 55
    .line 56
    .line 57
    sput-object v0, Los;->i:[B

    .line 58
    .line 59
    new-array v0, v1, [B

    .line 60
    .line 61
    fill-array-data v0, :array_5

    .line 62
    .line 63
    .line 64
    sput-object v0, Los;->j:[B

    .line 65
    .line 66
    new-array v0, v1, [B

    .line 67
    .line 68
    fill-array-data v0, :array_6

    .line 69
    .line 70
    .line 71
    sput-object v0, Los;->k:[B

    .line 72
    .line 73
    return-void

    .line 74
    nop

    .line 75
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x35t
        0x0t
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :array_1
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x0t
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_2
    .array-data 1
        0x30t
        0x30t
        0x39t
        0x0t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_3
    .array-data 1
        0x30t
        0x30t
        0x35t
        0x0t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :array_4
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_5
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_6
    .array-data 1
        0x30t
        0x30t
        0x32t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static A(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 29
    .line 30
    const-string v0, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD"

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 36
    .line 37
    const-string p1, "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END"

    .line 38
    .line 39
    invoke-virtual {p0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static B(Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    if-lez v0, :cond_2

    .line 3
    .line 4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    return-void
.end method

.method public static C(LAb;Ll;Ll;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Le4;->k(LAb;Ljava/lang/Object;Li6;)Li6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Le4;->w(Li6;)Li6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object p1, Ly1;->r:Ly1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Lah;->S(Li6;Ljava/lang/Object;Lwb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {p0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, p1}, Ll;->h(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static D(Lrd;I)Lpd;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v0, p0, Lpd;->c:I

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    neg-int p1, p1

    .line 23
    :goto_1
    new-instance v0, Lpd;

    .line 24
    .line 25
    iget v1, p0, Lpd;->a:I

    .line 26
    .line 27
    iget p0, p0, Lpd;->b:I

    .line 28
    .line 29
    invoke-direct {v0, v1, p0, p1}, Lpd;-><init>(III)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Step must be positive, was: "

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x2e

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public static E(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    const-string v0, " cannot be cast to "

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Lrl;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Ljava/lang/ClassCastException;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-class p0, Los;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p1, p0}, Lud;->U(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public static F(II)Lrd;
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lrd;->d:Lrd;

    .line 6
    .line 7
    sget-object p0, Lrd;->d:Lrd;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Lrd;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-direct {v0, p0, p1, v1}, Lpd;-><init>(III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final G(JLAb;Li6;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-lez v0, :cond_5

    .line 6
    .line 7
    new-instance v0, Lxm;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p3}, Lxm;-><init>(JLi6;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, v0, Lbk;->d:Li6;

    .line 13
    .line 14
    invoke-interface {p0}, Li6;->e()Lp6;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lud;->C(Lp6;)Lg7;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-wide v1, v0, Lxm;->e:J

    .line 23
    .line 24
    iget-object p1, v0, Ll;->c:Lp6;

    .line 25
    .line 26
    invoke-interface {p0, v1, v2, v0, p1}, Lg7;->k(JLxm;Lp6;)Lx7;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lz7;

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-direct {p1, p0, p3}, Lz7;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    const/4 p3, 0x0

    .line 38
    invoke-virtual {v0, p3, p0, p1}, LLd;->J(ZZLGd;)Lx7;

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-static {p2}, Los;->a(LAb;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p2, v0, v0}, LAb;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    new-instance p1, Lo5;

    .line 51
    .line 52
    invoke-direct {p1, p0, p3}, Lo5;-><init>(Ljava/lang/Throwable;Z)V

    .line 53
    .line 54
    .line 55
    move-object p0, p1

    .line 56
    :goto_0
    sget-object p1, Lx6;->a:Lx6;

    .line 57
    .line 58
    if-ne p0, p1, :cond_0

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_0
    invoke-virtual {v0, p0}, LLd;->L(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    sget-object p3, Lud;->e:Lq1;

    .line 66
    .line 67
    if-ne p2, p3, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    instance-of p1, p2, Lo5;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    check-cast p2, Lo5;

    .line 75
    .line 76
    iget-object p1, p2, Lo5;->a:Ljava/lang/Throwable;

    .line 77
    .line 78
    instance-of p2, p1, Lwm;

    .line 79
    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    move-object p2, p1

    .line 83
    check-cast p2, Lwm;

    .line 84
    .line 85
    iget-object p2, p2, Lwm;->a:LCd;

    .line 86
    .line 87
    if-ne p2, v0, :cond_3

    .line 88
    .line 89
    instance-of p1, p0, Lo5;

    .line 90
    .line 91
    if-nez p1, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    check-cast p0, Lo5;

    .line 95
    .line 96
    iget-object p0, p0, Lo5;->a:Ljava/lang/Throwable;

    .line 97
    .line 98
    throw p0

    .line 99
    :cond_3
    throw p1

    .line 100
    :cond_4
    invoke-static {p2}, Lud;->c0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    :goto_1
    move-object p1, p0

    .line 105
    :goto_2
    return-object p1

    .line 106
    :cond_5
    new-instance p0, Lwm;

    .line 107
    .line 108
    const-string p1, "Timed out immediately"

    .line 109
    .line 110
    const/4 p2, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lwm;-><init>(Ljava/lang/String;LCd;)V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public static a(LAb;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    instance-of v0, p0, LHb;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, LHb;

    .line 9
    .line 10
    invoke-interface {v0}, LHb;->a()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p0, Llb;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    instance-of v0, p0, Lwb;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "kotlin.jvm.functions.Function2"

    .line 28
    .line 29
    invoke-static {p0, v0}, Los;->E(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0

    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public static b(JLk4;ILjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 19

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v10, p4

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    move/from16 v11, p6

    .line 10
    .line 11
    move-object/from16 v12, p7

    .line 12
    .line 13
    const-string v3, "Failed requirement."

    .line 14
    .line 15
    if-ge v2, v11, :cond_11

    .line 16
    .line 17
    move v4, v2

    .line 18
    :goto_0
    if-ge v4, v11, :cond_1

    .line 19
    .line 20
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lp4;

    .line 25
    .line 26
    invoke-virtual {v5}, Lp4;->c()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-lt v5, v1, :cond_0

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    invoke-virtual/range {p4 .. p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lp4;

    .line 50
    .line 51
    add-int/lit8 v4, v11, -0x1

    .line 52
    .line 53
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lp4;

    .line 58
    .line 59
    invoke-virtual {v3}, Lp4;->c()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const/4 v13, -0x1

    .line 64
    if-ne v1, v5, :cond_2

    .line 65
    .line 66
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lp4;

    .line 83
    .line 84
    move v6, v2

    .line 85
    move v2, v3

    .line 86
    move-object v3, v5

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move v6, v2

    .line 89
    move v2, v13

    .line 90
    :goto_1
    invoke-virtual {v3, v1}, Lp4;->f(I)B

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-virtual {v4, v1}, Lp4;->f(I)B

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    const/4 v8, 0x4

    .line 99
    const/4 v9, 0x2

    .line 100
    if-eq v5, v7, :cond_c

    .line 101
    .line 102
    add-int/lit8 v3, v6, 0x1

    .line 103
    .line 104
    const/4 v4, 0x1

    .line 105
    :goto_2
    if-ge v3, v11, :cond_4

    .line 106
    .line 107
    add-int/lit8 v5, v3, -0x1

    .line 108
    .line 109
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Lp4;

    .line 114
    .line 115
    invoke-virtual {v5, v1}, Lp4;->f(I)B

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Lp4;

    .line 124
    .line 125
    invoke-virtual {v7, v1}, Lp4;->f(I)B

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eq v5, v7, :cond_3

    .line 130
    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    iget-wide v14, v0, Lk4;->b:J

    .line 137
    .line 138
    int-to-long v7, v8

    .line 139
    div-long/2addr v14, v7

    .line 140
    add-long v14, v14, p0

    .line 141
    .line 142
    move-wide/from16 v16, v7

    .line 143
    .line 144
    int-to-long v7, v9

    .line 145
    add-long/2addr v14, v7

    .line 146
    mul-int/lit8 v3, v4, 0x2

    .line 147
    .line 148
    int-to-long v7, v3

    .line 149
    add-long/2addr v14, v7

    .line 150
    invoke-virtual {v0, v4}, Lk4;->H(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Lk4;->H(I)V

    .line 154
    .line 155
    .line 156
    move v2, v6

    .line 157
    :goto_3
    if-ge v2, v11, :cond_7

    .line 158
    .line 159
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Lp4;

    .line 164
    .line 165
    invoke-virtual {v3, v1}, Lp4;->f(I)B

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eq v2, v6, :cond_5

    .line 170
    .line 171
    add-int/lit8 v4, v2, -0x1

    .line 172
    .line 173
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Lp4;

    .line 178
    .line 179
    invoke-virtual {v4, v1}, Lp4;->f(I)B

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eq v3, v4, :cond_6

    .line 184
    .line 185
    :cond_5
    and-int/lit16 v3, v3, 0xff

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Lk4;->H(I)V

    .line 188
    .line 189
    .line 190
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_7
    new-instance v9, Lk4;

    .line 194
    .line 195
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 196
    .line 197
    .line 198
    move v7, v6

    .line 199
    :goto_4
    if-ge v7, v11, :cond_b

    .line 200
    .line 201
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Lp4;

    .line 206
    .line 207
    invoke-virtual {v2, v1}, Lp4;->f(I)B

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    add-int/lit8 v3, v7, 0x1

    .line 212
    .line 213
    move v4, v3

    .line 214
    :goto_5
    if-ge v4, v11, :cond_9

    .line 215
    .line 216
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    check-cast v5, Lp4;

    .line 221
    .line 222
    invoke-virtual {v5, v1}, Lp4;->f(I)B

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eq v2, v5, :cond_8

    .line 227
    .line 228
    move v8, v4

    .line 229
    goto :goto_6

    .line 230
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_9
    move v8, v11

    .line 234
    :goto_6
    if-ne v3, v8, :cond_a

    .line 235
    .line 236
    add-int/lit8 v2, v1, 0x1

    .line 237
    .line 238
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    check-cast v3, Lp4;

    .line 243
    .line 244
    invoke-virtual {v3}, Lp4;->c()I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-ne v2, v3, :cond_a

    .line 249
    .line 250
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Ljava/lang/Number;

    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-virtual {v0, v2}, Lk4;->H(I)V

    .line 261
    .line 262
    .line 263
    move/from16 v18, v8

    .line 264
    .line 265
    move-object v13, v9

    .line 266
    goto :goto_7

    .line 267
    :cond_a
    iget-wide v2, v9, Lk4;->b:J

    .line 268
    .line 269
    div-long v2, v2, v16

    .line 270
    .line 271
    add-long/2addr v2, v14

    .line 272
    long-to-int v2, v2

    .line 273
    mul-int/2addr v2, v13

    .line 274
    invoke-virtual {v0, v2}, Lk4;->H(I)V

    .line 275
    .line 276
    .line 277
    add-int/lit8 v5, v1, 0x1

    .line 278
    .line 279
    move-wide v2, v14

    .line 280
    move-object v4, v9

    .line 281
    move-object/from16 v6, p4

    .line 282
    .line 283
    move/from16 v18, v8

    .line 284
    .line 285
    move-object v13, v9

    .line 286
    move-object/from16 v9, p7

    .line 287
    .line 288
    invoke-static/range {v2 .. v9}, Los;->b(JLk4;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 289
    .line 290
    .line 291
    :goto_7
    move-object v9, v13

    .line 292
    move/from16 v7, v18

    .line 293
    .line 294
    const/4 v13, -0x1

    .line 295
    goto :goto_4

    .line 296
    :cond_b
    move-object v13, v9

    .line 297
    invoke-virtual {v0, v13}, Lk4;->E(Lnl;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_a

    .line 301
    .line 302
    :cond_c
    invoke-virtual {v3}, Lp4;->c()I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    invoke-virtual {v4}, Lp4;->c()I

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    const/4 v7, 0x0

    .line 315
    move v13, v1

    .line 316
    :goto_8
    if-ge v13, v5, :cond_d

    .line 317
    .line 318
    invoke-virtual {v3, v13}, Lp4;->f(I)B

    .line 319
    .line 320
    .line 321
    move-result v14

    .line 322
    invoke-virtual {v4, v13}, Lp4;->f(I)B

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    if-ne v14, v15, :cond_d

    .line 327
    .line 328
    add-int/lit8 v7, v7, 0x1

    .line 329
    .line 330
    add-int/lit8 v13, v13, 0x1

    .line 331
    .line 332
    goto :goto_8

    .line 333
    :cond_d
    iget-wide v4, v0, Lk4;->b:J

    .line 334
    .line 335
    int-to-long v13, v8

    .line 336
    div-long/2addr v4, v13

    .line 337
    add-long v4, v4, p0

    .line 338
    .line 339
    int-to-long v8, v9

    .line 340
    add-long/2addr v4, v8

    .line 341
    int-to-long v8, v7

    .line 342
    add-long/2addr v4, v8

    .line 343
    const-wide/16 v8, 0x1

    .line 344
    .line 345
    add-long/2addr v4, v8

    .line 346
    neg-int v8, v7

    .line 347
    invoke-virtual {v0, v8}, Lk4;->H(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v2}, Lk4;->H(I)V

    .line 351
    .line 352
    .line 353
    add-int/2addr v7, v1

    .line 354
    :goto_9
    if-ge v1, v7, :cond_e

    .line 355
    .line 356
    invoke-virtual {v3, v1}, Lp4;->f(I)B

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    and-int/lit16 v2, v2, 0xff

    .line 361
    .line 362
    invoke-virtual {v0, v2}, Lk4;->H(I)V

    .line 363
    .line 364
    .line 365
    add-int/lit8 v1, v1, 0x1

    .line 366
    .line 367
    goto :goto_9

    .line 368
    :cond_e
    add-int/lit8 v1, v6, 0x1

    .line 369
    .line 370
    if-ne v1, v11, :cond_10

    .line 371
    .line 372
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    check-cast v1, Lp4;

    .line 377
    .line 378
    invoke-virtual {v1}, Lp4;->c()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-ne v7, v1, :cond_f

    .line 383
    .line 384
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Ljava/lang/Number;

    .line 389
    .line 390
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    invoke-virtual {v0, v1}, Lk4;->H(I)V

    .line 395
    .line 396
    .line 397
    goto :goto_a

    .line 398
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 399
    .line 400
    const-string v1, "Check failed."

    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v0

    .line 410
    :cond_10
    new-instance v9, Lk4;

    .line 411
    .line 412
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 413
    .line 414
    .line 415
    iget-wide v1, v9, Lk4;->b:J

    .line 416
    .line 417
    div-long/2addr v1, v13

    .line 418
    add-long/2addr v1, v4

    .line 419
    long-to-int v1, v1

    .line 420
    const/4 v2, -0x1

    .line 421
    mul-int/2addr v1, v2

    .line 422
    invoke-virtual {v0, v1}, Lk4;->H(I)V

    .line 423
    .line 424
    .line 425
    move-wide v1, v4

    .line 426
    move-object v3, v9

    .line 427
    move v4, v7

    .line 428
    move-object/from16 v5, p4

    .line 429
    .line 430
    move/from16 v7, p6

    .line 431
    .line 432
    move-object/from16 v8, p7

    .line 433
    .line 434
    invoke-static/range {v1 .. v8}, Los;->b(JLk4;ILjava/util/ArrayList;IILjava/util/ArrayList;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v9}, Lk4;->E(Lnl;)V

    .line 438
    .line 439
    .line 440
    :goto_a
    return-void

    .line 441
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v0
.end method

.method public static c(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static d(II)I
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    if-gez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    if-le p0, p1, :cond_1

    .line 8
    .line 9
    return p1

    .line 10
    :cond_1
    return p0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cannot coerce value to an empty range: maximum "

    .line 14
    .line 15
    const-string v1, " is less than minimum 0."

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, LS8;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static varargs e([Lwb;)Lk5;
    .locals 1

    .line 1
    array-length v0, p0

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    new-instance v0, Lk5;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lk5;-><init>([Lwb;)V

    .line 7
    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "Failed requirement."

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public static f(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    if-nez p0, :cond_1

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static m(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    array-length v2, p0

    .line 17
    move v3, v0

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    aget-object v5, p0, v3

    .line 22
    .line 23
    invoke-static {v5}, Los;->m(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    move v4, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v0

    .line 34
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v4

    .line 38
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    return v1
.end method

.method public static n(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    sget-object v0, Lzt;->a:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lyt;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    const v0, 0x7f08009b

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lyt;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lyt;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v3, v1, Lyt;->a:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    iput-object v3, v1, Lyt;->b:Landroid/util/SparseArray;

    .line 34
    .line 35
    iput-object v3, v1, Lyt;->c:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p0, v1, Lyt;->c:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-ne p0, p1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object p0, v1, Lyt;->c:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    iget-object p0, v1, Lyt;->b:Landroid/util/SparseArray;

    .line 59
    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    new-instance p0, Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p0, v1, Lyt;->b:Landroid/util/SparseArray;

    .line 68
    .line 69
    :cond_3
    iget-object p0, v1, Lyt;->b:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ltz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    move-object v4, v3

    .line 99
    :goto_0
    if-nez v4, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    move-object v4, p0

    .line 110
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 111
    .line 112
    :cond_5
    if-eqz v4, :cond_8

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Landroid/view/View;

    .line 119
    .line 120
    if-eqz p0, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    const p1, 0x7f08009c

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/util/ArrayList;

    .line 136
    .line 137
    if-eqz p0, :cond_7

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    sub-int/2addr p1, v1

    .line 144
    if-gez p1, :cond_6

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, LLj;->t(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    throw v3

    .line 155
    :cond_7
    :goto_1
    move v2, v1

    .line 156
    :cond_8
    :goto_2
    return v2
.end method

.method public static o(Lee;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1c

    .line 8
    .line 9
    if-lt v1, v2, :cond_1

    .line 10
    .line 11
    invoke-interface {p0, p3}, Lee;->b(Landroid/view/KeyEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    instance-of v1, p2, Landroid/app/Activity;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    check-cast p2, Landroid/app/Activity;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/app/Activity;->onUserInteraction()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 p1, 0x8

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v1, 0x52

    .line 48
    .line 49
    if-ne v0, v1, :cond_4

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    sget-boolean v0, Los;->l:Z

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "onMenuKeyEvent"

    .line 62
    .line 63
    const-class v4, Landroid/view/KeyEvent;

    .line 64
    .line 65
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Los;->m:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    :catch_0
    sput-boolean v3, Los;->l:Z

    .line 76
    .line 77
    :cond_2
    sget-object v0, Los;->m:Ljava/lang/reflect/Method;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    :try_start_1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_1
    :cond_4
    :goto_0
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0, p3}, Lzt;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    if-eqz p0, :cond_7

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :cond_7
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    :goto_1
    return v3

    .line 130
    :cond_8
    instance-of v1, p2, Landroid/app/Dialog;

    .line 131
    .line 132
    if-eqz v1, :cond_f

    .line 133
    .line 134
    check-cast p2, Landroid/app/Dialog;

    .line 135
    .line 136
    sget-boolean p0, Los;->n:Z

    .line 137
    .line 138
    if-nez p0, :cond_9

    .line 139
    .line 140
    :try_start_2
    const-class p0, Landroid/app/Dialog;

    .line 141
    .line 142
    const-string p1, "mOnKeyListener"

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    sput-object p0, Los;->o:Ljava/lang/reflect/Field;

    .line 149
    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    .line 152
    .line 153
    :catch_2
    sput-boolean v3, Los;->n:Z

    .line 154
    .line 155
    :cond_9
    sget-object p0, Los;->o:Ljava/lang/reflect/Field;

    .line 156
    .line 157
    if-eqz p0, :cond_a

    .line 158
    .line 159
    :try_start_3
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p0, Landroid/content/DialogInterface$OnKeyListener;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_3
    :cond_a
    move-object p0, v2

    .line 167
    :goto_2
    if-eqz p0, :cond_b

    .line 168
    .line 169
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    invoke-interface {p0, p2, p1, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_b

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_b
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_c

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_c
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-static {p0, p3}, Lzt;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_d

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_d
    if-eqz p0, :cond_e

    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    :cond_e
    invoke-virtual {p3, p2, v2, p2}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    :goto_3
    return v3

    .line 213
    :cond_f
    if-eqz p1, :cond_10

    .line 214
    .line 215
    invoke-static {p1, p3}, Lzt;->b(Landroid/view/View;Landroid/view/KeyEvent;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_11

    .line 220
    .line 221
    :cond_10
    invoke-interface {p0, p3}, Lee;->b(Landroid/view/KeyEvent;)Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-eqz p0, :cond_12

    .line 226
    .line 227
    :cond_11
    move v0, v3

    .line 228
    :cond_12
    return v0
.end method

.method public static p([Ljava/lang/Object;ILR5;)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x190

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x2bc

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move p1, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move p1, v2

    .line 19
    :goto_1
    array-length v3, p0

    .line 20
    const/4 v4, 0x0

    .line 21
    const v5, 0x7fffffff

    .line 22
    .line 23
    .line 24
    move v6, v2

    .line 25
    :goto_2
    if-ge v6, v3, :cond_5

    .line 26
    .line 27
    aget-object v7, p0, v6

    .line 28
    .line 29
    invoke-virtual {p2, v7}, LR5;->j(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    sub-int/2addr v8, v0

    .line 34
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    mul-int/lit8 v8, v8, 0x2

    .line 39
    .line 40
    invoke-virtual {p2, v7}, LR5;->n(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-ne v9, p1, :cond_2

    .line 45
    .line 46
    move v9, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    move v9, v1

    .line 49
    :goto_3
    add-int/2addr v8, v9

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    if-le v5, v8, :cond_4

    .line 53
    .line 54
    :cond_3
    move-object v4, v7

    .line 55
    move v5, v8

    .line 56
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    return-object v4
.end method

.method public static r(Ljava/lang/String;)LBf;
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LBf;->c:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x22

    .line 17
    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "typeSubtype.group(1)"

    .line 26
    .line 27
    invoke-static {v3, v4}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 31
    .line 32
    const-string v5, "US"

    .line 33
    .line 34
    invoke-static {v4, v5}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    .line 42
    .line 43
    invoke-static {v3, v5}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string v7, "typeSubtype.group(2)"

    .line 52
    .line 53
    invoke-static {v6, v7}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4, v5}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    sget-object v5, LBf;->d:Ljava/util/regex/Pattern;

    .line 69
    .line 70
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    const/4 v7, 0x0

    .line 83
    if-ge v0, v6, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {v5, v0, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-nez v6, :cond_1

    .line 114
    .line 115
    const/4 v6, 0x3

    .line 116
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    const-string v8, "\'"

    .line 122
    .line 123
    invoke-static {v6, v8, v7}, LOl;->u0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_2

    .line 128
    .line 129
    invoke-static {v6, v8}, LOl;->m0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_2

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-le v7, v3, :cond_2

    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    sub-int/2addr v7, v1

    .line 146
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    const-string v7, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 151
    .line 152
    invoke-static {v6, v7}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    goto :goto_0

    .line 166
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v3, "Parameter is not formatted correctly: \""

    .line 169
    .line 170
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v3, "this as java.lang.String).substring(startIndex)"

    .line 178
    .line 179
    invoke-static {v0, v3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v0, "\" for: \""

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :cond_4
    new-instance v0, LBf;

    .line 211
    .line 212
    new-array v1, v7, [Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    check-cast v1, [Ljava/lang/String;

    .line 219
    .line 220
    invoke-direct {v0, p0, v1}, LBf;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return-object v0

    .line 224
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v1, "No subtype found for: \""

    .line 227
    .line 228
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 242
    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v0
.end method

.method public static s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p0, Ldagger/hilt/internal/GeneratedComponent;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    instance-of v0, p0, Ldagger/hilt/internal/TestSingletonComponent;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    const/4 v4, 0x1

    .line 17
    if-ge v3, v1, :cond_1

    .line 18
    .line 19
    aget-object v5, v0, v3

    .line 20
    .line 21
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v6, "dagger.hilt.android.EarlyEntryPoint"

    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    move v2, v4

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    xor-int/lit8 v0, v2, 0x1

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "Interface, %s, annotated with @EarlyEntryPoint should be called with EarlyEntryPoints.get() rather than EntryPoints.get()"

    .line 53
    .line 54
    invoke-static {v0, v2, v1}, Ldagger/hilt/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3
    instance-of v0, p0, Ldagger/hilt/internal/GeneratedComponentManager;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    check-cast p0, Ldagger/hilt/internal/GeneratedComponentManager;

    .line 67
    .line 68
    invoke-interface {p0}, Ldagger/hilt/internal/GeneratedComponentManager;->generatedComponent()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0, p1}, Los;->s(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "Given component holder "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, " does not implement "

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-class p0, Ldagger/hilt/internal/GeneratedComponent;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, " or "

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-class p0, Ldagger/hilt/internal/GeneratedComponentManager;

    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
.end method

.method public static t(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v1, LNi;

    .line 10
    .line 11
    invoke-direct {v1, v0, p0}, LNi;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, LPi;->c:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    sget-object v3, LPi;->b:Ljava/util/WeakHashMap;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_3

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-lez v5, :cond_3

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, LMi;

    .line 39
    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    iget-object v6, v5, LMi;->b:Landroid/content/res/Configuration;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    if-nez p0, :cond_0

    .line 55
    .line 56
    iget v6, v5, LMi;->c:I

    .line 57
    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 65
    .line 66
    iget v6, v5, LMi;->c:I

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-ne v6, v7, :cond_2

    .line 73
    .line 74
    :cond_1
    iget-object v3, v5, LMi;->a:Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    monitor-exit v2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    .line 80
    .line 81
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    move-object v3, v4

    .line 83
    :goto_1
    if-eqz v3, :cond_4

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_4
    sget-object v2, LPi;->a:Ljava/lang/ThreadLocal;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/util/TypedValue;

    .line 93
    .line 94
    if-nez v3, :cond_5

    .line 95
    .line 96
    new-instance v3, Landroid/util/TypedValue;

    .line 97
    .line 98
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    const/4 v2, 0x1

    .line 105
    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 106
    .line 107
    .line 108
    iget v2, v3, Landroid/util/TypedValue;->type:I

    .line 109
    .line 110
    const/16 v3, 0x1c

    .line 111
    .line 112
    if-lt v2, v3, :cond_6

    .line 113
    .line 114
    const/16 v3, 0x1f

    .line 115
    .line 116
    if-gt v2, v3, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :try_start_1
    invoke-static {v0, v2, p0}, Lg5;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 124
    .line 125
    .line 126
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception v2

    .line 129
    const-string v3, "ResourcesCompat"

    .line 130
    .line 131
    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    .line 132
    .line 133
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .line 135
    .line 136
    :goto_2
    if-eqz v4, :cond_8

    .line 137
    .line 138
    sget-object v2, LPi;->c:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter v2

    .line 141
    :try_start_2
    sget-object v0, LPi;->b:Ljava/util/WeakHashMap;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Landroid/util/SparseArray;

    .line 148
    .line 149
    if-nez v3, :cond_7

    .line 150
    .line 151
    new-instance v3, Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catchall_1
    move-exception p0

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    :goto_3
    new-instance v0, LMi;

    .line 163
    .line 164
    iget-object v1, v1, LNi;->a:Landroid/content/res/Resources;

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v4, v1, p0}, LMi;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    monitor-exit v2

    .line 177
    move-object v3, v4

    .line 178
    goto :goto_5

    .line 179
    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    throw p0

    .line 181
    :cond_8
    invoke-static {v0, p1, p0}, LLi;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    :goto_5
    return-object v3

    .line 186
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    throw p0
.end method

.method public static u(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, LKi;->c()LKi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, LKi;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final v(III)I
    .locals 1

    .line 1
    if-lez p2, :cond_4

    .line 2
    .line 3
    if-lt p0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_6

    .line 6
    :cond_0
    rem-int v0, p1, p2

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    add-int/2addr v0, p2

    .line 12
    :goto_0
    rem-int/2addr p0, p2

    .line 13
    if-ltz p0, :cond_2

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_2
    add-int/2addr p0, p2

    .line 17
    :goto_1
    sub-int/2addr v0, p0

    .line 18
    rem-int/2addr v0, p2

    .line 19
    if-ltz v0, :cond_3

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_3
    add-int/2addr v0, p2

    .line 23
    :goto_2
    sub-int/2addr p1, v0

    .line 24
    goto :goto_6

    .line 25
    :cond_4
    if-gez p2, :cond_9

    .line 26
    .line 27
    if-gt p0, p1, :cond_5

    .line 28
    .line 29
    goto :goto_6

    .line 30
    :cond_5
    neg-int p2, p2

    .line 31
    rem-int/2addr p0, p2

    .line 32
    if-ltz p0, :cond_6

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_6
    add-int/2addr p0, p2

    .line 36
    :goto_3
    rem-int v0, p1, p2

    .line 37
    .line 38
    if-ltz v0, :cond_7

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_7
    add-int/2addr v0, p2

    .line 42
    :goto_4
    sub-int/2addr p0, v0

    .line 43
    rem-int/2addr p0, p2

    .line 44
    if-ltz p0, :cond_8

    .line 45
    .line 46
    goto :goto_5

    .line 47
    :cond_8
    add-int/2addr p0, p2

    .line 48
    :goto_5
    add-int/2addr p1, p0

    .line 49
    :goto_6
    return p1

    .line 50
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p1, "Step is zero."

    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public static final w(Lp6;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Ls6;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 18
    .line 19
    :try_start_0
    check-cast v1, Ll1;

    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Ll1;->D(Lp6;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    if-ne p1, v1, :cond_0

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v3, "Exception while trying to handle coroutine exception"

    .line 33
    .line 34
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2, p1}, Le4;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :try_start_1
    new-instance v0, Lm7;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lm7;-><init>(Lp6;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Le4;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static x(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)LIa;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_0

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-ne v1, v3, :cond_f

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v4, "font-family"

    .line 18
    .line 19
    move-object/from16 v5, p0

    .line 20
    .line 21
    invoke-interface {v5, v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_e

    .line 33
    .line 34
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget-object v6, LNh;->b:[I

    .line 39
    .line 40
    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const/4 v8, 0x4

    .line 50
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    const/4 v10, 0x5

    .line 55
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-virtual {v4, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    const/4 v14, 0x3

    .line 68
    const/16 v15, 0x1f4

    .line 69
    .line 70
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    const/4 v1, 0x6

    .line 75
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .line 81
    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    if-eqz v9, :cond_2

    .line 85
    .line 86
    if-eqz v11, :cond_2

    .line 87
    .line 88
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eq v1, v14, :cond_1

    .line 93
    .line 94
    invoke-static/range {p0 .. p0}, Los;->B(Landroid/content/res/XmlResourceParser;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    invoke-static {v0, v12}, Los;->z(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, LLa;

    .line 103
    .line 104
    new-instance v2, LAa;

    .line 105
    .line 106
    invoke-direct {v2, v7, v9, v11, v0}, LAa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2, v13, v15, v8}, LLa;-><init>(LAa;IILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_b

    .line 113
    .line 114
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eq v7, v14, :cond_c

    .line 124
    .line 125
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eq v7, v3, :cond_3

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    const-string v8, "font"

    .line 137
    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    if-eqz v7, :cond_b

    .line 143
    .line 144
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    sget-object v8, LNh;->c:[I

    .line 149
    .line 150
    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const/16 v8, 0x8

    .line 155
    .line 156
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 157
    .line 158
    .line 159
    move-result v9

    .line 160
    if-eqz v9, :cond_4

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move v8, v2

    .line 164
    :goto_3
    const/16 v9, 0x190

    .line 165
    .line 166
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 167
    .line 168
    .line 169
    move-result v17

    .line 170
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_5

    .line 175
    .line 176
    move v8, v1

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move v8, v3

    .line 179
    :goto_4
    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    if-ne v2, v8, :cond_6

    .line 184
    .line 185
    move/from16 v22, v2

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_6
    move/from16 v22, v6

    .line 189
    .line 190
    :goto_5
    const/16 v8, 0x9

    .line 191
    .line 192
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eqz v9, :cond_7

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_7
    move v8, v14

    .line 200
    :goto_6
    const/4 v9, 0x7

    .line 201
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_8

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_8
    const/4 v9, 0x4

    .line 209
    :goto_7
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v21

    .line 213
    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 214
    .line 215
    .line 216
    move-result v18

    .line 217
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-eqz v8, :cond_9

    .line 222
    .line 223
    move v8, v10

    .line 224
    goto :goto_8

    .line 225
    :cond_9
    move v8, v6

    .line 226
    :goto_8
    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 227
    .line 228
    .line 229
    move-result v19

    .line 230
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v20

    .line 234
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    .line 236
    .line 237
    :goto_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-eq v7, v14, :cond_a

    .line 242
    .line 243
    invoke-static/range {p0 .. p0}, Los;->B(Landroid/content/res/XmlResourceParser;)V

    .line 244
    .line 245
    .line 246
    goto :goto_9

    .line 247
    :cond_a
    new-instance v7, LKa;

    .line 248
    .line 249
    move-object/from16 v16, v7

    .line 250
    .line 251
    invoke-direct/range {v16 .. v22}, LKa;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :cond_b
    invoke-static/range {p0 .. p0}, Los;->B(Landroid/content/res/XmlResourceParser;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_2

    .line 263
    .line 264
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_d

    .line 269
    .line 270
    goto :goto_a

    .line 271
    :cond_d
    new-instance v1, LJa;

    .line 272
    .line 273
    new-array v0, v6, [LKa;

    .line 274
    .line 275
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    check-cast v0, [LKa;

    .line 280
    .line 281
    invoke-direct {v1, v0}, LJa;-><init>([LKa;)V

    .line 282
    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_e
    invoke-static/range {p0 .. p0}, Los;->B(Landroid/content/res/XmlResourceParser;)V

    .line 286
    .line 287
    .line 288
    :goto_a
    const/4 v1, 0x0

    .line 289
    :goto_b
    return-object v1

    .line 290
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 291
    .line 292
    const-string v1, "No start tag found"

    .line 293
    .line 294
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0
.end method

.method public static final y(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "method"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "GET"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "HEAD"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public static z(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_3

    .line 28
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v0, v2}, LHa;->a(Landroid/content/res/TypedArray;I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x1

    .line 39
    if-ne v3, v4, :cond_4

    .line 40
    .line 41
    move p1, v2

    .line 42
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ge p1, v3, :cond_6

    .line 47
    .line 48
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    array-length v5, v3

    .line 64
    move v6, v2

    .line 65
    :goto_1
    if-ge v6, v5, :cond_2

    .line 66
    .line 67
    aget-object v7, v3, v6

    .line 68
    .line 69
    invoke-static {v7, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    array-length v3, p0

    .line 95
    move v4, v2

    .line 96
    :goto_2
    if-ge v4, v3, :cond_5

    .line 97
    .line 98
    aget-object v5, p0, v4

    .line 99
    .line 100
    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    .line 119
    .line 120
    throw p0
.end method


# virtual methods
.method public abstract H(LSh;)V
.end method

.method public abstract g()J
.end method

.method public abstract h()LBf;
.end method

.method public abstract i(Landroid/content/Context;LJa;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
.end method

.method public abstract j(Landroid/content/Context;[LMa;I)Landroid/graphics/Typeface;
.end method

.method public k(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    invoke-static {p1}, Le4;->u(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Le4;->j(Ljava/io/File;Ljava/io/InputStream;)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public l(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-static {p1}, Le4;->u(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p4, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p4

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Le4;->i(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 16
    .line 17
    .line 18
    return-object p4

    .line 19
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 24
    .line 25
    .line 26
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    return-object p2

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-object p4
.end method

.method public q(I[LMa;)LMa;
    .locals 2

    .line 1
    new-instance v0, LR5;

    .line 2
    .line 3
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, LR5;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p1, v0}, Los;->p([Ljava/lang/Object;ILR5;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, LMa;

    .line 13
    .line 14
    return-object p1
.end method
