.class public final Lcom/twntool/android/bridge/TwnBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:J

.field public final B:D

.field public final C:D

.field public final D:I

.field public final E:D

.field public final F:J

.field public final G:I

.field public final H:J

.field public final I:J

.field public final J:I

.field public final K:I

.field public volatile L:J

.field public final M:I

.field public volatile N:Z

.field public final a:Lcom/twntool/auth/AuthManager;

.field public final b:Lcom/twntool/game/AppState;

.field public final c:Lcom/twntool/game/ConnectGameUseCase;

.field public final d:Lcom/twntool/game/SendGameUseCase;

.field public final e:Lcom/twntool/township/TownshipEngine;

.field public final f:Lcom/twntool/game/TownshipBackupUseCase;

.field public final g:Lcom/twntool/px/PxEngine;

.field public final h:Lcom/twntool/game/RoyalEngine;

.field public final i:Lcom/twntool/fishdom/FishdomEngine;

.field public final j:Lcom/twntool/familyisland/FamilyIslandEngine;

.field public final k:Lcom/twntool/simcity/SimCityEngine;

.field public final l:Lcom/twntool/i18n/I18nManager;

.field public final m:Lcom/twntool/network/VpsConfig;

.field public final n:LXi;

.field public final o:Lcom/twntool/network/ApiClient;

.field public final p:LZb;

.field public q:Landroid/webkit/WebView;

.field public r:Lw6;

.field public final s:Lmg;

.field public final t:J

.field public final u:J

.field public v:Ljava/lang/ref/WeakReference;

.field public final w:Landroid/os/Handler;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Lcom/twntool/auth/AuthManager;Lcom/twntool/game/AppState;Lcom/twntool/game/ConnectGameUseCase;Lcom/twntool/game/SendGameUseCase;Lcom/twntool/township/TownshipEngine;Lcom/twntool/game/TownshipBackupUseCase;Lcom/twntool/px/PxEngine;Lcom/twntool/game/RoyalEngine;Lcom/twntool/fishdom/FishdomEngine;Lcom/twntool/familyisland/FamilyIslandEngine;Lcom/twntool/simcity/SimCityEngine;Lcom/twntool/i18n/I18nManager;Lcom/twntool/network/VpsConfig;LXi;Lcom/twntool/network/ApiClient;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "authManager"

    invoke-static {v1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {v2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectUseCase"

    invoke-static {v3, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendUseCase"

    invoke-static {v4, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "townshipEngine"

    invoke-static {v5, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "townshipBackup"

    invoke-static {v6, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pxEngine"

    invoke-static {v7, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "royalEngine"

    invoke-static {v8, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fishdomEngine"

    invoke-static {v9, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "familyIslandEngine"

    invoke-static {v10, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simCityEngine"

    invoke-static {v11, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "i18n"

    invoke-static {v12, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vpsConfig"

    invoke-static {v13, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {v14, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {v15, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 2
    iput-object v1, v0, Lcom/twntool/android/bridge/TwnBridge;->a:Lcom/twntool/auth/AuthManager;

    .line 3
    iput-object v2, v0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 4
    iput-object v3, v0, Lcom/twntool/android/bridge/TwnBridge;->c:Lcom/twntool/game/ConnectGameUseCase;

    .line 5
    iput-object v4, v0, Lcom/twntool/android/bridge/TwnBridge;->d:Lcom/twntool/game/SendGameUseCase;

    .line 6
    iput-object v5, v0, Lcom/twntool/android/bridge/TwnBridge;->e:Lcom/twntool/township/TownshipEngine;

    .line 7
    iput-object v6, v0, Lcom/twntool/android/bridge/TwnBridge;->f:Lcom/twntool/game/TownshipBackupUseCase;

    .line 8
    iput-object v7, v0, Lcom/twntool/android/bridge/TwnBridge;->g:Lcom/twntool/px/PxEngine;

    .line 9
    iput-object v8, v0, Lcom/twntool/android/bridge/TwnBridge;->h:Lcom/twntool/game/RoyalEngine;

    .line 10
    iput-object v9, v0, Lcom/twntool/android/bridge/TwnBridge;->i:Lcom/twntool/fishdom/FishdomEngine;

    .line 11
    iput-object v10, v0, Lcom/twntool/android/bridge/TwnBridge;->j:Lcom/twntool/familyisland/FamilyIslandEngine;

    .line 12
    iput-object v11, v0, Lcom/twntool/android/bridge/TwnBridge;->k:Lcom/twntool/simcity/SimCityEngine;

    .line 13
    iput-object v12, v0, Lcom/twntool/android/bridge/TwnBridge;->l:Lcom/twntool/i18n/I18nManager;

    .line 14
    iput-object v13, v0, Lcom/twntool/android/bridge/TwnBridge;->m:Lcom/twntool/network/VpsConfig;

    .line 15
    iput-object v14, v0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 16
    iput-object v15, v0, Lcom/twntool/android/bridge/TwnBridge;->o:Lcom/twntool/network/ApiClient;

    .line 17
    new-instance v1, LZb;

    invoke-direct {v1}, LZb;-><init>()V

    iput-object v1, v0, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 18
    invoke-static {}, Le4;->a()Lmg;

    move-result-object v1

    iput-object v1, v0, Lcom/twntool/android/bridge/TwnBridge;->s:Lmg;

    const-wide/32 v1, 0x15f90

    .line 19
    iput-wide v1, v0, Lcom/twntool/android/bridge/TwnBridge;->t:J

    const-wide/32 v1, 0x493e0

    .line 20
    iput-wide v1, v0, Lcom/twntool/android/bridge/TwnBridge;->u:J

    .line 21
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/twntool/android/bridge/TwnBridge;->w:Landroid/os/Handler;

    const/4 v1, 0x6

    .line 22
    iput v1, v0, Lcom/twntool/android/bridge/TwnBridge;->x:I

    const/4 v1, 0x3

    .line 23
    iput v1, v0, Lcom/twntool/android/bridge/TwnBridge;->y:I

    const/16 v2, 0xa

    .line 24
    iput v2, v0, Lcom/twntool/android/bridge/TwnBridge;->z:I

    const-wide/16 v2, 0x5dc

    .line 25
    iput-wide v2, v0, Lcom/twntool/android/bridge/TwnBridge;->A:J

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 26
    iput-wide v4, v0, Lcom/twntool/android/bridge/TwnBridge;->B:D

    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 27
    iput-wide v4, v0, Lcom/twntool/android/bridge/TwnBridge;->C:D

    const/16 v4, 0x19

    .line 28
    iput v4, v0, Lcom/twntool/android/bridge/TwnBridge;->D:I

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 29
    iput-wide v4, v0, Lcom/twntool/android/bridge/TwnBridge;->E:D

    const-wide/16 v4, 0xbb8

    .line 30
    iput-wide v4, v0, Lcom/twntool/android/bridge/TwnBridge;->F:J

    .line 31
    iput v1, v0, Lcom/twntool/android/bridge/TwnBridge;->G:I

    .line 32
    iput-wide v2, v0, Lcom/twntool/android/bridge/TwnBridge;->H:J

    const-wide/16 v1, 0x4e20

    .line 33
    iput-wide v1, v0, Lcom/twntool/android/bridge/TwnBridge;->I:J

    const/16 v1, 0x96

    .line 34
    iput v1, v0, Lcom/twntool/android/bridge/TwnBridge;->J:I

    const/4 v1, 0x5

    .line 35
    iput v1, v0, Lcom/twntool/android/bridge/TwnBridge;->K:I

    const/16 v1, 0x1e

    .line 36
    iput v1, v0, Lcom/twntool/android/bridge/TwnBridge;->M:I

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, v0, Lcom/twntool/android/bridge/TwnBridge;->N:Z

    .line 38
    const-string v1, "earnedStars"

    const-string v2, "energia"

    const-string v3, "name"

    const-string v4, "coins"

    const-string v5, "level"

    const-string v6, "stars"

    const-string v7, "expEnergy"

    const-string v8, "firstPlayTime"

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    filled-new-array/range {p1 .. p8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LQk;->P([Ljava/lang/Object;)Ljava/util/Set;

    .line 39
    const-string v1, "created"

    const-string v2, "colecoes"

    const-string v3, "nick"

    const-string v4, "coins"

    const-string v5, "cash"

    const-string v6, "level"

    const-string v7, "total_crowns"

    const-string v8, "max_score"

    const-string v9, "league_wins"

    const-string v10, "first_wins"

    const-string v11, "helps_sent"

    const-string v12, "helps_recv"

    const-string v13, "crowns"

    const-string v14, "torneio"

    const-string v15, "liga_niveis"

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v1

    move-object/from16 p13, v2

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    filled-new-array/range {p1 .. p15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LQk;->P([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public static A(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "toLowerCase(...)"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, ".xml"

    .line 13
    .line 14
    invoke-static {p0, v0}, LOl;->m0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, ".txt"

    .line 21
    .line 22
    invoke-static {p0, v0}, LOl;->m0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string v0, ".sav"

    .line 29
    .line 30
    invoke-static {p0, v0}, LOl;->m0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string v0, ".bak"

    .line 37
    .line 38
    invoke-static {p0, v0}, LOl;->m0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const-string v0, "mgameinfo"

    .line 45
    .line 46
    invoke-static {p0, v0}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-static {p0, v0, v1}, LOl;->u0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    :cond_0
    const/4 v1, 0x1

    .line 60
    :cond_1
    return v1
.end method

.method public static final C(Lig;IILcom/twntool/android/bridge/TwnBridge;Lfi;Lfi;Ljava/util/HashMap;Ljava/util/List;Lgi;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Li6;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    const-string v2, "falhas"

    const-string v3, "enviados"

    instance-of v4, v1, LWp;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, LWp;

    iget v5, v4, LWp;->u:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, LWp;->u:I

    goto :goto_0

    :cond_0
    new-instance v4, LWp;

    .line 1
    invoke-direct {v4, v1}, Lj6;-><init>(Li6;)V

    .line 2
    :goto_0
    iget-object v1, v4, LWp;->t:Ljava/lang/Object;

    sget-object v5, Lx6;->a:Lx6;

    .line 3
    iget v6, v4, LWp;->u:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v7, :cond_1

    iget-boolean v0, v4, LWp;->s:Z

    iget v5, v4, LWp;->e:I

    iget v6, v4, LWp;->d:I

    iget-object v8, v4, LWp;->r:Lig;

    iget-object v9, v4, LWp;->q:Lei;

    iget-object v10, v4, LWp;->p:Lfi;

    iget-object v11, v4, LWp;->o:Ljava/lang/String;

    iget-object v12, v4, LWp;->n:Ljava/lang/String;

    iget-object v13, v4, LWp;->m:Ljava/lang/String;

    iget-object v14, v4, LWp;->l:Lgi;

    iget-object v15, v4, LWp;->k:Ljava/util/List;

    iget-object v7, v4, LWp;->j:Ljava/util/HashMap;

    move/from16 p0, v0

    iget-object v0, v4, LWp;->h:Lfi;

    move-object/from16 p1, v0

    iget-object v0, v4, LWp;->g:Lfi;

    iget-object v4, v4, LWp;->f:Lcom/twntool/android/bridge/TwnBridge;

    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v9, p0

    move-object v10, v8

    move-object v8, v7

    move-object/from16 v7, p1

    move-object/from16 v19, v15

    move-object v15, v11

    move-object/from16 v11, v19

    move-object/from16 v20, v14

    move-object v14, v12

    move-object/from16 v12, v20

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 4
    new-instance v10, Lfi;

    .line 5
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v9, Lei;

    .line 7
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p3

    .line 8
    iput-object v1, v4, LWp;->f:Lcom/twntool/android/bridge/TwnBridge;

    move-object/from16 v6, p4

    iput-object v6, v4, LWp;->g:Lfi;

    move-object/from16 v7, p5

    iput-object v7, v4, LWp;->h:Lfi;

    move-object/from16 v8, p6

    iput-object v8, v4, LWp;->j:Ljava/util/HashMap;

    move-object/from16 v11, p7

    iput-object v11, v4, LWp;->k:Ljava/util/List;

    move-object/from16 v12, p8

    iput-object v12, v4, LWp;->l:Lgi;

    move-object/from16 v13, p9

    iput-object v13, v4, LWp;->m:Ljava/lang/String;

    move-object/from16 v14, p10

    iput-object v14, v4, LWp;->n:Ljava/lang/String;

    move-object/from16 v15, p12

    iput-object v15, v4, LWp;->o:Ljava/lang/String;

    iput-object v10, v4, LWp;->p:Lfi;

    iput-object v9, v4, LWp;->q:Lei;

    iput-object v0, v4, LWp;->r:Lig;

    move/from16 v1, p1

    iput v1, v4, LWp;->d:I

    move/from16 v1, p2

    iput v1, v4, LWp;->e:I

    move/from16 v1, p11

    iput-boolean v1, v4, LWp;->s:Z

    const/4 v1, 0x1

    iput v1, v4, LWp;->u:I

    check-cast v0, Lmg;

    invoke-virtual {v0, v4}, Lmg;->c(Li6;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_3

    return-object v5

    :cond_3
    move/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v9, p11

    move-object v10, v0

    move-object v0, v6

    move/from16 v6, p1

    .line 9
    :goto_1
    :try_start_0
    iget v1, v0, Lfi;->a:I

    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfi;->a:I

    move-object/from16 v0, v17

    .line 10
    iput v1, v0, Lfi;->a:I

    if-eqz v9, :cond_4

    .line 11
    iget v1, v7, Lfi;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lfi;->a:I

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lud;->o(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lud;->o(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lud;->o(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .line 12
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 13
    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 14
    :cond_4
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lud;->o(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lud;->o(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lud;->o(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v7, 0x1

    add-int/2addr v3, v7

    .line 15
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 16
    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v1, "card_id"

    .line 18
    new-instance v2, Lih;

    invoke-direct {v2, v1, v14}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    const-string v1, "city"

    .line 20
    new-instance v3, Lih;

    invoke-direct {v3, v1, v13}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    const-string v1, "erro"

    .line 22
    new-instance v8, Lih;

    invoke-direct {v8, v1, v15}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    filled-new-array {v2, v3, v8}, [Lih;

    move-result-object v1

    invoke-static {v1}, Lvf;->n0([Lih;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v9, :cond_6

    .line 25
    iget v3, v0, Lfi;->a:I

    if-eq v3, v6, :cond_6

    iget-wide v7, v12, Lgi;->a:J

    sub-long v7, v1, v7

    const-wide/16 v17, 0x50

    cmp-long v3, v7, v17

    if-ltz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    move-object/from16 v3, v16

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v3, v16

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, v3, Lei;->a:Z

    if-eqz v7, :cond_7

    .line 26
    iput-wide v1, v12, Lgi;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_7
    check-cast v10, Lmg;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lmg;->d(Ljava/lang/Object;)V

    if-eqz v9, :cond_8

    .line 28
    iget v1, v0, Lfi;->a:I

    if-eq v1, v6, :cond_8

    rem-int/2addr v1, v5

    if-nez v1, :cond_a

    .line 29
    :cond_8
    iget v1, v0, Lfi;->a:I

    if-eqz v9, :cond_9

    const-string v2, "OK"

    goto :goto_5

    :cond_9
    const-string v2, "FALHA"

    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    .line 30
    invoke-static {v5, v1, v2}, Lrl;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v2, "d"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v1, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_a
    iget-boolean v1, v3, Lei;->a:Z

    if-eqz v1, :cond_c

    .line 33
    iget v0, v0, Lfi;->a:I

    .line 34
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 35
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v9, :cond_b

    .line 36
    const-string v3, ""

    goto :goto_6

    :cond_b
    move-object v3, v15

    :goto_6
    move-object/from16 p0, v1

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v14

    move-object/from16 p4, v3

    move-object/from16 p5, v13

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object v0

    .line 37
    const-string v1, "js_on_enviar_carta_progresso"

    invoke-virtual {v4, v1, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_c
    sget-object v0, Ly1;->r:Ly1;

    return-object v0

    .line 39
    :goto_7
    check-cast v10, Lmg;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lmg;->d(Ljava/lang/Object;)V

    throw v0
.end method

.method public static final a(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 p2, 0x1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string p0, "/"

    .line 13
    .line 14
    filled-new-array {p0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x6

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p1, p0, v1, v0}, LGl;->Q0(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v2, v0

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-lez v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/4 v0, 0x3

    .line 61
    if-lt p0, v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v0, "data"

    .line 68
    .line 69
    invoke-static {p0, v0}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, "user"

    .line 80
    .line 81
    invoke-static {p0, v0}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    const/4 p0, 0x2

    .line 88
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "0"

    .line 93
    .line 94
    invoke-static {p0, p1}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move p2, v1

    .line 102
    :goto_1
    return p2
.end method

.method public static final b(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of p0, p1, Ljava/util/Map;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    check-cast p1, Ljava/util/Map;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p1, v0

    .line 13
    :goto_0
    const/4 p0, 0x0

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_1
    const-string v1, "total"

    .line 19
    .line 20
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    instance-of v2, v1, Ljava/lang/Number;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Number;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move-object v1, v0

    .line 32
    :goto_1
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    goto :goto_7

    .line 39
    :cond_3
    const-string v1, "cb_args"

    .line 40
    .line 41
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    instance-of v2, v1, Ljava/util/List;

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    check-cast v1, Ljava/util/List;

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    move-object v1, v0

    .line 53
    :goto_2
    if-eqz v1, :cond_5

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-static {v1, v2}, LY4;->y0(Ljava/util/List;I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    move-object v1, v0

    .line 62
    :goto_3
    instance-of v2, v1, Ljava/lang/Number;

    .line 63
    .line 64
    if-eqz v2, :cond_6

    .line 65
    .line 66
    check-cast v1, Ljava/lang/Number;

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    move-object v1, v0

    .line 70
    :goto_4
    if-eqz v1, :cond_7

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    goto :goto_7

    .line 77
    :cond_7
    const-string v1, "args"

    .line 78
    .line 79
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    instance-of v1, p1, Ljava/util/List;

    .line 84
    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    check-cast p1, Ljava/util/List;

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_8
    move-object p1, v0

    .line 91
    :goto_5
    if-eqz p1, :cond_9

    .line 92
    .line 93
    invoke-static {p1, p0}, LY4;->y0(Ljava/util/List;I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_6

    .line 98
    :cond_9
    move-object p1, v0

    .line 99
    :goto_6
    instance-of v1, p1, Ljava/lang/Number;

    .line 100
    .line 101
    if-eqz v1, :cond_a

    .line 102
    .line 103
    move-object v0, p1

    .line 104
    check-cast v0, Ljava/lang/Number;

    .line 105
    .line 106
    :cond_a
    if-eqz v0, :cond_b

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    :cond_b
    :goto_7
    return p0
.end method

.method public static final c(Lcom/twntool/android/bridge/TwnBridge;LJb;[BLi6;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p3, Lpo;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p3

    .line 9
    check-cast v0, Lpo;

    .line 10
    .line 11
    iget v1, v0, Lpo;->j:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lpo;->j:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lpo;

    .line 24
    .line 25
    invoke-direct {v0, p0, p3}, Lpo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p3, v0, Lpo;->g:Ljava/lang/Object;

    .line 29
    .line 30
    sget-object v1, Lx6;->a:Lx6;

    .line 31
    .line 32
    iget v2, v0, Lpo;->j:I

    .line 33
    .line 34
    const-string v3, "e"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    packed-switch v2, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :pswitch_0
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :pswitch_1
    iget-object p0, v0, Lpo;->e:LJb;

    .line 54
    .line 55
    iget-object p1, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 56
    .line 57
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :pswitch_2
    iget-object p0, v0, Lpo;->f:Ljava/io/Serializable;

    .line 63
    .line 64
    check-cast p0, Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, v0, Lpo;->e:LJb;

    .line 67
    .line 68
    iget-object p2, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 69
    .line 70
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :pswitch_3
    iget-object p0, v0, Lpo;->f:Ljava/io/Serializable;

    .line 76
    .line 77
    check-cast p0, Ljava/lang/String;

    .line 78
    .line 79
    iget-object p1, v0, Lpo;->e:LJb;

    .line 80
    .line 81
    iget-object p2, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 82
    .line 83
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_4
    iget-object p0, v0, Lpo;->f:Ljava/io/Serializable;

    .line 89
    .line 90
    check-cast p0, [B

    .line 91
    .line 92
    iget-object p1, v0, Lpo;->e:LJb;

    .line 93
    .line 94
    iget-object p2, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 95
    .line 96
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :pswitch_5
    iget-object p0, v0, Lpo;->f:Ljava/io/Serializable;

    .line 102
    .line 103
    move-object p2, p0

    .line 104
    check-cast p2, [B

    .line 105
    .line 106
    iget-object p1, v0, Lpo;->e:LJb;

    .line 107
    .line 108
    iget-object p0, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 109
    .line 110
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :pswitch_6
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iput-object p0, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 118
    .line 119
    iput-object p1, v0, Lpo;->e:LJb;

    .line 120
    .line 121
    iput-object p2, v0, Lpo;->f:Ljava/io/Serializable;

    .line 122
    .line 123
    const/4 p3, 0x1

    .line 124
    iput p3, v0, Lpo;->j:I

    .line 125
    .line 126
    iget-object p3, p0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 127
    .line 128
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 129
    .line 130
    invoke-virtual {p3, v0}, Lcom/twntool/root/RootManagerImpl;->l(Li6;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    if-ne p3, v1, :cond_1

    .line 135
    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :cond_1
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    if-nez p3, :cond_2

    .line 145
    .line 146
    const-string p1, "no_root_simple"

    .line 147
    .line 148
    invoke-virtual {p0, v3, p1, v4}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/twntool/android/bridge/TwnBridge;->o:Lcom/twntool/network/ApiClient;

    .line 156
    .line 157
    iget-object p3, p1, LJb;->a:LLb;

    .line 158
    .line 159
    invoke-virtual {p3}, LLb;->b()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    iget-object v7, p1, LJb;->e:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const-string p3, "game"

    .line 169
    .line 170
    invoke-static {v6, p3}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string p3, "filename"

    .line 174
    .line 175
    invoke-static {v7, p3}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string p3, "data"

    .line 179
    .line 180
    invoke-static {p2, p3}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p2}, Lcom/twntool/network/ApiClient;->m([B)[B

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    const/4 v9, 0x0

    .line 188
    const/4 v10, 0x0

    .line 189
    invoke-virtual/range {v5 .. v10}, Lcom/twntool/network/ApiClient;->i(Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)[B

    .line 190
    .line 191
    .line 192
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    iput-object p0, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 194
    .line 195
    iput-object p1, v0, Lpo;->e:LJb;

    .line 196
    .line 197
    iput-object p2, v0, Lpo;->f:Ljava/io/Serializable;

    .line 198
    .line 199
    const/4 p3, 0x2

    .line 200
    iput p3, v0, Lpo;->j:I

    .line 201
    .line 202
    iget-object p3, p0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 203
    .line 204
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 205
    .line 206
    iget-object v2, p1, LJb;->c:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p3, v2, v0}, Lcom/twntool/root/RootManagerImpl;->j(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p3

    .line 212
    if-ne p3, v1, :cond_3

    .line 213
    .line 214
    goto/16 :goto_7

    .line 215
    .line 216
    :cond_3
    move-object v11, p2

    .line 217
    move-object p2, p0

    .line 218
    move-object p0, v11

    .line 219
    :goto_2
    iget-object p3, p1, LJb;->d:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v2, p2, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 222
    .line 223
    iput-object p2, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 224
    .line 225
    iput-object p1, v0, Lpo;->e:LJb;

    .line 226
    .line 227
    iput-object p3, v0, Lpo;->f:Ljava/io/Serializable;

    .line 228
    .line 229
    const/4 v5, 0x3

    .line 230
    iput v5, v0, Lpo;->j:I

    .line 231
    .line 232
    check-cast v2, Lcom/twntool/root/RootManagerImpl;

    .line 233
    .line 234
    invoke-virtual {v2, p3, p0, v0}, Lcom/twntool/root/RootManagerImpl;->s(Ljava/lang/String;[BLi6;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    if-ne p0, v1, :cond_4

    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_4
    move-object v11, p3

    .line 243
    move-object p3, p0

    .line 244
    move-object p0, v11

    .line 245
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    .line 246
    .line 247
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 248
    .line 249
    .line 250
    move-result p3

    .line 251
    if-nez p3, :cond_5

    .line 252
    .line 253
    const-string p0, "write_save_fail"

    .line 254
    .line 255
    invoke-virtual {p2, v3, p0, v4}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 259
    .line 260
    goto/16 :goto_7

    .line 261
    .line 262
    :cond_5
    const/16 p3, 0x2f

    .line 263
    .line 264
    invoke-static {p0, p3, p0}, LGl;->V0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    iget-object v2, p2, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 269
    .line 270
    const-string v3, "stat -c \'%U:%G\' "

    .line 271
    .line 272
    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    iput-object p2, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 277
    .line 278
    iput-object p1, v0, Lpo;->e:LJb;

    .line 279
    .line 280
    iput-object p0, v0, Lpo;->f:Ljava/io/Serializable;

    .line 281
    .line 282
    const/4 v3, 0x4

    .line 283
    iput v3, v0, Lpo;->j:I

    .line 284
    .line 285
    check-cast v2, Lcom/twntool/root/RootManagerImpl;

    .line 286
    .line 287
    invoke-virtual {v2, p3, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p3

    .line 291
    if-ne p3, v1, :cond_6

    .line 292
    .line 293
    goto/16 :goto_7

    .line 294
    .line 295
    :cond_6
    :goto_4
    check-cast p3, LSk;

    .line 296
    .line 297
    iget-object p3, p3, LSk;->b:Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {p3}, LGl;->Y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p3

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    const-string v5, "\'; "

    .line 317
    .line 318
    if-lez v3, :cond_7

    .line 319
    .line 320
    const-string v3, "chown "

    .line 321
    .line 322
    const-string v6, " \'"

    .line 323
    .line 324
    invoke-static {v3, p3, v6, p0, v5}, LLj;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p3

    .line 328
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v3, "chmod 660 \'"

    .line 334
    .line 335
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p3

    .line 348
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    new-instance p3, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v3, "restorecon \'"

    .line 354
    .line 355
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string p0, "\' 2>/dev/null || true"

    .line 362
    .line 363
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    const-string p3, "toString(...)"

    .line 378
    .line 379
    invoke-static {p0, p3}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object p3, p2, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 383
    .line 384
    iput-object p2, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 385
    .line 386
    iput-object p1, v0, Lpo;->e:LJb;

    .line 387
    .line 388
    iput-object v4, v0, Lpo;->f:Ljava/io/Serializable;

    .line 389
    .line 390
    const/4 v2, 0x5

    .line 391
    iput v2, v0, Lpo;->j:I

    .line 392
    .line 393
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 394
    .line 395
    invoke-virtual {p3, p0, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    if-ne p0, v1, :cond_8

    .line 400
    .line 401
    goto :goto_7

    .line 402
    :cond_8
    move-object p0, p1

    .line 403
    move-object p1, p2

    .line 404
    :goto_5
    iget-object p0, p0, LJb;->g:Ljava/lang/String;

    .line 405
    .line 406
    if-eqz p0, :cond_a

    .line 407
    .line 408
    iget-object p1, p1, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 409
    .line 410
    iput-object v4, v0, Lpo;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 411
    .line 412
    iput-object v4, v0, Lpo;->e:LJb;

    .line 413
    .line 414
    const/4 p2, 0x6

    .line 415
    iput p2, v0, Lpo;->j:I

    .line 416
    .line 417
    check-cast p1, Lcom/twntool/root/RootManagerImpl;

    .line 418
    .line 419
    invoke-virtual {p1, p0, v0}, Lcom/twntool/root/RootManagerImpl;->e(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object p3

    .line 423
    if-ne p3, v1, :cond_9

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_9
    :goto_6
    check-cast p3, Ljava/lang/Boolean;

    .line 427
    .line 428
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    :cond_a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :catch_0
    move-exception p1

    .line 435
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    const-string p2, "encode_fail"

    .line 440
    .line 441
    invoke-virtual {p0, v3, p2, p1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 445
    .line 446
    :goto_7
    return-object v1

    .line 447
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

.method public static final d(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;[B)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "i"

    .line 7
    .line 8
    const-string v4, "dsb_xml_lendo"

    .line 9
    .line 10
    invoke-virtual {v1, v3, v4, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v3, LD7;->a:Ljava/util/List;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    new-array v4, v3, [B

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object/from16 v4, p2

    .line 22
    .line 23
    :goto_0
    array-length v5, v4

    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    new-instance v4, LA7;

    .line 27
    .line 28
    const-string v5, "O arquivo selecionado est\u00e1 vazio."

    .line 29
    .line 30
    invoke-direct {v4, v5}, LA7;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_1
    sget-object v5, LD7;->a:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lih;

    .line 52
    .line 53
    iget-object v7, v6, Lih;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, [B

    .line 56
    .line 57
    iget-object v6, v6, Lih;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v6, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v4, v7}, LD7;->b([B[B)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_2

    .line 66
    .line 67
    new-instance v4, LA7;

    .line 68
    .line 69
    const-string v5, "O arquivo selecionado \u00e9 "

    .line 70
    .line 71
    const-string v7, ", n\u00e3o um save do Township. Escolha o mGameInfo.xml (ou um XML j\u00e1 decodificado)."

    .line 72
    .line 73
    invoke-static {v5, v6, v7}, LS8;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-direct {v4, v5}, LA7;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :cond_3
    array-length v5, v4

    .line 83
    const/4 v6, 0x0

    .line 84
    if-nez v5, :cond_4

    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_4
    sget-object v5, LD7;->c:[B

    .line 89
    .line 90
    invoke-static {v4, v5}, LD7;->b([B[B)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    const-string v8, "getBytes(...)"

    .line 95
    .line 96
    const-string v9, "<"

    .line 97
    .line 98
    const/4 v10, 0x2

    .line 99
    if-nez v7, :cond_b

    .line 100
    .line 101
    sget-object v7, LD7;->d:[B

    .line 102
    .line 103
    invoke-static {v4, v7}, LD7;->b([B[B)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_5

    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_5
    array-length v5, v4

    .line 112
    const/4 v7, 0x3

    .line 113
    const/16 v11, 0x8

    .line 114
    .line 115
    const/16 v12, 0x3c

    .line 116
    .line 117
    if-lt v5, v11, :cond_6

    .line 118
    .line 119
    aget-byte v5, v4, v3

    .line 120
    .line 121
    if-ne v5, v12, :cond_6

    .line 122
    .line 123
    aget-byte v5, v4, v2

    .line 124
    .line 125
    if-nez v5, :cond_6

    .line 126
    .line 127
    aget-byte v5, v4, v7

    .line 128
    .line 129
    if-nez v5, :cond_6

    .line 130
    .line 131
    new-instance v5, Ljava/lang/String;

    .line 132
    .line 133
    sget-object v7, LG4;->c:Ljava/nio/charset/Charset;

    .line 134
    .line 135
    invoke-direct {v5, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v5}, LGl;->c1(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-static {v7, v9, v3}, LOl;->u0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_d

    .line 151
    .line 152
    sget-object v6, LG4;->a:Ljava/nio/charset/Charset;

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-static {v6, v8}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_5

    .line 162
    .line 163
    :cond_6
    array-length v5, v4

    .line 164
    if-lt v5, v11, :cond_7

    .line 165
    .line 166
    aget-byte v5, v4, v3

    .line 167
    .line 168
    if-nez v5, :cond_7

    .line 169
    .line 170
    aget-byte v5, v4, v2

    .line 171
    .line 172
    if-ne v5, v12, :cond_7

    .line 173
    .line 174
    aget-byte v5, v4, v10

    .line 175
    .line 176
    if-nez v5, :cond_7

    .line 177
    .line 178
    new-instance v5, Ljava/lang/String;

    .line 179
    .line 180
    sget-object v7, LG4;->b:Ljava/nio/charset/Charset;

    .line 181
    .line 182
    invoke-direct {v5, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v5}, LGl;->c1(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    invoke-static {v7, v9, v3}, LOl;->u0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-eqz v7, :cond_d

    .line 198
    .line 199
    sget-object v6, LG4;->a:Ljava/nio/charset/Charset;

    .line 200
    .line 201
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-static {v6, v8}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_7
    sget-object v5, LD7;->b:[B

    .line 210
    .line 211
    invoke-static {v4, v5}, LD7;->b([B[B)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_8

    .line 216
    .line 217
    array-length v5, v4

    .line 218
    invoke-static {v4, v7, v5}, Ly3;->U([BII)[B

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    goto :goto_1

    .line 223
    :cond_8
    move-object v5, v4

    .line 224
    :goto_1
    move v7, v3

    .line 225
    :goto_2
    array-length v8, v5

    .line 226
    if-ge v7, v8, :cond_a

    .line 227
    .line 228
    aget-byte v8, v5, v7

    .line 229
    .line 230
    const/16 v9, 0x20

    .line 231
    .line 232
    if-eq v8, v9, :cond_9

    .line 233
    .line 234
    const/16 v9, 0x9

    .line 235
    .line 236
    if-eq v8, v9, :cond_9

    .line 237
    .line 238
    const/16 v9, 0xa

    .line 239
    .line 240
    if-eq v8, v9, :cond_9

    .line 241
    .line 242
    const/16 v9, 0xd

    .line 243
    .line 244
    if-ne v8, v9, :cond_a

    .line 245
    .line 246
    :cond_9
    add-int/2addr v7, v2

    .line 247
    goto :goto_2

    .line 248
    :cond_a
    array-length v8, v5

    .line 249
    if-ge v7, v8, :cond_d

    .line 250
    .line 251
    aget-byte v7, v5, v7

    .line 252
    .line 253
    if-ne v7, v12, :cond_d

    .line 254
    .line 255
    move-object v6, v5

    .line 256
    goto :goto_5

    .line 257
    :cond_b
    :goto_3
    invoke-static {v4, v5}, LD7;->b([B[B)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_c

    .line 262
    .line 263
    sget-object v5, LG4;->c:Ljava/nio/charset/Charset;

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_c
    sget-object v5, LG4;->b:Ljava/nio/charset/Charset;

    .line 267
    .line 268
    :goto_4
    new-instance v7, Ljava/lang/String;

    .line 269
    .line 270
    array-length v11, v4

    .line 271
    sub-int/2addr v11, v10

    .line 272
    invoke-direct {v7, v4, v10, v11, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v7}, LGl;->c1(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-static {v5, v9, v3}, LOl;->u0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_d

    .line 288
    .line 289
    sget-object v5, LG4;->a:Ljava/nio/charset/Charset;

    .line 290
    .line 291
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-static {v6, v8}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :cond_d
    :goto_5
    if-eqz v6, :cond_f

    .line 299
    .line 300
    invoke-static {v6}, LD7;->c([B)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_e

    .line 305
    .line 306
    new-instance v4, LC7;

    .line 307
    .line 308
    invoke-direct {v4, v6}, LC7;-><init>([B)V

    .line 309
    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_e
    new-instance v4, LA7;

    .line 313
    .line 314
    invoke-static {v6}, LD7;->a([B)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    const-string v6, "O XML selecionado n\u00e3o parece um save do Township. In\u00edcio do arquivo: "

    .line 319
    .line 320
    invoke-static {v6, v5}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-direct {v4, v5}, LA7;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_f
    aget-byte v5, v4, v3

    .line 329
    .line 330
    const/16 v6, 0x79

    .line 331
    .line 332
    if-ne v5, v6, :cond_10

    .line 333
    .line 334
    new-instance v5, LB7;

    .line 335
    .line 336
    invoke-direct {v5, v4}, LB7;-><init>([B)V

    .line 337
    .line 338
    .line 339
    move-object v4, v5

    .line 340
    goto :goto_6

    .line 341
    :cond_10
    new-instance v4, LA7;

    .line 342
    .line 343
    const-string v5, "Formato de arquivo n\u00e3o reconhecido. Selecione o mGameInfo.xml do jogo ou um XML j\u00e1 decodificado pela ferramenta."

    .line 344
    .line 345
    invoke-direct {v4, v5}, LA7;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :goto_6
    instance-of v5, v4, LC7;

    .line 349
    .line 350
    const-string v6, "js_on_desban_local_xml"

    .line 351
    .line 352
    if-eqz v5, :cond_11

    .line 353
    .line 354
    check-cast v4, LC7;

    .line 355
    .line 356
    iget-object v4, v4, LC7;->p:[B

    .line 357
    .line 358
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 359
    .line 360
    new-instance v7, Lih;

    .line 361
    .line 362
    invoke-direct {v7, v4, v5}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_11
    instance-of v5, v4, LB7;

    .line 367
    .line 368
    const-string v7, "e"

    .line 369
    .line 370
    const-string v8, "erro"

    .line 371
    .line 372
    if-eqz v5, :cond_1a

    .line 373
    .line 374
    sget-object v5, LNb;->a:LJb;

    .line 375
    .line 376
    sget-object v5, LLb;->TOWNSHIP:LLb;

    .line 377
    .line 378
    invoke-static {v5}, LNb;->a(LLb;)LJb;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    :try_start_0
    iget-object v9, v1, Lcom/twntool/android/bridge/TwnBridge;->o:Lcom/twntool/network/ApiClient;

    .line 383
    .line 384
    iget-object v10, v5, LJb;->a:LLb;

    .line 385
    .line 386
    invoke-virtual {v10}, LLb;->b()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    iget-object v5, v5, LJb;->e:Ljava/lang/String;

    .line 391
    .line 392
    check-cast v4, LB7;

    .line 393
    .line 394
    iget-object v4, v4, LB7;->p:[B

    .line 395
    .line 396
    invoke-virtual {v9, v4, v10, v5}, Lcom/twntool/network/ApiClient;->f([BLjava/lang/String;Ljava/lang/String;)LO6;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v4}, LO6;->a()[B

    .line 401
    .line 402
    .line 403
    move-result-object v4
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-static {v4}, LD7;->c([B)Z

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-nez v5, :cond_12

    .line 409
    .line 410
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 411
    .line 412
    invoke-static {v4}, LD7;->a([B)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    const-string v3, "O arquivo foi decodificado, mas n\u00e3o cont\u00e9m um save do Township. In\u00edcio do resultado: "

    .line 417
    .line 418
    invoke-static {v3, v2}, LS8;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    new-instance v3, Lih;

    .line 423
    .line 424
    invoke-direct {v3, v8, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    invoke-static {v3}, Lvf;->m0(Lih;)Ljava/util/Map;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v1, v6, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_b

    .line 439
    .line 440
    :cond_12
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 441
    .line 442
    new-instance v7, Lih;

    .line 443
    .line 444
    invoke-direct {v7, v4, v5}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    :goto_7
    iget-object v4, v7, Lih;->a:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v4, [B

    .line 450
    .line 451
    iget-object v5, v7, Lih;->b:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v5, Ljava/lang/Boolean;

    .line 454
    .line 455
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    iget-object v7, v1, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 459
    .line 460
    iput-object v4, v7, Lcom/twntool/game/AppState;->o:[B

    .line 461
    .line 462
    iget-object v7, v1, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 463
    .line 464
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    const-string v7, "<set-?>"

    .line 468
    .line 469
    invoke-static {v0, v7}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    sget-object v7, LD7;->a:Ljava/util/List;

    .line 473
    .line 474
    const-string v7, "xml"

    .line 475
    .line 476
    invoke-static {v4, v7}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    new-instance v7, Ljava/lang/String;

    .line 480
    .line 481
    sget-object v8, LG4;->a:Ljava/nio/charset/Charset;

    .line 482
    .line 483
    invoke-direct {v7, v4, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 484
    .line 485
    .line 486
    const-string v8, "<Var name=\"levelup\" v=\"(\\d+)\""

    .line 487
    .line 488
    const-string v9, "compile(...)"

    .line 489
    .line 490
    const-string v10, "matcher(...)"

    .line 491
    .line 492
    invoke-static {v8, v9, v7, v10}, LLj;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    invoke-static {v8, v3, v7}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 497
    .line 498
    .line 499
    move-result-object v8

    .line 500
    const-string v11, "?"

    .line 501
    .line 502
    if-eqz v8, :cond_13

    .line 503
    .line 504
    invoke-virtual {v8}, LAf;->a()Ljava/util/List;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    check-cast v8, Lyf;

    .line 509
    .line 510
    invoke-virtual {v8, v2}, Lyf;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    check-cast v8, Ljava/lang/String;

    .line 515
    .line 516
    if-nez v8, :cond_14

    .line 517
    .line 518
    :cond_13
    move-object v8, v11

    .line 519
    :cond_14
    const-string v12, "<Var name=\"money\" v=\"(\\d+)\""

    .line 520
    .line 521
    invoke-static {v12, v9, v7, v10}, LLj;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    invoke-static {v9, v3, v7}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    if-eqz v3, :cond_15

    .line 530
    .line 531
    invoke-virtual {v3}, LAf;->a()Ljava/util/List;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    check-cast v3, Lyf;

    .line 536
    .line 537
    invoke-virtual {v3, v2}, Lyf;->get(I)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    check-cast v2, Ljava/lang/String;

    .line 542
    .line 543
    if-nez v2, :cond_16

    .line 544
    .line 545
    :cond_15
    move-object v2, v11

    .line 546
    :cond_16
    new-instance v3, Lih;

    .line 547
    .line 548
    const-string v7, "levelup"

    .line 549
    .line 550
    invoke-direct {v3, v7, v8}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    new-instance v8, Lih;

    .line 554
    .line 555
    const-string v9, "money"

    .line 556
    .line 557
    invoke-direct {v8, v9, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    .line 559
    .line 560
    filled-new-array {v3, v8}, [Lih;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-static {v2}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    const-string v3, "s"

    .line 569
    .line 570
    const-string v8, "dsb_xml_ok"

    .line 571
    .line 572
    invoke-virtual {v1, v3, v8, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 576
    .line 577
    new-instance v12, Lih;

    .line 578
    .line 579
    const-string v8, "path"

    .line 580
    .line 581
    invoke-direct {v12, v8, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    new-instance v13, Lih;

    .line 585
    .line 586
    const-string v8, "fname"

    .line 587
    .line 588
    invoke-direct {v13, v8, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    .line 590
    .line 591
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    check-cast v0, Ljava/lang/String;

    .line 596
    .line 597
    if-nez v0, :cond_17

    .line 598
    .line 599
    move-object v0, v11

    .line 600
    :cond_17
    new-instance v14, Lih;

    .line 601
    .line 602
    invoke-direct {v14, v7, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    check-cast v0, Ljava/lang/String;

    .line 610
    .line 611
    if-nez v0, :cond_18

    .line 612
    .line 613
    goto :goto_8

    .line 614
    :cond_18
    move-object v11, v0

    .line 615
    :goto_8
    new-instance v15, Lih;

    .line 616
    .line 617
    invoke-direct {v15, v9, v11}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    array-length v0, v4

    .line 621
    new-instance v2, Ljava/lang/Integer;

    .line 622
    .line 623
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 624
    .line 625
    .line 626
    new-instance v0, Lih;

    .line 627
    .line 628
    const-string v4, "xml_size"

    .line 629
    .line 630
    invoke-direct {v0, v4, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    new-instance v2, Lih;

    .line 634
    .line 635
    const-string v4, "encodado"

    .line 636
    .line 637
    invoke-direct {v2, v4, v5}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 638
    .line 639
    .line 640
    move-object/from16 v16, v0

    .line 641
    .line 642
    move-object/from16 v17, v2

    .line 643
    .line 644
    filled-new-array/range {v12 .. v17}, [Lih;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-static {v0}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {v1, v6, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    goto :goto_b

    .line 660
    :catchall_0
    move-exception v0

    .line 661
    goto :goto_9

    .line 662
    :catch_0
    move-exception v0

    .line 663
    goto :goto_a

    .line 664
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    if-nez v0, :cond_19

    .line 669
    .line 670
    const-string v0, "erro na VPS"

    .line 671
    .line 672
    :cond_19
    const-string v2, "dsb_xml_decode_fail"

    .line 673
    .line 674
    invoke-virtual {v1, v7, v2, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 678
    .line 679
    const-string v3, "N\u00e3o consegui decodificar o save na VPS: "

    .line 680
    .line 681
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    new-instance v3, Lih;

    .line 686
    .line 687
    invoke-direct {v3, v8, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v3}, Lvf;->m0(Lih;)Ljava/util/Map;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {v1, v6, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    goto :goto_b

    .line 702
    :goto_a
    throw v0

    .line 703
    :cond_1a
    instance-of v0, v4, LA7;

    .line 704
    .line 705
    if-eqz v0, :cond_1b

    .line 706
    .line 707
    check-cast v4, LA7;

    .line 708
    .line 709
    iget-object v0, v4, LA7;->p:Ljava/lang/String;

    .line 710
    .line 711
    const-string v2, "dsb_xml_formato"

    .line 712
    .line 713
    invoke-virtual {v1, v7, v2, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 717
    .line 718
    iget-object v2, v4, LA7;->p:Ljava/lang/String;

    .line 719
    .line 720
    new-instance v3, Lih;

    .line 721
    .line 722
    invoke-direct {v3, v8, v2}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 723
    .line 724
    .line 725
    invoke-static {v3}, Lvf;->m0(Lih;)Ljava/util/Map;

    .line 726
    .line 727
    .line 728
    move-result-object v2

    .line 729
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v1, v6, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    :goto_b
    return-void

    .line 737
    :cond_1b
    new-instance v0, Lq5;

    .line 738
    .line 739
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 740
    .line 741
    .line 742
    throw v0
.end method

.method public static final e(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    instance-of v6, v2, LPp;

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    move-object v6, v2

    .line 18
    check-cast v6, LPp;

    .line 19
    .line 20
    iget v7, v6, LPp;->j:I

    .line 21
    .line 22
    const/high16 v8, -0x80000000

    .line 23
    .line 24
    and-int v9, v7, v8

    .line 25
    .line 26
    if-eqz v9, :cond_0

    .line 27
    .line 28
    sub-int/2addr v7, v8

    .line 29
    iput v7, v6, LPp;->j:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v6, LPp;

    .line 33
    .line 34
    invoke-direct {v6, v0, v2}, LPp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v2, v6, LPp;->g:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v7, Lx6;->a:Lx6;

    .line 40
    .line 41
    iget v8, v6, LPp;->j:I

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    if-eqz v8, :cond_3

    .line 45
    .line 46
    if-eq v8, v5, :cond_2

    .line 47
    .line 48
    if-ne v8, v4, :cond_1

    .line 49
    .line 50
    invoke-static {v2}, LN6;->O(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_6

    .line 54
    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    iget-object v0, v6, LPp;->f:Ljava/util/ArrayList;

    .line 64
    .line 65
    iget-object v1, v6, LPp;->e:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v3, v6, LPp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 68
    .line 69
    invoke-static {v2}, LN6;->O(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object/from16 v16, v2

    .line 73
    .line 74
    move-object v2, v0

    .line 75
    move-object v0, v3

    .line 76
    move-object/from16 v3, v16

    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_3
    invoke-static {v2}, LN6;->O(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :try_start_0
    new-instance v8, Ljava/io/File;

    .line 89
    .line 90
    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-object v8, v9

    .line 99
    :goto_1
    if-nez v8, :cond_4

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_4
    new-array v10, v4, [Lwb;

    .line 104
    .line 105
    sget-object v11, LAn;->x:LAn;

    .line 106
    .line 107
    aput-object v11, v10, v3

    .line 108
    .line 109
    sget-object v11, LAn;->y:LAn;

    .line 110
    .line 111
    aput-object v11, v10, v5

    .line 112
    .line 113
    invoke-static {v10}, Los;->e([Lwb;)Lk5;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    array-length v11, v8

    .line 118
    if-nez v11, :cond_5

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    array-length v11, v8

    .line 122
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    const-string v11, "copyOf(...)"

    .line 127
    .line 128
    invoke-static {v8, v11}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    array-length v11, v8

    .line 132
    if-le v11, v5, :cond_6

    .line 133
    .line 134
    invoke-static {v8, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    :goto_2
    invoke-static {v8}, Ly3;->Q([Ljava/lang/Object;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    if-eqz v10, :cond_a

    .line 150
    .line 151
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    check-cast v10, Ljava/io/File;

    .line 156
    .line 157
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    const-string v12, "getName(...)"

    .line 162
    .line 163
    invoke-static {v11, v12}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v13, "."

    .line 167
    .line 168
    invoke-static {v11, v13, v3}, LOl;->u0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-nez v11, :cond_7

    .line 173
    .line 174
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-nez v11, :cond_8

    .line 179
    .line 180
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    invoke-static {v11, v12}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v11}, Lcom/twntool/android/bridge/TwnBridge;->A(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v11

    .line 191
    if-eqz v11, :cond_7

    .line 192
    .line 193
    :cond_8
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    new-instance v12, Lih;

    .line 198
    .line 199
    const-string v13, "nome"

    .line 200
    .line 201
    invoke-direct {v12, v13, v11}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    new-instance v13, Lih;

    .line 209
    .line 210
    const-string v14, "path"

    .line 211
    .line 212
    invoke-direct {v13, v14, v11}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    new-instance v14, Lih;

    .line 224
    .line 225
    const-string v15, "dir"

    .line 226
    .line 227
    invoke-direct {v14, v15, v11}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-eqz v11, :cond_9

    .line 235
    .line 236
    const-wide/16 v10, 0x0

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_9
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 240
    .line 241
    .line 242
    move-result-wide v10

    .line 243
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    new-instance v11, Lih;

    .line 248
    .line 249
    const-string v15, "tam"

    .line 250
    .line 251
    invoke-direct {v11, v15, v10}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    filled-new-array {v12, v13, v14, v11}, [Lih;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    invoke-static {v10}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_a
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    xor-int/2addr v3, v5

    .line 271
    if-eqz v3, :cond_c

    .line 272
    .line 273
    :cond_b
    :goto_6
    move-object v7, v2

    .line 274
    goto :goto_8

    .line 275
    :cond_c
    iput-object v0, v6, LPp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 276
    .line 277
    iput-object v1, v6, LPp;->e:Ljava/lang/String;

    .line 278
    .line 279
    iput-object v2, v6, LPp;->f:Ljava/util/ArrayList;

    .line 280
    .line 281
    iput v5, v6, LPp;->j:I

    .line 282
    .line 283
    iget-object v3, v0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 284
    .line 285
    check-cast v3, Lcom/twntool/root/RootManagerImpl;

    .line 286
    .line 287
    invoke-virtual {v3, v6}, Lcom/twntool/root/RootManagerImpl;->l(Li6;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    if-ne v3, v7, :cond_d

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_d
    :goto_7
    check-cast v3, Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    if-nez v3, :cond_e

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_e
    iput-object v9, v6, LPp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 304
    .line 305
    iput-object v9, v6, LPp;->e:Ljava/lang/String;

    .line 306
    .line 307
    iput-object v9, v6, LPp;->f:Ljava/util/ArrayList;

    .line 308
    .line 309
    iput v4, v6, LPp;->j:I

    .line 310
    .line 311
    invoke-virtual {v0, v1, v6}, Lcom/twntool/android/bridge/TwnBridge;->B(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    if-ne v2, v7, :cond_b

    .line 316
    .line 317
    :goto_8
    return-object v7
.end method

.method public static final f(Lcom/twntool/android/bridge/TwnBridge;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "/sdcard"

    .line 15
    .line 16
    const-string v2, "/storage/emulated/0"

    .line 17
    .line 18
    const-string v3, "/sdcard/Download"

    .line 19
    .line 20
    const-string v4, "/storage/emulated/0/Download"

    .line 21
    .line 22
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, LZ4;->l0([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    new-instance v3, Ljava/io/File;

    .line 47
    .line 48
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-object v3, v2

    .line 63
    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-object v0
.end method

.method public static final g(Lcom/twntool/android/bridge/TwnBridge;Ljava/util/List;Li6;)Ljava/lang/Object;
    .locals 72

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    instance-of v4, v1, LRp;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    move-object v4, v1

    .line 16
    check-cast v4, LRp;

    .line 17
    .line 18
    iget v5, v4, LRp;->D:I

    .line 19
    .line 20
    const/high16 v6, -0x80000000

    .line 21
    .line 22
    and-int v7, v5, v6

    .line 23
    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    sub-int/2addr v5, v6

    .line 27
    iput v5, v4, LRp;->D:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v4, LRp;

    .line 31
    .line 32
    invoke-direct {v4, v0, v1}, LRp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v1, v4, LRp;->B:Ljava/lang/Object;

    .line 36
    .line 37
    sget-object v5, Lx6;->a:Lx6;

    .line 38
    .line 39
    iget v6, v4, LRp;->D:I

    .line 40
    .line 41
    sget-object v7, Ly1;->r:Ly1;

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    const-string v11, "falhas"

    .line 45
    .line 46
    const-string v12, "total"

    .line 47
    .line 48
    const-string v13, "enviados"

    .line 49
    .line 50
    const-string v14, "js_on_enviar_carta_rede"

    .line 51
    .line 52
    const/4 v15, 0x4

    .line 53
    const-string v8, "d"

    .line 54
    .line 55
    const-string v16, ""

    .line 56
    .line 57
    const/4 v10, 0x2

    .line 58
    if-eqz v6, :cond_5

    .line 59
    .line 60
    if-eq v6, v3, :cond_4

    .line 61
    .line 62
    if-eq v6, v10, :cond_3

    .line 63
    .line 64
    if-eq v6, v9, :cond_2

    .line 65
    .line 66
    if-ne v6, v15, :cond_1

    .line 67
    .line 68
    iget v0, v4, LRp;->w:I

    .line 69
    .line 70
    iget-wide v9, v4, LRp;->A:J

    .line 71
    .line 72
    iget v2, v4, LRp;->v:I

    .line 73
    .line 74
    iget v6, v4, LRp;->u:I

    .line 75
    .line 76
    iget-object v15, v4, LRp;->p:Ljava/util/Iterator;

    .line 77
    .line 78
    iget-object v3, v4, LRp;->o:Llo;

    .line 79
    .line 80
    move/from16 p0, v0

    .line 81
    .line 82
    iget-object v0, v4, LRp;->n:Lgi;

    .line 83
    .line 84
    move-object/from16 p1, v0

    .line 85
    .line 86
    iget-object v0, v4, LRp;->m:Lfi;

    .line 87
    .line 88
    move-object/from16 v19, v0

    .line 89
    .line 90
    iget-object v0, v4, LRp;->l:Lfi;

    .line 91
    .line 92
    move-object/from16 v20, v0

    .line 93
    .line 94
    iget-object v0, v4, LRp;->k:Lig;

    .line 95
    .line 96
    move-object/from16 v21, v0

    .line 97
    .line 98
    iget-object v0, v4, LRp;->j:Ljava/util/HashMap;

    .line 99
    .line 100
    move-object/from16 v22, v0

    .line 101
    .line 102
    iget-object v0, v4, LRp;->h:Ljava/util/List;

    .line 103
    .line 104
    move-object/from16 v23, v0

    .line 105
    .line 106
    iget-object v0, v4, LRp;->g:Ljava/util/ArrayList;

    .line 107
    .line 108
    move-object/from16 v24, v0

    .line 109
    .line 110
    iget-object v0, v4, LRp;->f:Lho;

    .line 111
    .line 112
    move-object/from16 v25, v0

    .line 113
    .line 114
    iget-object v0, v4, LRp;->e:Ljava/util/List;

    .line 115
    .line 116
    move-object/from16 v26, v0

    .line 117
    .line 118
    iget-object v0, v4, LRp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 119
    .line 120
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v27, v7

    .line 124
    .line 125
    move-object/from16 v47, v11

    .line 126
    .line 127
    move-object/from16 v48, v12

    .line 128
    .line 129
    move-object/from16 v50, v13

    .line 130
    .line 131
    move-object/from16 v28, v14

    .line 132
    .line 133
    move-object/from16 v49, v21

    .line 134
    .line 135
    move-object/from16 v7, v25

    .line 136
    .line 137
    const/4 v1, 0x4

    .line 138
    const/16 v18, 0x1

    .line 139
    .line 140
    move/from16 v11, p0

    .line 141
    .line 142
    move-object/from16 v14, p1

    .line 143
    .line 144
    move-object v12, v5

    .line 145
    move-object v5, v3

    .line 146
    move-object/from16 v3, v24

    .line 147
    .line 148
    move/from16 v68, v6

    .line 149
    .line 150
    move v6, v2

    .line 151
    move-object/from16 v2, v26

    .line 152
    .line 153
    move-object/from16 v26, v4

    .line 154
    .line 155
    move/from16 v4, v68

    .line 156
    .line 157
    move-object/from16 v69, v22

    .line 158
    .line 159
    move-object/from16 v22, v8

    .line 160
    .line 161
    move-wide/from16 v70, v9

    .line 162
    .line 163
    move-object/from16 v10, v19

    .line 164
    .line 165
    move-object/from16 v9, v69

    .line 166
    .line 167
    move-object/from16 v19, v23

    .line 168
    .line 169
    move-object/from16 v23, v20

    .line 170
    .line 171
    move-wide/from16 v20, v70

    .line 172
    .line 173
    goto/16 :goto_2a

    .line 174
    .line 175
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_2
    iget v0, v4, LRp;->x:I

    .line 184
    .line 185
    iget v2, v4, LRp;->w:I

    .line 186
    .line 187
    iget-wide v9, v4, LRp;->A:J

    .line 188
    .line 189
    iget v3, v4, LRp;->v:I

    .line 190
    .line 191
    iget v6, v4, LRp;->u:I

    .line 192
    .line 193
    iget-object v15, v4, LRp;->p:Ljava/util/Iterator;

    .line 194
    .line 195
    move/from16 v19, v0

    .line 196
    .line 197
    iget-object v0, v4, LRp;->o:Llo;

    .line 198
    .line 199
    move-object/from16 v20, v0

    .line 200
    .line 201
    iget-object v0, v4, LRp;->n:Lgi;

    .line 202
    .line 203
    move-object/from16 v21, v0

    .line 204
    .line 205
    iget-object v0, v4, LRp;->m:Lfi;

    .line 206
    .line 207
    move-object/from16 v22, v0

    .line 208
    .line 209
    iget-object v0, v4, LRp;->l:Lfi;

    .line 210
    .line 211
    move-object/from16 v23, v0

    .line 212
    .line 213
    iget-object v0, v4, LRp;->k:Lig;

    .line 214
    .line 215
    move-object/from16 v24, v0

    .line 216
    .line 217
    iget-object v0, v4, LRp;->j:Ljava/util/HashMap;

    .line 218
    .line 219
    move-object/from16 v25, v0

    .line 220
    .line 221
    iget-object v0, v4, LRp;->h:Ljava/util/List;

    .line 222
    .line 223
    move-object/from16 v26, v0

    .line 224
    .line 225
    iget-object v0, v4, LRp;->g:Ljava/util/ArrayList;

    .line 226
    .line 227
    move-object/from16 p0, v0

    .line 228
    .line 229
    iget-object v0, v4, LRp;->f:Lho;

    .line 230
    .line 231
    move-object/from16 p1, v0

    .line 232
    .line 233
    iget-object v0, v4, LRp;->e:Ljava/util/List;

    .line 234
    .line 235
    move-object/from16 v27, v0

    .line 236
    .line 237
    iget-object v0, v4, LRp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 238
    .line 239
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    move-object/from16 v47, v11

    .line 243
    .line 244
    move-object/from16 v48, v12

    .line 245
    .line 246
    move-object/from16 v50, v13

    .line 247
    .line 248
    move-object/from16 v28, v14

    .line 249
    .line 250
    move-object v11, v15

    .line 251
    move-object/from16 v15, v21

    .line 252
    .line 253
    move-object/from16 v14, v22

    .line 254
    .line 255
    move-object/from16 v13, v23

    .line 256
    .line 257
    move-object/from16 v1, v24

    .line 258
    .line 259
    move-object/from16 v21, v27

    .line 260
    .line 261
    move v12, v3

    .line 262
    move-object v3, v5

    .line 263
    move-object/from16 v27, v7

    .line 264
    .line 265
    move-object/from16 v22, v8

    .line 266
    .line 267
    move-wide v8, v9

    .line 268
    move-object/from16 v10, v25

    .line 269
    .line 270
    move-object/from16 v7, p1

    .line 271
    .line 272
    move-object v5, v4

    .line 273
    move-object/from16 v4, p0

    .line 274
    .line 275
    goto/16 :goto_28

    .line 276
    .line 277
    :cond_3
    iget v0, v4, LRp;->z:I

    .line 278
    .line 279
    iget v2, v4, LRp;->y:I

    .line 280
    .line 281
    iget v3, v4, LRp;->x:I

    .line 282
    .line 283
    iget v6, v4, LRp;->w:I

    .line 284
    .line 285
    iget-wide v9, v4, LRp;->A:J

    .line 286
    .line 287
    iget v15, v4, LRp;->v:I

    .line 288
    .line 289
    move/from16 v19, v0

    .line 290
    .line 291
    iget v0, v4, LRp;->u:I

    .line 292
    .line 293
    move/from16 v20, v0

    .line 294
    .line 295
    iget-object v0, v4, LRp;->t:Ljava/util/Iterator;

    .line 296
    .line 297
    move-object/from16 v21, v0

    .line 298
    .line 299
    iget-object v0, v4, LRp;->s:Lx1;

    .line 300
    .line 301
    move-object/from16 v22, v0

    .line 302
    .line 303
    iget-object v0, v4, LRp;->r:Ljava/util/List;

    .line 304
    .line 305
    move-object/from16 v23, v0

    .line 306
    .line 307
    iget-object v0, v4, LRp;->q:Ljava/util/List;

    .line 308
    .line 309
    move-object/from16 v24, v0

    .line 310
    .line 311
    iget-object v0, v4, LRp;->p:Ljava/util/Iterator;

    .line 312
    .line 313
    move-object/from16 v25, v0

    .line 314
    .line 315
    iget-object v0, v4, LRp;->o:Llo;

    .line 316
    .line 317
    move-object/from16 v26, v0

    .line 318
    .line 319
    iget-object v0, v4, LRp;->n:Lgi;

    .line 320
    .line 321
    move-object/from16 v27, v0

    .line 322
    .line 323
    iget-object v0, v4, LRp;->m:Lfi;

    .line 324
    .line 325
    move-object/from16 p0, v0

    .line 326
    .line 327
    iget-object v0, v4, LRp;->l:Lfi;

    .line 328
    .line 329
    move-object/from16 p1, v0

    .line 330
    .line 331
    iget-object v0, v4, LRp;->k:Lig;

    .line 332
    .line 333
    move-object/from16 v28, v0

    .line 334
    .line 335
    iget-object v0, v4, LRp;->j:Ljava/util/HashMap;

    .line 336
    .line 337
    move-object/from16 v29, v0

    .line 338
    .line 339
    iget-object v0, v4, LRp;->h:Ljava/util/List;

    .line 340
    .line 341
    move-object/from16 v30, v0

    .line 342
    .line 343
    iget-object v0, v4, LRp;->g:Ljava/util/ArrayList;

    .line 344
    .line 345
    move-object/from16 v31, v0

    .line 346
    .line 347
    iget-object v0, v4, LRp;->f:Lho;

    .line 348
    .line 349
    move-object/from16 v32, v0

    .line 350
    .line 351
    iget-object v0, v4, LRp;->e:Ljava/util/List;

    .line 352
    .line 353
    move-object/from16 v33, v0

    .line 354
    .line 355
    iget-object v0, v4, LRp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 356
    .line 357
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    move-object/from16 v1, p0

    .line 361
    .line 362
    move/from16 v58, v2

    .line 363
    .line 364
    move/from16 v59, v3

    .line 365
    .line 366
    move/from16 v60, v6

    .line 367
    .line 368
    move-wide/from16 v61, v9

    .line 369
    .line 370
    move-object/from16 v47, v11

    .line 371
    .line 372
    move-object/from16 v48, v12

    .line 373
    .line 374
    move-object/from16 v50, v13

    .line 375
    .line 376
    move/from16 v63, v15

    .line 377
    .line 378
    move/from16 v57, v20

    .line 379
    .line 380
    move-object/from16 v3, v22

    .line 381
    .line 382
    move-object/from16 v20, v23

    .line 383
    .line 384
    move-object/from16 v15, v24

    .line 385
    .line 386
    move-object/from16 v43, v25

    .line 387
    .line 388
    move-object/from16 v2, v27

    .line 389
    .line 390
    move-object/from16 v13, v29

    .line 391
    .line 392
    move-object/from16 v12, v30

    .line 393
    .line 394
    move-object/from16 v10, v32

    .line 395
    .line 396
    move-object/from16 v6, v33

    .line 397
    .line 398
    const/4 v11, 0x2

    .line 399
    move-object v9, v4

    .line 400
    move-object/from16 v27, v7

    .line 401
    .line 402
    move-object/from16 v22, v8

    .line 403
    .line 404
    move-object/from16 v7, v31

    .line 405
    .line 406
    move-object v4, v0

    .line 407
    move-object v8, v5

    .line 408
    move-object/from16 v0, v21

    .line 409
    .line 410
    move-object/from16 v5, p1

    .line 411
    .line 412
    move-object/from16 v68, v28

    .line 413
    .line 414
    move-object/from16 v28, v14

    .line 415
    .line 416
    move-object/from16 v14, v68

    .line 417
    .line 418
    goto/16 :goto_1d

    .line 419
    .line 420
    :cond_4
    iget v2, v4, LRp;->z:I

    .line 421
    .line 422
    iget v0, v4, LRp;->y:I

    .line 423
    .line 424
    iget v3, v4, LRp;->x:I

    .line 425
    .line 426
    iget v6, v4, LRp;->w:I

    .line 427
    .line 428
    iget-wide v9, v4, LRp;->A:J

    .line 429
    .line 430
    iget v15, v4, LRp;->v:I

    .line 431
    .line 432
    move/from16 v19, v2

    .line 433
    .line 434
    iget v2, v4, LRp;->u:I

    .line 435
    .line 436
    move/from16 v20, v0

    .line 437
    .line 438
    iget-object v0, v4, LRp;->r:Ljava/util/List;

    .line 439
    .line 440
    move/from16 v21, v2

    .line 441
    .line 442
    iget-object v2, v4, LRp;->q:Ljava/util/List;

    .line 443
    .line 444
    move-object/from16 v22, v2

    .line 445
    .line 446
    iget-object v2, v4, LRp;->p:Ljava/util/Iterator;

    .line 447
    .line 448
    move-object/from16 v23, v2

    .line 449
    .line 450
    iget-object v2, v4, LRp;->o:Llo;

    .line 451
    .line 452
    move-object/from16 v24, v2

    .line 453
    .line 454
    iget-object v2, v4, LRp;->n:Lgi;

    .line 455
    .line 456
    move-object/from16 v25, v2

    .line 457
    .line 458
    iget-object v2, v4, LRp;->m:Lfi;

    .line 459
    .line 460
    move-object/from16 v26, v2

    .line 461
    .line 462
    iget-object v2, v4, LRp;->l:Lfi;

    .line 463
    .line 464
    move-object/from16 v27, v2

    .line 465
    .line 466
    iget-object v2, v4, LRp;->k:Lig;

    .line 467
    .line 468
    move-object/from16 v28, v2

    .line 469
    .line 470
    iget-object v2, v4, LRp;->j:Ljava/util/HashMap;

    .line 471
    .line 472
    move-object/from16 v29, v2

    .line 473
    .line 474
    iget-object v2, v4, LRp;->h:Ljava/util/List;

    .line 475
    .line 476
    move-object/from16 v30, v2

    .line 477
    .line 478
    iget-object v2, v4, LRp;->g:Ljava/util/ArrayList;

    .line 479
    .line 480
    move-object/from16 v31, v2

    .line 481
    .line 482
    iget-object v2, v4, LRp;->f:Lho;

    .line 483
    .line 484
    move-object/from16 v32, v2

    .line 485
    .line 486
    iget-object v2, v4, LRp;->e:Ljava/util/List;

    .line 487
    .line 488
    move-object/from16 v33, v2

    .line 489
    .line 490
    iget-object v2, v4, LRp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 491
    .line 492
    :try_start_0
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .line 494
    .line 495
    move-object/from16 v47, v11

    .line 496
    .line 497
    move-object/from16 v48, v12

    .line 498
    .line 499
    move-object/from16 v50, v13

    .line 500
    .line 501
    move-object/from16 v12, v22

    .line 502
    .line 503
    move-object/from16 v13, v27

    .line 504
    .line 505
    move-object/from16 v11, v28

    .line 506
    .line 507
    move-object/from16 v27, v7

    .line 508
    .line 509
    move-object/from16 v22, v8

    .line 510
    .line 511
    move-object/from16 v28, v14

    .line 512
    .line 513
    move v14, v15

    .line 514
    move-object/from16 v8, v24

    .line 515
    .line 516
    move-object/from16 v15, v25

    .line 517
    .line 518
    move-object v7, v4

    .line 519
    move/from16 v4, v19

    .line 520
    .line 521
    move/from16 v19, v21

    .line 522
    .line 523
    move-object/from16 v68, v1

    .line 524
    .line 525
    move-object v1, v0

    .line 526
    move/from16 v0, v20

    .line 527
    .line 528
    move/from16 v20, v6

    .line 529
    .line 530
    move v6, v3

    .line 531
    move-object v3, v2

    .line 532
    move-object/from16 v2, v68

    .line 533
    .line 534
    goto/16 :goto_18

    .line 535
    .line 536
    :catch_0
    move-exception v0

    .line 537
    move-object v1, v5

    .line 538
    move/from16 v20, v6

    .line 539
    .line 540
    move-object/from16 v47, v11

    .line 541
    .line 542
    move-object/from16 v48, v12

    .line 543
    .line 544
    move-object/from16 v50, v13

    .line 545
    .line 546
    move-object/from16 v12, v22

    .line 547
    .line 548
    move-object/from16 v13, v27

    .line 549
    .line 550
    move-object/from16 v49, v28

    .line 551
    .line 552
    const/4 v11, 0x2

    .line 553
    move-object v5, v0

    .line 554
    move v6, v3

    .line 555
    move-object v0, v4

    .line 556
    move-object/from16 v27, v7

    .line 557
    .line 558
    move-object/from16 v22, v8

    .line 559
    .line 560
    move-object/from16 v28, v14

    .line 561
    .line 562
    move-object/from16 v8, v24

    .line 563
    .line 564
    move-object/from16 v14, v26

    .line 565
    .line 566
    move-object/from16 v4, v31

    .line 567
    .line 568
    move-object/from16 v7, v32

    .line 569
    .line 570
    move-object/from16 v3, v33

    .line 571
    .line 572
    move/from16 v26, v15

    .line 573
    .line 574
    move-object/from16 v15, v25

    .line 575
    .line 576
    move-object/from16 v25, v23

    .line 577
    .line 578
    move/from16 v23, v19

    .line 579
    .line 580
    move/from16 v19, v21

    .line 581
    .line 582
    move-wide/from16 v68, v9

    .line 583
    .line 584
    move-object/from16 v10, v29

    .line 585
    .line 586
    move-object/from16 v9, v30

    .line 587
    .line 588
    move-wide/from16 v29, v68

    .line 589
    .line 590
    goto/16 :goto_23

    .line 591
    .line 592
    :cond_5
    invoke-static {v1}, LN6;->O(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    new-instance v1, Ljava/util/ArrayList;

    .line 596
    .line 597
    move-object/from16 v3, p1

    .line 598
    .line 599
    invoke-static {v3, v2}, La5;->q0(Ljava/lang/Iterable;I)I

    .line 600
    .line 601
    .line 602
    move-result v6

    .line 603
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 604
    .line 605
    .line 606
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 611
    .line 612
    .line 613
    move-result v6

    .line 614
    if-eqz v6, :cond_8

    .line 615
    .line 616
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    check-cast v6, Lih;

    .line 621
    .line 622
    iget-object v9, v6, Lih;->a:Ljava/lang/Object;

    .line 623
    .line 624
    check-cast v9, Ljava/lang/String;

    .line 625
    .line 626
    invoke-static {v9}, LGl;->Y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 627
    .line 628
    .line 629
    move-result-object v9

    .line 630
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v9

    .line 634
    iget-object v6, v6, Lih;->b:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v6, Ljava/lang/Iterable;

    .line 637
    .line 638
    new-instance v10, Ljava/util/ArrayList;

    .line 639
    .line 640
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .line 642
    .line 643
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v6

    .line 647
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v15

    .line 651
    if-eqz v15, :cond_7

    .line 652
    .line 653
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v15

    .line 657
    move-object/from16 v19, v15

    .line 658
    .line 659
    check-cast v19, Ljava/lang/String;

    .line 660
    .line 661
    invoke-static/range {v19 .. v19}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 662
    .line 663
    .line 664
    move-result v19

    .line 665
    const/16 v18, 0x1

    .line 666
    .line 667
    xor-int/lit8 v19, v19, 0x1

    .line 668
    .line 669
    if-eqz v19, :cond_6

    .line 670
    .line 671
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    goto :goto_2

    .line 675
    :cond_7
    iget v6, v0, Lcom/twntool/android/bridge/TwnBridge;->J:I

    .line 676
    .line 677
    invoke-static {v10, v6}, LY4;->J0(Ljava/util/List;I)Ljava/util/List;

    .line 678
    .line 679
    .line 680
    move-result-object v6

    .line 681
    new-instance v10, Lih;

    .line 682
    .line 683
    invoke-direct {v10, v9, v6}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    goto :goto_1

    .line 690
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    .line 691
    .line 692
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 700
    .line 701
    .line 702
    move-result v6

    .line 703
    if-eqz v6, :cond_a

    .line 704
    .line 705
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    move-object v9, v6

    .line 710
    check-cast v9, Lih;

    .line 711
    .line 712
    iget-object v10, v9, Lih;->a:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v10, Ljava/lang/CharSequence;

    .line 715
    .line 716
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 717
    .line 718
    .line 719
    move-result v10

    .line 720
    if-lez v10, :cond_9

    .line 721
    .line 722
    iget-object v9, v9, Lih;->b:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v9, Ljava/util/Collection;

    .line 725
    .line 726
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 727
    .line 728
    .line 729
    move-result v9

    .line 730
    const/4 v10, 0x1

    .line 731
    xor-int/2addr v9, v10

    .line 732
    if-eqz v9, :cond_9

    .line 733
    .line 734
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    goto :goto_3

    .line 738
    :cond_a
    new-instance v1, Ljava/util/HashSet;

    .line 739
    .line 740
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 741
    .line 742
    .line 743
    new-instance v6, Ljava/util/ArrayList;

    .line 744
    .line 745
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 749
    .line 750
    .line 751
    move-result-object v3

    .line 752
    :cond_b
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 753
    .line 754
    .line 755
    move-result v9

    .line 756
    if-eqz v9, :cond_c

    .line 757
    .line 758
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v9

    .line 762
    move-object v10, v9

    .line 763
    check-cast v10, Lih;

    .line 764
    .line 765
    iget-object v10, v10, Lih;->a:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast v10, Ljava/lang/String;

    .line 768
    .line 769
    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v10

    .line 773
    if-eqz v10, :cond_b

    .line 774
    .line 775
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    goto :goto_4

    .line 779
    :cond_c
    iget v1, v0, Lcom/twntool/android/bridge/TwnBridge;->K:I

    .line 780
    .line 781
    invoke-static {v6, v1}, LY4;->J0(Ljava/util/List;I)Ljava/util/List;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    if-eqz v3, :cond_d

    .line 790
    .line 791
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 792
    .line 793
    const-string v2, "Selecione um amigo e ao menos 1 carta."

    .line 794
    .line 795
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    invoke-virtual {v0, v14, v1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    move-object v5, v7

    .line 803
    goto/16 :goto_2b

    .line 804
    .line 805
    :cond_d
    iget-object v3, v0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 806
    .line 807
    iget-object v3, v3, Lcom/twntool/game/AppState;->b:[B

    .line 808
    .line 809
    if-eqz v3, :cond_e

    .line 810
    .line 811
    new-instance v6, Ljava/lang/String;

    .line 812
    .line 813
    sget-object v9, LG4;->a:Ljava/nio/charset/Charset;

    .line 814
    .line 815
    invoke-direct {v6, v3, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 816
    .line 817
    .line 818
    goto :goto_5

    .line 819
    :cond_e
    move-object/from16 v6, v16

    .line 820
    .line 821
    :goto_5
    const-string v3, "<Var\\s[^>]*name=\"name\"[^>]*v=\"([^\"]+)\""

    .line 822
    .line 823
    const-string v9, "compile(...)"

    .line 824
    .line 825
    const-string v10, "matcher(...)"

    .line 826
    .line 827
    invoke-static {v3, v9, v6, v10}, LLj;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 828
    .line 829
    .line 830
    move-result-object v3

    .line 831
    const/4 v15, 0x0

    .line 832
    invoke-static {v3, v15, v6}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    if-eqz v3, :cond_10

    .line 837
    .line 838
    invoke-virtual {v3}, LAf;->a()Ljava/util/List;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    check-cast v3, Lyf;

    .line 843
    .line 844
    const/4 v15, 0x1

    .line 845
    invoke-virtual {v3, v15}, Lyf;->get(I)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v3

    .line 849
    check-cast v3, Ljava/lang/String;

    .line 850
    .line 851
    if-nez v3, :cond_f

    .line 852
    .line 853
    goto :goto_7

    .line 854
    :cond_f
    :goto_6
    move-object/from16 v20, v3

    .line 855
    .line 856
    goto :goto_8

    .line 857
    :cond_10
    :goto_7
    const-string v3, "Township"

    .line 858
    .line 859
    goto :goto_6

    .line 860
    :goto_8
    const-string v3, "<Var\\s[^>]*name=\"MyPicture\"[^>]*v=\"([^\"]+)\""

    .line 861
    .line 862
    invoke-static {v3, v9, v6, v10}, LLj;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    const/4 v15, 0x0

    .line 867
    invoke-static {v3, v15, v6}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 868
    .line 869
    .line 870
    move-result-object v3

    .line 871
    if-eqz v3, :cond_12

    .line 872
    .line 873
    invoke-virtual {v3}, LAf;->a()Ljava/util/List;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    check-cast v3, Lyf;

    .line 878
    .line 879
    const/4 v15, 0x1

    .line 880
    invoke-virtual {v3, v15}, Lyf;->get(I)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    check-cast v3, Ljava/lang/String;

    .line 885
    .line 886
    if-nez v3, :cond_11

    .line 887
    .line 888
    goto :goto_a

    .line 889
    :cond_11
    :goto_9
    move-object/from16 v21, v3

    .line 890
    .line 891
    goto :goto_b

    .line 892
    :cond_12
    :goto_a
    const-string v3, "ava0"

    .line 893
    .line 894
    goto :goto_9

    .line 895
    :goto_b
    const-string v3, "<DataElem\\s+name=\"totalSendCards\"\\s+type=\"int\"\\s+value=\"(\\d+)\""

    .line 896
    .line 897
    invoke-static {v3, v9, v6, v10}, LLj;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    const/4 v15, 0x0

    .line 902
    invoke-static {v3, v15, v6}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    if-eqz v3, :cond_13

    .line 907
    .line 908
    invoke-virtual {v3}, LAf;->a()Ljava/util/List;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    check-cast v3, Lyf;

    .line 913
    .line 914
    const/4 v15, 0x1

    .line 915
    invoke-virtual {v3, v15}, Lyf;->get(I)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    check-cast v3, Ljava/lang/String;

    .line 920
    .line 921
    if-eqz v3, :cond_13

    .line 922
    .line 923
    invoke-static {v3}, LNl;->k0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    if-eqz v3, :cond_13

    .line 928
    .line 929
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    goto :goto_c

    .line 934
    :cond_13
    const/4 v3, 0x0

    .line 935
    :goto_c
    const-string v15, "name=\"configId\"\\s+type=\"string\"\\s+value=\"CardCollections_(\\d+)\"\\s*/>\\s*<DataElem\\s+name=\"endTime\"\\s+type=\"int64\"\\s+value=\"(\\d+)\""

    .line 936
    .line 937
    invoke-static {v15, v9, v6, v10}, LLj;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 938
    .line 939
    .line 940
    move-result-object v15

    .line 941
    const/4 v2, 0x0

    .line 942
    invoke-static {v15, v2, v6}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 943
    .line 944
    .line 945
    move-result-object v15

    .line 946
    if-eqz v15, :cond_14

    .line 947
    .line 948
    invoke-virtual {v15}, LAf;->a()Ljava/util/List;

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    check-cast v2, Lyf;

    .line 953
    .line 954
    move-object/from16 v26, v4

    .line 955
    .line 956
    const/4 v4, 0x2

    .line 957
    invoke-virtual {v2, v4}, Lyf;->get(I)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    check-cast v2, Ljava/lang/String;

    .line 962
    .line 963
    if-eqz v2, :cond_15

    .line 964
    .line 965
    invoke-static {v2}, LNl;->l0(Ljava/lang/String;)Ljava/lang/Long;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    goto :goto_d

    .line 970
    :cond_14
    move-object/from16 v26, v4

    .line 971
    .line 972
    :cond_15
    const/4 v2, 0x0

    .line 973
    :goto_d
    if-eqz v15, :cond_16

    .line 974
    .line 975
    invoke-virtual {v15}, LAf;->b()Lrd;

    .line 976
    .line 977
    .line 978
    move-result-object v4

    .line 979
    iget v4, v4, Lpd;->b:I

    .line 980
    .line 981
    move-object/from16 v27, v7

    .line 982
    .line 983
    const/16 v18, 0x1

    .line 984
    .line 985
    add-int/lit8 v7, v4, 0x1

    .line 986
    .line 987
    add-int/lit16 v4, v4, 0x7d1

    .line 988
    .line 989
    move-object/from16 v28, v14

    .line 990
    .line 991
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 992
    .line 993
    .line 994
    move-result v14

    .line 995
    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v4

    .line 1003
    const-string v6, "substring(...)"

    .line 1004
    .line 1005
    invoke-static {v4, v6}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    const-string v6, "<DataElem\\s+name=\"first\"\\s+type=\"string\"\\s+value=\"collectionId\"\\s*/>\\s*<DataElem\\s+name=\"second\"\\s+type=\"string\"\\s+value=\"([^\"]+)\""

    .line 1009
    .line 1010
    invoke-static {v6, v9, v4, v10}, LLj;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v6

    .line 1014
    const/4 v7, 0x0

    .line 1015
    invoke-static {v6, v7, v4}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v4

    .line 1019
    if-eqz v4, :cond_17

    .line 1020
    .line 1021
    invoke-virtual {v4}, LAf;->a()Ljava/util/List;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    check-cast v4, Lyf;

    .line 1026
    .line 1027
    const/4 v6, 0x1

    .line 1028
    invoke-virtual {v4, v6}, Lyf;->get(I)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v4

    .line 1032
    check-cast v4, Ljava/lang/String;

    .line 1033
    .line 1034
    if-eqz v4, :cond_17

    .line 1035
    .line 1036
    invoke-static {v4}, LGl;->Y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v4

    .line 1040
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v4

    .line 1044
    if-eqz v4, :cond_17

    .line 1045
    .line 1046
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1047
    .line 1048
    .line 1049
    move-result v6

    .line 1050
    if-lez v6, :cond_17

    .line 1051
    .line 1052
    goto :goto_e

    .line 1053
    :cond_16
    move-object/from16 v27, v7

    .line 1054
    .line 1055
    move-object/from16 v28, v14

    .line 1056
    .line 1057
    :cond_17
    const/4 v4, 0x0

    .line 1058
    :goto_e
    if-nez v4, :cond_19

    .line 1059
    .line 1060
    if-eqz v15, :cond_18

    .line 1061
    .line 1062
    invoke-virtual {v15}, LAf;->a()Ljava/util/List;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v4

    .line 1066
    check-cast v4, Lyf;

    .line 1067
    .line 1068
    const/4 v6, 0x1

    .line 1069
    invoke-virtual {v4, v6}, Lyf;->get(I)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v4

    .line 1073
    check-cast v4, Ljava/lang/String;

    .line 1074
    .line 1075
    goto :goto_f

    .line 1076
    :cond_18
    const/4 v4, 0x0

    .line 1077
    :cond_19
    :goto_f
    if-eqz v4, :cond_1a

    .line 1078
    .line 1079
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    const-string v7, "Colecao ativa: col_id="

    .line 1082
    .line 1083
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    const-string v7, " col_et="

    .line 1090
    .line 1091
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v6

    .line 1101
    const/4 v7, 0x0

    .line 1102
    invoke-virtual {v0, v8, v6, v7}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    goto :goto_10

    .line 1106
    :cond_1a
    const/4 v7, 0x0

    .line 1107
    const-string v6, "w"

    .line 1108
    .line 1109
    const-string v9, "Colecao ativa nao encontrada no save \u2014 usando deteccao por carta."

    .line 1110
    .line 1111
    invoke-virtual {v0, v6, v9, v7}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    :goto_10
    new-instance v7, Lho;

    .line 1115
    .line 1116
    move-object/from16 v19, v7

    .line 1117
    .line 1118
    move/from16 v22, v3

    .line 1119
    .line 1120
    move-object/from16 v23, v4

    .line 1121
    .line 1122
    move-object/from16 v24, v2

    .line 1123
    .line 1124
    invoke-direct/range {v19 .. v24}, Lho;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 1125
    .line 1126
    .line 1127
    new-instance v2, Ljava/util/ArrayList;

    .line 1128
    .line 1129
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .line 1131
    .line 1132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v4

    .line 1136
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1137
    .line 1138
    .line 1139
    move-result v6

    .line 1140
    if-eqz v6, :cond_1c

    .line 1141
    .line 1142
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v6

    .line 1146
    check-cast v6, Lih;

    .line 1147
    .line 1148
    iget-object v9, v6, Lih;->a:Ljava/lang/Object;

    .line 1149
    .line 1150
    check-cast v9, Ljava/lang/String;

    .line 1151
    .line 1152
    iget-object v6, v6, Lih;->b:Ljava/lang/Object;

    .line 1153
    .line 1154
    check-cast v6, Ljava/util/List;

    .line 1155
    .line 1156
    new-instance v10, Ljava/util/ArrayList;

    .line 1157
    .line 1158
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .line 1160
    .line 1161
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v6

    .line 1165
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1166
    .line 1167
    .line 1168
    move-result v14

    .line 1169
    if-eqz v14, :cond_1b

    .line 1170
    .line 1171
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v14

    .line 1175
    check-cast v14, Ljava/lang/String;

    .line 1176
    .line 1177
    new-instance v15, LUp;

    .line 1178
    .line 1179
    invoke-direct {v15, v9, v3, v14}, LUp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    .line 1184
    .line 1185
    const/4 v14, 0x1

    .line 1186
    add-int/2addr v3, v14

    .line 1187
    goto :goto_12

    .line 1188
    :cond_1b
    new-instance v6, Lih;

    .line 1189
    .line 1190
    invoke-direct {v6, v9, v10}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    goto :goto_11

    .line 1197
    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v3

    .line 1201
    const/4 v4, 0x0

    .line 1202
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v6

    .line 1206
    if-eqz v6, :cond_1d

    .line 1207
    .line 1208
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v6

    .line 1212
    check-cast v6, Lih;

    .line 1213
    .line 1214
    iget-object v6, v6, Lih;->b:Ljava/lang/Object;

    .line 1215
    .line 1216
    check-cast v6, Ljava/util/List;

    .line 1217
    .line 1218
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1219
    .line 1220
    .line 1221
    move-result v6

    .line 1222
    add-int/2addr v4, v6

    .line 1223
    goto :goto_13

    .line 1224
    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    .line 1225
    .line 1226
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .line 1228
    .line 1229
    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    new-instance v9, Ljava/util/HashMap;

    .line 1234
    .line 1235
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1236
    .line 1237
    .line 1238
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v10

    .line 1242
    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1243
    .line 1244
    .line 1245
    move-result v6

    .line 1246
    if-eqz v6, :cond_1e

    .line 1247
    .line 1248
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v6

    .line 1252
    check-cast v6, Lih;

    .line 1253
    .line 1254
    iget-object v14, v6, Lih;->a:Ljava/lang/Object;

    .line 1255
    .line 1256
    check-cast v14, Ljava/lang/String;

    .line 1257
    .line 1258
    iget-object v6, v6, Lih;->b:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v6, Ljava/util/List;

    .line 1261
    .line 1262
    new-instance v15, Ljava/lang/Integer;

    .line 1263
    .line 1264
    move-object/from16 p1, v1

    .line 1265
    .line 1266
    const/4 v1, 0x0

    .line 1267
    invoke-direct {v15, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1268
    .line 1269
    .line 1270
    new-instance v1, Lih;

    .line 1271
    .line 1272
    invoke-direct {v1, v13, v15}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 1276
    .line 1277
    .line 1278
    move-result v6

    .line 1279
    new-instance v15, Ljava/lang/Integer;

    .line 1280
    .line 1281
    invoke-direct {v15, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 1282
    .line 1283
    .line 1284
    new-instance v6, Lih;

    .line 1285
    .line 1286
    invoke-direct {v6, v12, v15}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1287
    .line 1288
    .line 1289
    new-instance v15, Ljava/lang/Integer;

    .line 1290
    .line 1291
    move-object/from16 v19, v3

    .line 1292
    .line 1293
    const/4 v3, 0x0

    .line 1294
    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1295
    .line 1296
    .line 1297
    new-instance v3, Lih;

    .line 1298
    .line 1299
    invoke-direct {v3, v11, v15}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1300
    .line 1301
    .line 1302
    filled-new-array {v1, v6, v3}, [Lih;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v1

    .line 1306
    new-instance v3, Ljava/util/HashMap;

    .line 1307
    .line 1308
    const/4 v6, 0x3

    .line 1309
    invoke-static {v6}, Lvf;->l0(I)I

    .line 1310
    .line 1311
    .line 1312
    move-result v15

    .line 1313
    invoke-direct {v3, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 1314
    .line 1315
    .line 1316
    invoke-static {v3, v1}, Lvf;->p0(Ljava/util/HashMap;[Lih;)V

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v9, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    move-object/from16 v1, p1

    .line 1323
    .line 1324
    move-object/from16 v3, v19

    .line 1325
    .line 1326
    goto :goto_14

    .line 1327
    :cond_1e
    move-object/from16 p1, v1

    .line 1328
    .line 1329
    move-object/from16 v19, v3

    .line 1330
    .line 1331
    invoke-static {}, Le4;->a()Lmg;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v1

    .line 1335
    new-instance v3, Lfi;

    .line 1336
    .line 1337
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1338
    .line 1339
    .line 1340
    new-instance v10, Lfi;

    .line 1341
    .line 1342
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 1343
    .line 1344
    .line 1345
    new-instance v14, Lgi;

    .line 1346
    .line 1347
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 1348
    .line 1349
    .line 1350
    const/16 v15, 0x14

    .line 1351
    .line 1352
    if-gt v4, v15, :cond_1f

    .line 1353
    .line 1354
    const/4 v6, 0x1

    .line 1355
    goto :goto_15

    .line 1356
    :cond_1f
    const/16 v15, 0xa

    .line 1357
    .line 1358
    div-int/lit8 v6, v4, 0xa

    .line 1359
    .line 1360
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    .line 1361
    .line 1362
    .line 1363
    move-result v6

    .line 1364
    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1365
    .line 1366
    .line 1367
    move-result-wide v20

    .line 1368
    new-instance v15, Llo;

    .line 1369
    .line 1370
    move-object/from16 v23, v3

    .line 1371
    .line 1372
    move/from16 v22, v4

    .line 1373
    .line 1374
    iget-wide v3, v0, Lcom/twntool/android/bridge/TwnBridge;->L:J

    .line 1375
    .line 1376
    long-to-double v3, v3

    .line 1377
    move/from16 v25, v6

    .line 1378
    .line 1379
    move-object/from16 v24, v7

    .line 1380
    .line 1381
    iget-wide v6, v0, Lcom/twntool/android/bridge/TwnBridge;->C:D

    .line 1382
    .line 1383
    mul-double/2addr v3, v6

    .line 1384
    double-to-long v3, v3

    .line 1385
    move-object/from16 v45, v9

    .line 1386
    .line 1387
    move-object/from16 v46, v10

    .line 1388
    .line 1389
    iget-wide v9, v0, Lcom/twntool/android/bridge/TwnBridge;->A:J

    .line 1390
    .line 1391
    move-object/from16 v47, v11

    .line 1392
    .line 1393
    move-object/from16 v48, v12

    .line 1394
    .line 1395
    iget-wide v11, v0, Lcom/twntool/android/bridge/TwnBridge;->B:D

    .line 1396
    .line 1397
    move-object/from16 v49, v1

    .line 1398
    .line 1399
    iget v1, v0, Lcom/twntool/android/bridge/TwnBridge;->D:I

    .line 1400
    .line 1401
    move-object/from16 v50, v13

    .line 1402
    .line 1403
    move-object/from16 v51, v14

    .line 1404
    .line 1405
    iget-wide v13, v0, Lcom/twntool/android/bridge/TwnBridge;->E:D

    .line 1406
    .line 1407
    move-wide/from16 v39, v13

    .line 1408
    .line 1409
    iget-wide v13, v0, Lcom/twntool/android/bridge/TwnBridge;->H:J

    .line 1410
    .line 1411
    move-wide/from16 v41, v13

    .line 1412
    .line 1413
    iget-wide v13, v0, Lcom/twntool/android/bridge/TwnBridge;->I:J

    .line 1414
    .line 1415
    move-object/from16 v29, v15

    .line 1416
    .line 1417
    move-wide/from16 v30, v3

    .line 1418
    .line 1419
    move-wide/from16 v32, v9

    .line 1420
    .line 1421
    move-wide/from16 v34, v11

    .line 1422
    .line 1423
    move-wide/from16 v36, v6

    .line 1424
    .line 1425
    move/from16 v38, v1

    .line 1426
    .line 1427
    move-wide/from16 v43, v13

    .line 1428
    .line 1429
    invoke-direct/range {v29 .. v44}, Llo;-><init>(JJDDIDJJ)V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1

    .line 1436
    move-object v3, v2

    .line 1437
    move/from16 v4, v22

    .line 1438
    .line 1439
    move-object/from16 v7, v24

    .line 1440
    .line 1441
    move/from16 v6, v25

    .line 1442
    .line 1443
    move-object/from16 v9, v45

    .line 1444
    .line 1445
    move-object/from16 v10, v46

    .line 1446
    .line 1447
    move-object/from16 v14, v51

    .line 1448
    .line 1449
    const/4 v11, 0x0

    .line 1450
    move-object/from16 v2, p1

    .line 1451
    .line 1452
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1453
    .line 1454
    .line 1455
    move-result v12

    .line 1456
    if-eqz v12, :cond_31

    .line 1457
    .line 1458
    const/4 v12, 0x1

    .line 1459
    add-int/lit8 v13, v11, 0x1

    .line 1460
    .line 1461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v12

    .line 1465
    check-cast v12, Lih;

    .line 1466
    .line 1467
    iget-object v12, v12, Lih;->b:Ljava/lang/Object;

    .line 1468
    .line 1469
    check-cast v12, Ljava/util/List;

    .line 1470
    .line 1471
    move-object/from16 p0, v1

    .line 1472
    .line 1473
    iget v1, v0, Lcom/twntool/android/bridge/TwnBridge;->G:I

    .line 1474
    .line 1475
    move/from16 v22, v1

    .line 1476
    .line 1477
    iget-boolean v1, v0, Lcom/twntool/android/bridge/TwnBridge;->N:Z

    .line 1478
    .line 1479
    if-eqz v1, :cond_2b

    .line 1480
    .line 1481
    move-object v1, v0

    .line 1482
    move-object/from16 v24, v5

    .line 1483
    .line 1484
    move/from16 v56, v6

    .line 1485
    .line 1486
    move/from16 v52, v11

    .line 1487
    .line 1488
    move/from16 v53, v13

    .line 1489
    .line 1490
    move-wide/from16 v54, v20

    .line 1491
    .line 1492
    move/from16 v20, v22

    .line 1493
    .line 1494
    move-object/from16 v13, v23

    .line 1495
    .line 1496
    move-object/from16 v6, v26

    .line 1497
    .line 1498
    move-object/from16 v11, v49

    .line 1499
    .line 1500
    move-object/from16 v5, p0

    .line 1501
    .line 1502
    move-object/from16 v22, v8

    .line 1503
    .line 1504
    move-object v8, v15

    .line 1505
    move-object v15, v14

    .line 1506
    move-object v14, v10

    .line 1507
    move-object v10, v9

    .line 1508
    move-object/from16 v9, v19

    .line 1509
    .line 1510
    move/from16 v19, v4

    .line 1511
    .line 1512
    move-object v4, v3

    .line 1513
    move-object v3, v2

    .line 1514
    const/4 v2, 0x0

    .line 1515
    :goto_17
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1516
    .line 1517
    .line 1518
    move-result v0

    .line 1519
    if-ge v2, v0, :cond_2a

    .line 1520
    .line 1521
    iget v0, v1, Lcom/twntool/android/bridge/TwnBridge;->M:I

    .line 1522
    .line 1523
    add-int/2addr v0, v2

    .line 1524
    move-object/from16 v21, v5

    .line 1525
    .line 1526
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 1527
    .line 1528
    .line 1529
    move-result v5

    .line 1530
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 1531
    .line 1532
    .line 1533
    move-result v0

    .line 1534
    invoke-interface {v12, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v0

    .line 1538
    :try_start_1
    sget-object v5, Lu7;->b:LW6;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f

    .line 1539
    .line 1540
    move-object/from16 p0, v5

    .line 1541
    .line 1542
    :try_start_2
    new-instance v5, LVp;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    .line 1543
    .line 1544
    move/from16 v23, v2

    .line 1545
    .line 1546
    const/4 v2, 0x0

    .line 1547
    :try_start_3
    invoke-direct {v5, v1, v7, v0, v2}, LVp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Lho;Ljava/util/List;Li6;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    .line 1548
    .line 1549
    .line 1550
    :try_start_4
    iput-object v1, v6, LRp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 1551
    .line 1552
    iput-object v3, v6, LRp;->e:Ljava/util/List;

    .line 1553
    .line 1554
    iput-object v7, v6, LRp;->f:Lho;

    .line 1555
    .line 1556
    iput-object v4, v6, LRp;->g:Ljava/util/ArrayList;

    .line 1557
    .line 1558
    iput-object v9, v6, LRp;->h:Ljava/util/List;

    .line 1559
    .line 1560
    iput-object v10, v6, LRp;->j:Ljava/util/HashMap;

    .line 1561
    .line 1562
    iput-object v11, v6, LRp;->k:Lig;

    .line 1563
    .line 1564
    iput-object v13, v6, LRp;->l:Lfi;

    .line 1565
    .line 1566
    iput-object v14, v6, LRp;->m:Lfi;

    .line 1567
    .line 1568
    iput-object v15, v6, LRp;->n:Lgi;

    .line 1569
    .line 1570
    iput-object v8, v6, LRp;->o:Llo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 1571
    .line 1572
    move-object/from16 v2, v21

    .line 1573
    .line 1574
    :try_start_5
    iput-object v2, v6, LRp;->p:Ljava/util/Iterator;

    .line 1575
    .line 1576
    iput-object v12, v6, LRp;->q:Ljava/util/List;

    .line 1577
    .line 1578
    iput-object v0, v6, LRp;->r:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 1579
    .line 1580
    move-object/from16 v21, v1

    .line 1581
    .line 1582
    const/4 v1, 0x0

    .line 1583
    :try_start_6
    iput-object v1, v6, LRp;->s:Lx1;

    .line 1584
    .line 1585
    iput-object v1, v6, LRp;->t:Ljava/util/Iterator;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 1586
    .line 1587
    move/from16 v1, v19

    .line 1588
    .line 1589
    :try_start_7
    iput v1, v6, LRp;->u:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 1590
    .line 1591
    move/from16 v19, v1

    .line 1592
    .line 1593
    move/from16 v1, v56

    .line 1594
    .line 1595
    :try_start_8
    iput v1, v6, LRp;->v:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1596
    .line 1597
    move/from16 v26, v1

    .line 1598
    .line 1599
    move-object/from16 v25, v2

    .line 1600
    .line 1601
    move-wide/from16 v1, v54

    .line 1602
    .line 1603
    :try_start_9
    iput-wide v1, v6, LRp;->A:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1604
    .line 1605
    move-wide/from16 v29, v1

    .line 1606
    .line 1607
    move/from16 v1, v53

    .line 1608
    .line 1609
    :try_start_a
    iput v1, v6, LRp;->w:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1610
    .line 1611
    move/from16 v2, v52

    .line 1612
    .line 1613
    :try_start_b
    iput v2, v6, LRp;->x:I

    .line 1614
    .line 1615
    move-object/from16 p1, v0

    .line 1616
    .line 1617
    move/from16 v0, v20

    .line 1618
    .line 1619
    iput v0, v6, LRp;->y:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1620
    .line 1621
    move/from16 v20, v1

    .line 1622
    .line 1623
    move/from16 v1, v23

    .line 1624
    .line 1625
    :try_start_c
    iput v1, v6, LRp;->z:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 1626
    .line 1627
    move/from16 v23, v1

    .line 1628
    .line 1629
    const/4 v1, 0x1

    .line 1630
    :try_start_d
    iput v1, v6, LRp;->D:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 1631
    .line 1632
    move-object/from16 v1, p0

    .line 1633
    .line 1634
    :try_start_e
    invoke-static {v1, v5, v6}, Le4;->M(Lr6;LAb;Li6;)Ljava/lang/Object;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 1638
    move-object/from16 v5, v24

    .line 1639
    .line 1640
    if-ne v1, v5, :cond_20

    .line 1641
    .line 1642
    goto/16 :goto_2b

    .line 1643
    .line 1644
    :cond_20
    move-object/from16 v33, v3

    .line 1645
    .line 1646
    move-object/from16 v31, v4

    .line 1647
    .line 1648
    move-object/from16 v32, v7

    .line 1649
    .line 1650
    move-object/from16 v3, v21

    .line 1651
    .line 1652
    move/from16 v4, v23

    .line 1653
    .line 1654
    move-object/from16 v23, v25

    .line 1655
    .line 1656
    move-object v7, v6

    .line 1657
    move v6, v2

    .line 1658
    move-object v2, v1

    .line 1659
    move-object/from16 v1, p1

    .line 1660
    .line 1661
    move-wide/from16 v68, v29

    .line 1662
    .line 1663
    move-object/from16 v30, v9

    .line 1664
    .line 1665
    move-object/from16 v29, v10

    .line 1666
    .line 1667
    move-wide/from16 v9, v68

    .line 1668
    .line 1669
    move/from16 v70, v26

    .line 1670
    .line 1671
    move-object/from16 v26, v14

    .line 1672
    .line 1673
    move/from16 v14, v70

    .line 1674
    .line 1675
    :goto_18
    :try_start_f
    check-cast v2, Lx1;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 1676
    .line 1677
    if-lez v0, :cond_22

    .line 1678
    .line 1679
    move/from16 p0, v4

    .line 1680
    .line 1681
    iget-object v4, v2, Lx1;->d:Ljava/lang/String;

    .line 1682
    .line 1683
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1684
    .line 1685
    .line 1686
    move-result v4

    .line 1687
    if-lez v4, :cond_21

    .line 1688
    .line 1689
    add-int/lit8 v0, v0, -0x1

    .line 1690
    .line 1691
    iget-object v4, v2, Lx1;->d:Ljava/lang/String;

    .line 1692
    .line 1693
    move/from16 p1, v0

    .line 1694
    .line 1695
    const/16 v0, 0x190

    .line 1696
    .line 1697
    invoke-static {v0, v4}, LGl;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v0

    .line 1701
    const-string v4, "resposta do servidor: "

    .line 1702
    .line 1703
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v0

    .line 1707
    const-string v4, "i"

    .line 1708
    .line 1709
    move-object/from16 v21, v2

    .line 1710
    .line 1711
    const/4 v2, 0x0

    .line 1712
    invoke-virtual {v3, v4, v0, v2}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    .line 1714
    .line 1715
    move/from16 v0, p1

    .line 1716
    .line 1717
    goto :goto_19

    .line 1718
    :cond_21
    move-object/from16 v21, v2

    .line 1719
    .line 1720
    goto :goto_19

    .line 1721
    :cond_22
    move-object/from16 v21, v2

    .line 1722
    .line 1723
    move/from16 p0, v4

    .line 1724
    .line 1725
    :goto_19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v2

    .line 1729
    move/from16 v58, v0

    .line 1730
    .line 1731
    move-object v0, v2

    .line 1732
    move-object v4, v3

    .line 1733
    move-object/from16 v24, v5

    .line 1734
    .line 1735
    move/from16 v59, v6

    .line 1736
    .line 1737
    move-wide/from16 v61, v9

    .line 1738
    .line 1739
    move-object v5, v13

    .line 1740
    move/from16 v63, v14

    .line 1741
    .line 1742
    move-object v2, v15

    .line 1743
    move/from16 v57, v19

    .line 1744
    .line 1745
    move/from16 v60, v20

    .line 1746
    .line 1747
    move-object/from16 v3, v21

    .line 1748
    .line 1749
    move-object/from16 v13, v29

    .line 1750
    .line 1751
    move-object/from16 v10, v32

    .line 1752
    .line 1753
    move-object/from16 v6, v33

    .line 1754
    .line 1755
    move/from16 v19, p0

    .line 1756
    .line 1757
    move-object/from16 v20, v1

    .line 1758
    .line 1759
    move-object v9, v7

    .line 1760
    move-object v14, v11

    .line 1761
    move-object v15, v12

    .line 1762
    move-object/from16 v1, v26

    .line 1763
    .line 1764
    move-object/from16 v12, v30

    .line 1765
    .line 1766
    move-object/from16 v7, v31

    .line 1767
    .line 1768
    move-object v11, v8

    .line 1769
    move-object/from16 v8, v23

    .line 1770
    .line 1771
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1772
    .line 1773
    .line 1774
    move-result v21

    .line 1775
    if-eqz v21, :cond_26

    .line 1776
    .line 1777
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1778
    .line 1779
    .line 1780
    move-result-object v21

    .line 1781
    move-object/from16 p0, v0

    .line 1782
    .line 1783
    move-object/from16 v0, v21

    .line 1784
    .line 1785
    check-cast v0, LUp;

    .line 1786
    .line 1787
    move-object/from16 v21, v15

    .line 1788
    .line 1789
    iget-object v15, v3, Lx1;->c:Ljava/util/Map;

    .line 1790
    .line 1791
    move-object/from16 v23, v3

    .line 1792
    .line 1793
    iget-object v3, v0, LUp;->a:Ljava/lang/String;

    .line 1794
    .line 1795
    move-object/from16 v25, v8

    .line 1796
    .line 1797
    iget-object v8, v0, LUp;->b:Ljava/lang/String;

    .line 1798
    .line 1799
    move-object/from16 v26, v11

    .line 1800
    .line 1801
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1802
    .line 1803
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    .line 1808
    .line 1809
    const-string v3, "|"

    .line 1810
    .line 1811
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    .line 1813
    .line 1814
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    .line 1816
    .line 1817
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v3

    .line 1821
    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v3

    .line 1825
    check-cast v3, Ljava/lang/String;

    .line 1826
    .line 1827
    iget-object v8, v0, LUp;->a:Ljava/lang/String;

    .line 1828
    .line 1829
    iget-object v0, v0, LUp;->b:Ljava/lang/String;

    .line 1830
    .line 1831
    if-nez v3, :cond_23

    .line 1832
    .line 1833
    const/16 v40, 0x1

    .line 1834
    .line 1835
    goto :goto_1b

    .line 1836
    :cond_23
    const/16 v40, 0x0

    .line 1837
    .line 1838
    :goto_1b
    if-nez v3, :cond_24

    .line 1839
    .line 1840
    move-object/from16 v41, v16

    .line 1841
    .line 1842
    goto :goto_1c

    .line 1843
    :cond_24
    move-object/from16 v41, v3

    .line 1844
    .line 1845
    :goto_1c
    iput-object v4, v9, LRp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 1846
    .line 1847
    iput-object v6, v9, LRp;->e:Ljava/util/List;

    .line 1848
    .line 1849
    iput-object v10, v9, LRp;->f:Lho;

    .line 1850
    .line 1851
    iput-object v7, v9, LRp;->g:Ljava/util/ArrayList;

    .line 1852
    .line 1853
    iput-object v12, v9, LRp;->h:Ljava/util/List;

    .line 1854
    .line 1855
    iput-object v13, v9, LRp;->j:Ljava/util/HashMap;

    .line 1856
    .line 1857
    iput-object v14, v9, LRp;->k:Lig;

    .line 1858
    .line 1859
    iput-object v5, v9, LRp;->l:Lfi;

    .line 1860
    .line 1861
    iput-object v1, v9, LRp;->m:Lfi;

    .line 1862
    .line 1863
    iput-object v2, v9, LRp;->n:Lgi;

    .line 1864
    .line 1865
    move-object/from16 v3, v26

    .line 1866
    .line 1867
    iput-object v3, v9, LRp;->o:Llo;

    .line 1868
    .line 1869
    move-object/from16 v11, v25

    .line 1870
    .line 1871
    iput-object v11, v9, LRp;->p:Ljava/util/Iterator;

    .line 1872
    .line 1873
    move-object/from16 v15, v21

    .line 1874
    .line 1875
    iput-object v15, v9, LRp;->q:Ljava/util/List;

    .line 1876
    .line 1877
    move-object/from16 v3, v20

    .line 1878
    .line 1879
    iput-object v3, v9, LRp;->r:Ljava/util/List;

    .line 1880
    .line 1881
    move-object/from16 v20, v6

    .line 1882
    .line 1883
    move-object/from16 v6, v23

    .line 1884
    .line 1885
    iput-object v6, v9, LRp;->s:Lx1;

    .line 1886
    .line 1887
    move-object/from16 v6, p0

    .line 1888
    .line 1889
    iput-object v6, v9, LRp;->t:Ljava/util/Iterator;

    .line 1890
    .line 1891
    move/from16 v6, v57

    .line 1892
    .line 1893
    iput v6, v9, LRp;->u:I

    .line 1894
    .line 1895
    move-object/from16 v21, v7

    .line 1896
    .line 1897
    move/from16 v7, v63

    .line 1898
    .line 1899
    iput v7, v9, LRp;->v:I

    .line 1900
    .line 1901
    move-object/from16 v25, v10

    .line 1902
    .line 1903
    move-object/from16 v43, v11

    .line 1904
    .line 1905
    move-wide/from16 v10, v61

    .line 1906
    .line 1907
    iput-wide v10, v9, LRp;->A:J

    .line 1908
    .line 1909
    move-wide/from16 v44, v10

    .line 1910
    .line 1911
    move/from16 v10, v60

    .line 1912
    .line 1913
    iput v10, v9, LRp;->w:I

    .line 1914
    .line 1915
    move/from16 v11, v59

    .line 1916
    .line 1917
    iput v11, v9, LRp;->x:I

    .line 1918
    .line 1919
    move/from16 v46, v10

    .line 1920
    .line 1921
    move/from16 v10, v58

    .line 1922
    .line 1923
    iput v10, v9, LRp;->y:I

    .line 1924
    .line 1925
    move/from16 v49, v10

    .line 1926
    .line 1927
    move/from16 v10, v19

    .line 1928
    .line 1929
    iput v10, v9, LRp;->z:I

    .line 1930
    .line 1931
    move/from16 v19, v11

    .line 1932
    .line 1933
    const/4 v11, 0x2

    .line 1934
    iput v11, v9, LRp;->D:I

    .line 1935
    .line 1936
    move-object/from16 v29, v14

    .line 1937
    .line 1938
    move/from16 v30, v6

    .line 1939
    .line 1940
    move/from16 v31, v7

    .line 1941
    .line 1942
    move-object/from16 v32, v4

    .line 1943
    .line 1944
    move-object/from16 v33, v5

    .line 1945
    .line 1946
    move-object/from16 v34, v1

    .line 1947
    .line 1948
    move-object/from16 v35, v13

    .line 1949
    .line 1950
    move-object/from16 v36, v12

    .line 1951
    .line 1952
    move-object/from16 v37, v2

    .line 1953
    .line 1954
    move-object/from16 v38, v8

    .line 1955
    .line 1956
    move-object/from16 v39, v0

    .line 1957
    .line 1958
    move-object/from16 v42, v9

    .line 1959
    .line 1960
    invoke-static/range {v29 .. v42}, Lcom/twntool/android/bridge/TwnBridge;->C(Lig;IILcom/twntool/android/bridge/TwnBridge;Lfi;Lfi;Ljava/util/HashMap;Ljava/util/List;Lgi;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Li6;)Ljava/lang/Object;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v0

    .line 1964
    move-object/from16 v8, v24

    .line 1965
    .line 1966
    if-ne v0, v8, :cond_25

    .line 1967
    .line 1968
    move-object v5, v8

    .line 1969
    goto/16 :goto_2b

    .line 1970
    .line 1971
    :cond_25
    move-object/from16 v0, p0

    .line 1972
    .line 1973
    move/from16 v57, v6

    .line 1974
    .line 1975
    move/from16 v63, v7

    .line 1976
    .line 1977
    move/from16 v59, v19

    .line 1978
    .line 1979
    move-object/from16 v6, v20

    .line 1980
    .line 1981
    move-object/from16 v7, v21

    .line 1982
    .line 1983
    move-wide/from16 v61, v44

    .line 1984
    .line 1985
    move/from16 v60, v46

    .line 1986
    .line 1987
    move/from16 v58, v49

    .line 1988
    .line 1989
    move-object/from16 v20, v3

    .line 1990
    .line 1991
    move/from16 v19, v10

    .line 1992
    .line 1993
    move-object/from16 v3, v23

    .line 1994
    .line 1995
    move-object/from16 v10, v25

    .line 1996
    .line 1997
    :goto_1d
    move-object/from16 v24, v8

    .line 1998
    .line 1999
    move-object/from16 v11, v26

    .line 2000
    .line 2001
    move-object/from16 v8, v43

    .line 2002
    .line 2003
    goto/16 :goto_1a

    .line 2004
    .line 2005
    :cond_26
    move-object/from16 v21, v7

    .line 2006
    .line 2007
    move-object/from16 v43, v8

    .line 2008
    .line 2009
    move-object/from16 v25, v10

    .line 2010
    .line 2011
    move-object/from16 v26, v11

    .line 2012
    .line 2013
    move/from16 v10, v19

    .line 2014
    .line 2015
    move-object/from16 v3, v20

    .line 2016
    .line 2017
    move-object/from16 v8, v24

    .line 2018
    .line 2019
    move/from16 v49, v58

    .line 2020
    .line 2021
    move/from16 v19, v59

    .line 2022
    .line 2023
    move/from16 v46, v60

    .line 2024
    .line 2025
    move-wide/from16 v44, v61

    .line 2026
    .line 2027
    move/from16 v7, v63

    .line 2028
    .line 2029
    const/4 v11, 0x2

    .line 2030
    move-object/from16 v20, v6

    .line 2031
    .line 2032
    move/from16 v6, v57

    .line 2033
    .line 2034
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2035
    .line 2036
    .line 2037
    move-result v0

    .line 2038
    add-int/2addr v0, v10

    .line 2039
    move/from16 v56, v7

    .line 2040
    .line 2041
    move-object v10, v13

    .line 2042
    move-object v11, v14

    .line 2043
    move/from16 v52, v19

    .line 2044
    .line 2045
    move-object/from16 v3, v20

    .line 2046
    .line 2047
    move-object/from16 v7, v25

    .line 2048
    .line 2049
    move-object/from16 v8, v26

    .line 2050
    .line 2051
    move-wide/from16 v54, v44

    .line 2052
    .line 2053
    move/from16 v53, v46

    .line 2054
    .line 2055
    move/from16 v20, v49

    .line 2056
    .line 2057
    move-object v14, v1

    .line 2058
    move-object v1, v4

    .line 2059
    move-object v13, v5

    .line 2060
    move/from16 v19, v6

    .line 2061
    .line 2062
    move-object v6, v9

    .line 2063
    move-object v9, v12

    .line 2064
    move-object v12, v15

    .line 2065
    move-object/from16 v4, v21

    .line 2066
    .line 2067
    move-object/from16 v5, v43

    .line 2068
    .line 2069
    move-object v15, v2

    .line 2070
    move v2, v0

    .line 2071
    goto/16 :goto_17

    .line 2072
    .line 2073
    :catch_1
    move-exception v0

    .line 2074
    move/from16 p0, v4

    .line 2075
    .line 2076
    move-object v1, v5

    .line 2077
    move-object v2, v11

    .line 2078
    const/4 v11, 0x2

    .line 2079
    move-object v5, v0

    .line 2080
    move-object/from16 v49, v2

    .line 2081
    .line 2082
    move-object v2, v3

    .line 2083
    move-object v0, v7

    .line 2084
    move-object/from16 v25, v23

    .line 2085
    .line 2086
    move-object/from16 v4, v31

    .line 2087
    .line 2088
    move-object/from16 v7, v32

    .line 2089
    .line 2090
    move-object/from16 v3, v33

    .line 2091
    .line 2092
    move/from16 v23, p0

    .line 2093
    .line 2094
    move-object/from16 v68, v26

    .line 2095
    .line 2096
    move/from16 v26, v14

    .line 2097
    .line 2098
    move-object/from16 v14, v68

    .line 2099
    .line 2100
    move-wide/from16 v69, v9

    .line 2101
    .line 2102
    move-object/from16 v10, v29

    .line 2103
    .line 2104
    move-object/from16 v9, v30

    .line 2105
    .line 2106
    move-wide/from16 v29, v69

    .line 2107
    .line 2108
    goto/16 :goto_23

    .line 2109
    .line 2110
    :catch_2
    move-exception v0

    .line 2111
    move-object/from16 v49, v11

    .line 2112
    .line 2113
    move-object/from16 v1, v24

    .line 2114
    .line 2115
    goto :goto_20

    .line 2116
    :goto_1e
    move-object v5, v0

    .line 2117
    move-object v0, v6

    .line 2118
    move v6, v2

    .line 2119
    move-object/from16 v2, v21

    .line 2120
    .line 2121
    goto/16 :goto_23

    .line 2122
    .line 2123
    :catch_3
    move-exception v0

    .line 2124
    :goto_1f
    move-object/from16 v49, v11

    .line 2125
    .line 2126
    move-object/from16 v1, v24

    .line 2127
    .line 2128
    :goto_20
    const/4 v11, 0x2

    .line 2129
    goto :goto_1e

    .line 2130
    :catch_4
    move-exception v0

    .line 2131
    move/from16 v23, v1

    .line 2132
    .line 2133
    goto :goto_1f

    .line 2134
    :catch_5
    move-exception v0

    .line 2135
    move/from16 v20, v1

    .line 2136
    .line 2137
    goto :goto_1f

    .line 2138
    :catch_6
    move-exception v0

    .line 2139
    move/from16 v20, v1

    .line 2140
    .line 2141
    move-object/from16 v49, v11

    .line 2142
    .line 2143
    move-object/from16 v1, v24

    .line 2144
    .line 2145
    move/from16 v2, v52

    .line 2146
    .line 2147
    goto :goto_20

    .line 2148
    :catch_7
    move-exception v0

    .line 2149
    move-wide/from16 v29, v1

    .line 2150
    .line 2151
    move-object/from16 v49, v11

    .line 2152
    .line 2153
    move-object/from16 v1, v24

    .line 2154
    .line 2155
    move/from16 v2, v52

    .line 2156
    .line 2157
    move/from16 v20, v53

    .line 2158
    .line 2159
    goto :goto_20

    .line 2160
    :catch_8
    move-exception v0

    .line 2161
    move/from16 v26, v1

    .line 2162
    .line 2163
    move-object/from16 v25, v2

    .line 2164
    .line 2165
    move-object/from16 v49, v11

    .line 2166
    .line 2167
    move-object/from16 v1, v24

    .line 2168
    .line 2169
    move/from16 v2, v52

    .line 2170
    .line 2171
    move/from16 v20, v53

    .line 2172
    .line 2173
    move-wide/from16 v29, v54

    .line 2174
    .line 2175
    goto :goto_20

    .line 2176
    :catch_9
    move-exception v0

    .line 2177
    move/from16 v19, v1

    .line 2178
    .line 2179
    move-object/from16 v25, v2

    .line 2180
    .line 2181
    move-object/from16 v49, v11

    .line 2182
    .line 2183
    move-object/from16 v1, v24

    .line 2184
    .line 2185
    move/from16 v2, v52

    .line 2186
    .line 2187
    move/from16 v20, v53

    .line 2188
    .line 2189
    move-wide/from16 v29, v54

    .line 2190
    .line 2191
    move/from16 v26, v56

    .line 2192
    .line 2193
    goto :goto_20

    .line 2194
    :catch_a
    move-exception v0

    .line 2195
    :goto_21
    move-object/from16 v25, v2

    .line 2196
    .line 2197
    move-object/from16 v49, v11

    .line 2198
    .line 2199
    move-object/from16 v1, v24

    .line 2200
    .line 2201
    move/from16 v2, v52

    .line 2202
    .line 2203
    move/from16 v20, v53

    .line 2204
    .line 2205
    move-wide/from16 v29, v54

    .line 2206
    .line 2207
    move/from16 v26, v56

    .line 2208
    .line 2209
    goto :goto_20

    .line 2210
    :catch_b
    move-exception v0

    .line 2211
    move-object/from16 v21, v1

    .line 2212
    .line 2213
    goto :goto_21

    .line 2214
    :catch_c
    move-exception v0

    .line 2215
    goto :goto_22

    .line 2216
    :catch_d
    move-exception v0

    .line 2217
    :goto_22
    move-object/from16 v49, v11

    .line 2218
    .line 2219
    move-object/from16 v25, v21

    .line 2220
    .line 2221
    move/from16 v2, v52

    .line 2222
    .line 2223
    move/from16 v20, v53

    .line 2224
    .line 2225
    move-wide/from16 v29, v54

    .line 2226
    .line 2227
    move/from16 v26, v56

    .line 2228
    .line 2229
    const/4 v11, 0x2

    .line 2230
    move-object/from16 v21, v1

    .line 2231
    .line 2232
    move-object/from16 v1, v24

    .line 2233
    .line 2234
    goto :goto_1e

    .line 2235
    :catch_e
    move-exception v0

    .line 2236
    move/from16 v23, v2

    .line 2237
    .line 2238
    goto :goto_22

    .line 2239
    :catch_f
    move-exception v0

    .line 2240
    move/from16 v23, v2

    .line 2241
    .line 2242
    goto :goto_22

    .line 2243
    :goto_23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2247
    .line 2248
    .line 2249
    move-result-object v17

    .line 2250
    move-object/from16 p0, v0

    .line 2251
    .line 2252
    if-nez v17, :cond_27

    .line 2253
    .line 2254
    move-object/from16 v11, v16

    .line 2255
    .line 2256
    goto :goto_24

    .line 2257
    :cond_27
    move-object/from16 v11, v17

    .line 2258
    .line 2259
    :goto_24
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2260
    .line 2261
    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v0

    .line 2265
    const-string v11, "toLowerCase(...)"

    .line 2266
    .line 2267
    invoke-static {v0, v11}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2268
    .line 2269
    .line 2270
    const-string v11, "404"

    .line 2271
    .line 2272
    move-object/from16 p1, v3

    .line 2273
    .line 2274
    const/4 v3, 0x0

    .line 2275
    invoke-static {v0, v11, v3}, LGl;->v0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 2276
    .line 2277
    .line 2278
    move-result v11

    .line 2279
    if-nez v11, :cond_29

    .line 2280
    .line 2281
    const-string v11, "not found"

    .line 2282
    .line 2283
    invoke-static {v0, v11, v3}, LGl;->v0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 2284
    .line 2285
    .line 2286
    move-result v11

    .line 2287
    if-nez v11, :cond_29

    .line 2288
    .line 2289
    const-string v11, "m\u00e9todo"

    .line 2290
    .line 2291
    invoke-static {v0, v11, v3}, LGl;->v0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 2292
    .line 2293
    .line 2294
    move-result v11

    .line 2295
    if-nez v11, :cond_29

    .line 2296
    .line 2297
    const-string v11, "method not allowed"

    .line 2298
    .line 2299
    invoke-static {v0, v11, v3}, LGl;->v0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 2300
    .line 2301
    .line 2302
    move-result v0

    .line 2303
    if-eqz v0, :cond_28

    .line 2304
    .line 2305
    goto :goto_25

    .line 2306
    :cond_28
    throw v5

    .line 2307
    :cond_29
    :goto_25
    iput-boolean v3, v2, Lcom/twntool/android/bridge/TwnBridge;->N:Z

    .line 2308
    .line 2309
    const-string v0, "sendbox_batch indisponivel \u2014 caindo para carta a carta"

    .line 2310
    .line 2311
    move-object/from16 v5, v22

    .line 2312
    .line 2313
    const/4 v3, 0x0

    .line 2314
    invoke-virtual {v2, v5, v0, v3}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    .line 2316
    .line 2317
    move-object/from16 v17, v1

    .line 2318
    .line 2319
    move-object v0, v2

    .line 2320
    move-object/from16 v22, v5

    .line 2321
    .line 2322
    move/from16 v11, v20

    .line 2323
    .line 2324
    move/from16 v1, v23

    .line 2325
    .line 2326
    move-wide/from16 v64, v29

    .line 2327
    .line 2328
    move-object/from16 v3, v49

    .line 2329
    .line 2330
    move-object/from16 v5, p0

    .line 2331
    .line 2332
    move-object/from16 v2, p1

    .line 2333
    .line 2334
    move-object/from16 p1, v12

    .line 2335
    .line 2336
    move/from16 p0, v19

    .line 2337
    .line 2338
    move/from16 v12, v26

    .line 2339
    .line 2340
    move/from16 v19, v6

    .line 2341
    .line 2342
    move-object/from16 v6, v25

    .line 2343
    .line 2344
    goto/16 :goto_26

    .line 2345
    .line 2346
    :cond_2a
    move-object/from16 v21, v1

    .line 2347
    .line 2348
    move/from16 v23, v2

    .line 2349
    .line 2350
    move-object/from16 v25, v5

    .line 2351
    .line 2352
    move-object/from16 v49, v11

    .line 2353
    .line 2354
    move-object/from16 v1, v24

    .line 2355
    .line 2356
    move/from16 v2, v52

    .line 2357
    .line 2358
    move/from16 v20, v53

    .line 2359
    .line 2360
    move-wide/from16 v29, v54

    .line 2361
    .line 2362
    move/from16 v26, v56

    .line 2363
    .line 2364
    move-object/from16 v17, v1

    .line 2365
    .line 2366
    move-object v5, v6

    .line 2367
    move-object/from16 p1, v12

    .line 2368
    .line 2369
    move/from16 p0, v19

    .line 2370
    .line 2371
    move/from16 v11, v20

    .line 2372
    .line 2373
    move-object/from16 v0, v21

    .line 2374
    .line 2375
    move/from16 v1, v23

    .line 2376
    .line 2377
    move-object/from16 v6, v25

    .line 2378
    .line 2379
    move/from16 v12, v26

    .line 2380
    .line 2381
    move-wide/from16 v64, v29

    .line 2382
    .line 2383
    move/from16 v19, v2

    .line 2384
    .line 2385
    move-object v2, v3

    .line 2386
    move-object/from16 v3, v49

    .line 2387
    .line 2388
    goto :goto_26

    .line 2389
    :cond_2b
    move-object v1, v5

    .line 2390
    move-object v5, v8

    .line 2391
    move v8, v11

    .line 2392
    move-object/from16 v17, v1

    .line 2393
    .line 2394
    move-object/from16 v22, v5

    .line 2395
    .line 2396
    move-object/from16 p1, v12

    .line 2397
    .line 2398
    move v11, v13

    .line 2399
    move-wide/from16 v64, v20

    .line 2400
    .line 2401
    move-object/from16 v13, v23

    .line 2402
    .line 2403
    move-object/from16 v5, v26

    .line 2404
    .line 2405
    const/4 v1, 0x0

    .line 2406
    move v12, v6

    .line 2407
    move-object/from16 v6, p0

    .line 2408
    .line 2409
    move/from16 p0, v4

    .line 2410
    .line 2411
    move-object v4, v3

    .line 2412
    move-object/from16 v3, v49

    .line 2413
    .line 2414
    move-object/from16 v68, v19

    .line 2415
    .line 2416
    move/from16 v19, v8

    .line 2417
    .line 2418
    move-object v8, v15

    .line 2419
    move-object v15, v14

    .line 2420
    move-object v14, v10

    .line 2421
    move-object v10, v9

    .line 2422
    move-object/from16 v9, v68

    .line 2423
    .line 2424
    :goto_26
    if-nez v1, :cond_2c

    .line 2425
    .line 2426
    move-object/from16 v30, p1

    .line 2427
    .line 2428
    move-object/from16 v21, v6

    .line 2429
    .line 2430
    move/from16 v20, v11

    .line 2431
    .line 2432
    goto :goto_27

    .line 2433
    :cond_2c
    move/from16 v20, v11

    .line 2434
    .line 2435
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 2436
    .line 2437
    .line 2438
    move-result v11

    .line 2439
    move-object/from16 v21, v6

    .line 2440
    .line 2441
    move-object/from16 v6, p1

    .line 2442
    .line 2443
    invoke-interface {v6, v1, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v1

    .line 2447
    move-object/from16 v30, v1

    .line 2448
    .line 2449
    :goto_27
    invoke-interface/range {v30 .. v30}, Ljava/util/Collection;->isEmpty()Z

    .line 2450
    .line 2451
    .line 2452
    move-result v1

    .line 2453
    const/4 v6, 0x1

    .line 2454
    xor-int/2addr v1, v6

    .line 2455
    if-eqz v1, :cond_2e

    .line 2456
    .line 2457
    iget v1, v0, Lcom/twntool/android/bridge/TwnBridge;->x:I

    .line 2458
    .line 2459
    sget v6, Lzk;->a:I

    .line 2460
    .line 2461
    new-instance v6, Lyk;

    .line 2462
    .line 2463
    const/4 v11, 0x0

    .line 2464
    invoke-direct {v6, v1, v11}, Lyk;-><init>(II)V

    .line 2465
    .line 2466
    .line 2467
    new-instance v1, LTp;

    .line 2468
    .line 2469
    const/16 v43, 0x0

    .line 2470
    .line 2471
    move-object/from16 v29, v1

    .line 2472
    .line 2473
    move-object/from16 v31, v6

    .line 2474
    .line 2475
    move-object/from16 v32, v8

    .line 2476
    .line 2477
    move-object/from16 v33, v0

    .line 2478
    .line 2479
    move-object/from16 v34, v7

    .line 2480
    .line 2481
    move-object/from16 v35, v3

    .line 2482
    .line 2483
    move/from16 v36, p0

    .line 2484
    .line 2485
    move/from16 v37, v12

    .line 2486
    .line 2487
    move-object/from16 v38, v13

    .line 2488
    .line 2489
    move-object/from16 v39, v14

    .line 2490
    .line 2491
    move-object/from16 v40, v10

    .line 2492
    .line 2493
    move-object/from16 v41, v9

    .line 2494
    .line 2495
    move-object/from16 v42, v15

    .line 2496
    .line 2497
    invoke-direct/range {v29 .. v43}, LTp;-><init>(Ljava/util/List;Lvk;Llo;Lcom/twntool/android/bridge/TwnBridge;Lho;Lig;IILfi;Lfi;Ljava/util/HashMap;Ljava/util/List;Lgi;Li6;)V

    .line 2498
    .line 2499
    .line 2500
    iput-object v0, v5, LRp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 2501
    .line 2502
    iput-object v2, v5, LRp;->e:Ljava/util/List;

    .line 2503
    .line 2504
    iput-object v7, v5, LRp;->f:Lho;

    .line 2505
    .line 2506
    iput-object v4, v5, LRp;->g:Ljava/util/ArrayList;

    .line 2507
    .line 2508
    iput-object v9, v5, LRp;->h:Ljava/util/List;

    .line 2509
    .line 2510
    iput-object v10, v5, LRp;->j:Ljava/util/HashMap;

    .line 2511
    .line 2512
    iput-object v3, v5, LRp;->k:Lig;

    .line 2513
    .line 2514
    iput-object v13, v5, LRp;->l:Lfi;

    .line 2515
    .line 2516
    iput-object v14, v5, LRp;->m:Lfi;

    .line 2517
    .line 2518
    iput-object v15, v5, LRp;->n:Lgi;

    .line 2519
    .line 2520
    iput-object v8, v5, LRp;->o:Llo;

    .line 2521
    .line 2522
    move-object/from16 v6, v21

    .line 2523
    .line 2524
    iput-object v6, v5, LRp;->p:Ljava/util/Iterator;

    .line 2525
    .line 2526
    const/4 v11, 0x0

    .line 2527
    iput-object v11, v5, LRp;->q:Ljava/util/List;

    .line 2528
    .line 2529
    iput-object v11, v5, LRp;->r:Ljava/util/List;

    .line 2530
    .line 2531
    iput-object v11, v5, LRp;->s:Lx1;

    .line 2532
    .line 2533
    iput-object v11, v5, LRp;->t:Ljava/util/Iterator;

    .line 2534
    .line 2535
    move/from16 v11, p0

    .line 2536
    .line 2537
    iput v11, v5, LRp;->u:I

    .line 2538
    .line 2539
    iput v12, v5, LRp;->v:I

    .line 2540
    .line 2541
    move-object/from16 v21, v2

    .line 2542
    .line 2543
    move-object/from16 p0, v3

    .line 2544
    .line 2545
    move-wide/from16 v2, v64

    .line 2546
    .line 2547
    iput-wide v2, v5, LRp;->A:J

    .line 2548
    .line 2549
    move-object/from16 v23, v0

    .line 2550
    .line 2551
    move/from16 v0, v20

    .line 2552
    .line 2553
    iput v0, v5, LRp;->w:I

    .line 2554
    .line 2555
    move/from16 v0, v19

    .line 2556
    .line 2557
    iput v0, v5, LRp;->x:I

    .line 2558
    .line 2559
    move-wide/from16 v25, v2

    .line 2560
    .line 2561
    const/4 v3, 0x3

    .line 2562
    iput v3, v5, LRp;->D:I

    .line 2563
    .line 2564
    new-instance v2, Lbk;

    .line 2565
    .line 2566
    iget-object v3, v5, Lj6;->b:Lp6;

    .line 2567
    .line 2568
    invoke-static {v3}, Lud;->o(Ljava/lang/Object;)V

    .line 2569
    .line 2570
    .line 2571
    invoke-direct {v2, v3, v5}, Lbk;-><init>(Lp6;Li6;)V

    .line 2572
    .line 2573
    .line 2574
    invoke-static {v2, v2, v1}, LN6;->N(Lbk;Lbk;LAb;)Ljava/lang/Object;

    .line 2575
    .line 2576
    .line 2577
    move-result-object v1

    .line 2578
    move-object/from16 v3, v17

    .line 2579
    .line 2580
    if-ne v1, v3, :cond_2d

    .line 2581
    .line 2582
    move-object v5, v3

    .line 2583
    goto/16 :goto_2b

    .line 2584
    .line 2585
    :cond_2d
    move-object/from16 v1, p0

    .line 2586
    .line 2587
    move/from16 v19, v0

    .line 2588
    .line 2589
    move/from16 v2, v20

    .line 2590
    .line 2591
    move-object/from16 v0, v23

    .line 2592
    .line 2593
    move-object/from16 v20, v8

    .line 2594
    .line 2595
    move/from16 v68, v11

    .line 2596
    .line 2597
    move-object v11, v6

    .line 2598
    move/from16 v6, v68

    .line 2599
    .line 2600
    move-wide/from16 v69, v25

    .line 2601
    .line 2602
    move-object/from16 v26, v9

    .line 2603
    .line 2604
    move-wide/from16 v8, v69

    .line 2605
    .line 2606
    :goto_28
    move-object/from16 v17, v3

    .line 2607
    .line 2608
    move-wide/from16 v66, v8

    .line 2609
    .line 2610
    move-object v9, v10

    .line 2611
    move-object v10, v14

    .line 2612
    move-object v14, v15

    .line 2613
    move-object/from16 v15, v20

    .line 2614
    .line 2615
    const/16 v18, 0x1

    .line 2616
    .line 2617
    move-object v3, v1

    .line 2618
    move/from16 v20, v2

    .line 2619
    .line 2620
    move-object v8, v5

    .line 2621
    move-object v1, v11

    .line 2622
    move-object/from16 v2, v21

    .line 2623
    .line 2624
    move-object/from16 v5, v26

    .line 2625
    .line 2626
    goto :goto_29

    .line 2627
    :cond_2e
    move/from16 v11, p0

    .line 2628
    .line 2629
    move-object/from16 v23, v0

    .line 2630
    .line 2631
    move-object/from16 p0, v3

    .line 2632
    .line 2633
    move/from16 v0, v19

    .line 2634
    .line 2635
    move-object/from16 v6, v21

    .line 2636
    .line 2637
    move-wide/from16 v25, v64

    .line 2638
    .line 2639
    move-object/from16 v21, v2

    .line 2640
    .line 2641
    move-object v1, v6

    .line 2642
    move v6, v11

    .line 2643
    move-object/from16 v0, v23

    .line 2644
    .line 2645
    move-wide/from16 v66, v25

    .line 2646
    .line 2647
    const/16 v18, 0x1

    .line 2648
    .line 2649
    move-object/from16 v68, v8

    .line 2650
    .line 2651
    move-object v8, v5

    .line 2652
    move-object v5, v9

    .line 2653
    move-object v9, v10

    .line 2654
    move-object v10, v14

    .line 2655
    move-object v14, v15

    .line 2656
    move-object/from16 v15, v68

    .line 2657
    .line 2658
    :goto_29
    add-int/lit8 v11, v19, 0x1

    .line 2659
    .line 2660
    move/from16 v19, v12

    .line 2661
    .line 2662
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 2663
    .line 2664
    .line 2665
    move-result v12

    .line 2666
    if-ge v11, v12, :cond_30

    .line 2667
    .line 2668
    iget-wide v11, v0, Lcom/twntool/android/bridge/TwnBridge;->F:J

    .line 2669
    .line 2670
    iput-object v0, v8, LRp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 2671
    .line 2672
    iput-object v2, v8, LRp;->e:Ljava/util/List;

    .line 2673
    .line 2674
    iput-object v7, v8, LRp;->f:Lho;

    .line 2675
    .line 2676
    iput-object v4, v8, LRp;->g:Ljava/util/ArrayList;

    .line 2677
    .line 2678
    iput-object v5, v8, LRp;->h:Ljava/util/List;

    .line 2679
    .line 2680
    iput-object v9, v8, LRp;->j:Ljava/util/HashMap;

    .line 2681
    .line 2682
    iput-object v3, v8, LRp;->k:Lig;

    .line 2683
    .line 2684
    iput-object v13, v8, LRp;->l:Lfi;

    .line 2685
    .line 2686
    iput-object v10, v8, LRp;->m:Lfi;

    .line 2687
    .line 2688
    iput-object v14, v8, LRp;->n:Lgi;

    .line 2689
    .line 2690
    iput-object v15, v8, LRp;->o:Llo;

    .line 2691
    .line 2692
    iput-object v1, v8, LRp;->p:Ljava/util/Iterator;

    .line 2693
    .line 2694
    move-object/from16 v21, v1

    .line 2695
    .line 2696
    const/4 v1, 0x0

    .line 2697
    iput-object v1, v8, LRp;->q:Ljava/util/List;

    .line 2698
    .line 2699
    iput-object v1, v8, LRp;->r:Ljava/util/List;

    .line 2700
    .line 2701
    iput-object v1, v8, LRp;->s:Lx1;

    .line 2702
    .line 2703
    iput-object v1, v8, LRp;->t:Ljava/util/Iterator;

    .line 2704
    .line 2705
    iput v6, v8, LRp;->u:I

    .line 2706
    .line 2707
    move/from16 v1, v19

    .line 2708
    .line 2709
    iput v1, v8, LRp;->v:I

    .line 2710
    .line 2711
    move-object/from16 v19, v0

    .line 2712
    .line 2713
    move/from16 v23, v1

    .line 2714
    .line 2715
    move-wide/from16 v0, v66

    .line 2716
    .line 2717
    iput-wide v0, v8, LRp;->A:J

    .line 2718
    .line 2719
    move-wide/from16 v25, v0

    .line 2720
    .line 2721
    move/from16 v0, v20

    .line 2722
    .line 2723
    iput v0, v8, LRp;->w:I

    .line 2724
    .line 2725
    const/4 v1, 0x4

    .line 2726
    iput v1, v8, LRp;->D:I

    .line 2727
    .line 2728
    invoke-static {v11, v12, v8}, Lud;->x(JLi6;)Ljava/lang/Object;

    .line 2729
    .line 2730
    .line 2731
    move-result-object v11

    .line 2732
    move-object/from16 v12, v17

    .line 2733
    .line 2734
    if-ne v11, v12, :cond_2f

    .line 2735
    .line 2736
    move-object v5, v12

    .line 2737
    goto/16 :goto_2b

    .line 2738
    .line 2739
    :cond_2f
    move v11, v0

    .line 2740
    move-object/from16 v49, v3

    .line 2741
    .line 2742
    move-object v3, v4

    .line 2743
    move v4, v6

    .line 2744
    move-object/from16 v0, v19

    .line 2745
    .line 2746
    move/from16 v6, v23

    .line 2747
    .line 2748
    move-object/from16 v19, v5

    .line 2749
    .line 2750
    move-object/from16 v23, v13

    .line 2751
    .line 2752
    move-object v5, v15

    .line 2753
    move-object/from16 v15, v21

    .line 2754
    .line 2755
    move-wide/from16 v20, v25

    .line 2756
    .line 2757
    move-object/from16 v26, v8

    .line 2758
    .line 2759
    :goto_2a
    move-object v1, v15

    .line 2760
    move-object/from16 v8, v22

    .line 2761
    .line 2762
    move-object v15, v5

    .line 2763
    move-object v5, v12

    .line 2764
    goto/16 :goto_16

    .line 2765
    .line 2766
    :cond_30
    move-object/from16 v21, v1

    .line 2767
    .line 2768
    move/from16 v23, v19

    .line 2769
    .line 2770
    move-wide/from16 v25, v66

    .line 2771
    .line 2772
    move-object/from16 v19, v0

    .line 2773
    .line 2774
    move/from16 v0, v20

    .line 2775
    .line 2776
    move v11, v0

    .line 2777
    move-object/from16 v49, v3

    .line 2778
    .line 2779
    move-object v3, v4

    .line 2780
    move v4, v6

    .line 2781
    move-object/from16 v0, v19

    .line 2782
    .line 2783
    move/from16 v6, v23

    .line 2784
    .line 2785
    move-wide/from16 v20, v25

    .line 2786
    .line 2787
    move-object/from16 v19, v5

    .line 2788
    .line 2789
    move-object/from16 v26, v8

    .line 2790
    .line 2791
    move-object/from16 v23, v13

    .line 2792
    .line 2793
    move-object/from16 v5, v17

    .line 2794
    .line 2795
    move-object/from16 v8, v22

    .line 2796
    .line 2797
    goto/16 :goto_16

    .line 2798
    .line 2799
    :cond_31
    move-object/from16 v22, v8

    .line 2800
    .line 2801
    iget-wide v5, v15, Llo;->i:J

    .line 2802
    .line 2803
    iput-wide v5, v0, Lcom/twntool/android/bridge/TwnBridge;->L:J

    .line 2804
    .line 2805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2806
    .line 2807
    .line 2808
    move-result-wide v5

    .line 2809
    sub-long v5, v5, v20

    .line 2810
    .line 2811
    const-wide/16 v7, 0x64

    .line 2812
    .line 2813
    div-long/2addr v5, v7

    .line 2814
    long-to-double v5, v5

    .line 2815
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 2816
    .line 2817
    div-double/2addr v5, v7

    .line 2818
    iget v1, v15, Llo;->n:I

    .line 2819
    .line 2820
    if-lez v1, :cond_32

    .line 2821
    .line 2822
    iget-wide v7, v15, Llo;->o:J

    .line 2823
    .line 2824
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2825
    .line 2826
    const-string v11, "429: "

    .line 2827
    .line 2828
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2829
    .line 2830
    .line 2831
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2832
    .line 2833
    .line 2834
    const-string v1, "x freio, "

    .line 2835
    .line 2836
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
    .line 2838
    .line 2839
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2840
    .line 2841
    .line 2842
    const-string v1, "ms parado"

    .line 2843
    .line 2844
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    .line 2846
    .line 2847
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2848
    .line 2849
    .line 2850
    move-result-object v1

    .line 2851
    move-object/from16 v7, v22

    .line 2852
    .line 2853
    const/4 v3, 0x0

    .line 2854
    invoke-virtual {v0, v7, v1, v3}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    .line 2856
    .line 2857
    :cond_32
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    .line 2858
    .line 2859
    .line 2860
    move-result v1

    .line 2861
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2862
    .line 2863
    .line 2864
    move-result-object v1

    .line 2865
    iget v3, v10, Lfi;->a:I

    .line 2866
    .line 2867
    new-instance v7, Ljava/lang/Integer;

    .line 2868
    .line 2869
    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 2870
    .line 2871
    .line 2872
    new-instance v3, Lih;

    .line 2873
    .line 2874
    move-object/from16 v8, v50

    .line 2875
    .line 2876
    invoke-direct {v3, v8, v7}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2877
    .line 2878
    .line 2879
    new-instance v7, Ljava/lang/Integer;

    .line 2880
    .line 2881
    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 2882
    .line 2883
    .line 2884
    new-instance v4, Lih;

    .line 2885
    .line 2886
    move-object/from16 v8, v48

    .line 2887
    .line 2888
    invoke-direct {v4, v8, v7}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2889
    .line 2890
    .line 2891
    invoke-static/range {v19 .. v19}, LY4;->L0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 2892
    .line 2893
    .line 2894
    move-result-object v7

    .line 2895
    new-instance v8, Lih;

    .line 2896
    .line 2897
    move-object/from16 v10, v47

    .line 2898
    .line 2899
    invoke-direct {v8, v10, v7}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2900
    .line 2901
    .line 2902
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 2903
    .line 2904
    .line 2905
    move-result v2

    .line 2906
    new-instance v7, Ljava/lang/Integer;

    .line 2907
    .line 2908
    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 2909
    .line 2910
    .line 2911
    new-instance v2, Lih;

    .line 2912
    .line 2913
    const-string v10, "destinos"

    .line 2914
    .line 2915
    invoke-direct {v2, v10, v7}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2916
    .line 2917
    .line 2918
    new-instance v7, Ljava/lang/Double;

    .line 2919
    .line 2920
    invoke-direct {v7, v5, v6}, Ljava/lang/Double;-><init>(D)V

    .line 2921
    .line 2922
    .line 2923
    new-instance v5, Lih;

    .line 2924
    .line 2925
    const-string v6, "segundos"

    .line 2926
    .line 2927
    invoke-direct {v5, v6, v7}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2928
    .line 2929
    .line 2930
    new-instance v6, Lih;

    .line 2931
    .line 2932
    const-string v7, "por_amigo"

    .line 2933
    .line 2934
    invoke-direct {v6, v7, v9}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2935
    .line 2936
    .line 2937
    iget v7, v15, Llo;->n:I

    .line 2938
    .line 2939
    new-instance v9, Ljava/lang/Integer;

    .line 2940
    .line 2941
    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 2942
    .line 2943
    .line 2944
    new-instance v7, Lih;

    .line 2945
    .line 2946
    const-string v10, "freios"

    .line 2947
    .line 2948
    invoke-direct {v7, v10, v9}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2949
    .line 2950
    .line 2951
    iget-wide v9, v15, Llo;->i:J

    .line 2952
    .line 2953
    new-instance v11, Ljava/lang/Long;

    .line 2954
    .line 2955
    invoke-direct {v11, v9, v10}, Ljava/lang/Long;-><init>(J)V

    .line 2956
    .line 2957
    .line 2958
    new-instance v9, Lih;

    .line 2959
    .line 2960
    const-string v10, "ritmo"

    .line 2961
    .line 2962
    invoke-direct {v9, v10, v11}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2963
    .line 2964
    .line 2965
    move-object/from16 v29, v3

    .line 2966
    .line 2967
    move-object/from16 v30, v4

    .line 2968
    .line 2969
    move-object/from16 v31, v8

    .line 2970
    .line 2971
    move-object/from16 v32, v2

    .line 2972
    .line 2973
    move-object/from16 v33, v5

    .line 2974
    .line 2975
    move-object/from16 v34, v6

    .line 2976
    .line 2977
    move-object/from16 v35, v7

    .line 2978
    .line 2979
    move-object/from16 v36, v9

    .line 2980
    .line 2981
    filled-new-array/range {v29 .. v36}, [Lih;

    .line 2982
    .line 2983
    .line 2984
    move-result-object v2

    .line 2985
    invoke-static {v2}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 2986
    .line 2987
    .line 2988
    move-result-object v2

    .line 2989
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 2990
    .line 2991
    .line 2992
    move-result-object v1

    .line 2993
    move-object/from16 v2, v28

    .line 2994
    .line 2995
    invoke-virtual {v0, v2, v1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2996
    .line 2997
    .line 2998
    move-object/from16 v5, v27

    .line 2999
    .line 3000
    :goto_2b
    return-object v5
.end method

.method public static final h(Lcom/twntool/android/bridge/TwnBridge;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/twntool/android/bridge/TwnBridge;->a:Lcom/twntool/auth/AuthManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/twntool/auth/AuthManager;->l()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "send_cards"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    const-string v3, "js_on_enviar_carta_rede"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "Send Cards desativado para esta chave."

    .line 25
    .line 26
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v3, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/twntool/game/AppState;->k:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    const-string v0, "Carregue os amigos primeiro (cityId)."

    .line 45
    .line 46
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v3, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v2, 0x1

    .line 55
    :goto_0
    return v2
.end method

.method public static final i(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    new-instance v0, Lih;

    .line 7
    .line 8
    const-string v1, "ok"

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const-string p0, "erro desconhecido"

    .line 20
    .line 21
    :cond_0
    new-instance p1, Lih;

    .line 22
    .line 23
    const-string v1, "erro"

    .line 24
    .line 25
    invoke-direct {p1, v1, p0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    filled-new-array {v0, p1}, [Lih;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static final j(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lu8;->a:Lu8;

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 7
    .line 8
    const-class v1, Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    instance-of p1, p0, Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Ljava/util/List;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p0, v1

    .line 23
    :goto_0
    if-eqz p0, :cond_5

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    instance-of v3, v2, Ljava/util/List;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    check-cast v2, Ljava/util/List;

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v2, v1

    .line 52
    :goto_2
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-static {v2}, LY4;->L0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move-object v2, v1

    .line 60
    :goto_3
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move-object v0, p1

    .line 67
    :catchall_0
    :cond_5
    return-object v0
.end method

.method public static final k(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lv8;->a:Lv8;

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 7
    .line 8
    const-class v1, Ljava/util/Map;

    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    instance-of p1, p0, Ljava/util/Map;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    if-nez p0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v0, p0

    .line 26
    :catchall_0
    :goto_1
    return-object v0
.end method

.method public static final l(Lcom/twntool/android/bridge/TwnBridge;LLb;Li6;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "fishdom connect falhou: "

    .line 5
    .line 6
    instance-of v1, p2, Lwq;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, p2

    .line 11
    check-cast v1, Lwq;

    .line 12
    .line 13
    iget v2, v1, Lwq;->k:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    and-int v4, v2, v3

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iput v2, v1, Lwq;->k:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lwq;

    .line 26
    .line 27
    invoke-direct {v1, p0, p2}, Lwq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p2, v1, Lwq;->h:Ljava/lang/Object;

    .line 31
    .line 32
    sget-object v2, Lx6;->a:Lx6;

    .line 33
    .line 34
    iget v3, v1, Lwq;->k:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const-string v5, "px_connect_fail"

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x1

    .line 41
    const-string v8, "TwnFishdom"

    .line 42
    .line 43
    const-string v9, "js_px_connected"

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    if-eq v3, v7, :cond_2

    .line 48
    .line 49
    if-ne v3, v6, :cond_1

    .line 50
    .line 51
    iget p0, v1, Lwq;->g:I

    .line 52
    .line 53
    iget-object p1, v1, Lwq;->f:Lcom/twntool/android/bridge/TwnBridge;

    .line 54
    .line 55
    iget-object v0, v1, Lwq;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, v1, Lwq;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 60
    .line 61
    :try_start_0
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :catchall_0
    move-exception p1

    .line 67
    move p2, p0

    .line 68
    move-object p0, v1

    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_2
    iget p0, v1, Lwq;->g:I

    .line 80
    .line 81
    iget-object p1, v1, Lwq;->e:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, LJb;

    .line 84
    .line 85
    iget-object v3, v1, Lwq;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 86
    .line 87
    :try_start_1
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V
    :try_end_1
    .catch Lwm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    .line 90
    move-object v12, p2

    .line 91
    move p2, p0

    .line 92
    move-object p0, v3

    .line 93
    move-object v3, v12

    .line 94
    goto :goto_1

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    move p2, p0

    .line 97
    move-object p0, v3

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :catch_0
    move-exception p1

    .line 101
    move p2, p0

    .line 102
    move-object p0, v3

    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :catch_1
    move-exception p1

    .line 106
    move p2, p0

    .line 107
    move-object p0, v3

    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :cond_3
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const/4 p2, 0x0

    .line 114
    :try_start_2
    invoke-static {p1}, LNb;->a(LLb;)LJb;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v3, "i"

    .line 119
    .line 120
    const-string v10, "px_connecting"

    .line 121
    .line 122
    iget-object v11, p1, LJb;->b:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p0, v3, v10, v11}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-wide v10, p0, Lcom/twntool/android/bridge/TwnBridge;->t:J

    .line 128
    .line 129
    new-instance v3, Lxq;

    .line 130
    .line 131
    invoke-direct {v3, p0, p1, v4}, Lxq;-><init>(Lcom/twntool/android/bridge/TwnBridge;LJb;Li6;)V

    .line 132
    .line 133
    .line 134
    iput-object p0, v1, Lwq;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 135
    .line 136
    iput-object p1, v1, Lwq;->e:Ljava/lang/Object;

    .line 137
    .line 138
    iput p2, v1, Lwq;->g:I

    .line 139
    .line 140
    iput v7, v1, Lwq;->k:I

    .line 141
    .line 142
    invoke-static {v10, v11, v3, v1}, Los;->G(JLAb;Li6;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-ne v3, v2, :cond_4

    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_4
    :goto_1
    check-cast v3, Lba;

    .line 151
    .line 152
    iget-boolean v7, v3, Lba;->a:Z
    :try_end_2
    .catch Lwm; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    .line 154
    iget-object v10, v3, Lba;->d:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v7, :cond_5

    .line 157
    .line 158
    :try_start_3
    const-string v0, "s"

    .line 159
    .line 160
    const-string v1, "px_connected_ok"

    .line 161
    .line 162
    iget-object p1, p1, LJb;->b:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p0, v0, v1, p1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 168
    .line 169
    iget-object v0, v3, Lba;->c:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v1, v3, Lba;->b:Ljava/util/Map;

    .line 172
    .line 173
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_8

    .line 181
    .line 182
    :catchall_2
    move-exception p1

    .line 183
    goto :goto_5

    .line 184
    :catch_2
    move-exception p1

    .line 185
    goto :goto_6

    .line 186
    :catch_3
    move-exception p1

    .line 187
    goto :goto_7

    .line 188
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v10, v5}, Lcom/twntool/android/bridge/TwnBridge;->F(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lwm; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 204
    .line 205
    .line 206
    :try_start_4
    const-string v0, "d"

    .line 207
    .line 208
    iget-object p1, p0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 209
    .line 210
    iput-object p0, v1, Lwq;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 211
    .line 212
    iput-object v0, v1, Lwq;->e:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object p0, v1, Lwq;->f:Lcom/twntool/android/bridge/TwnBridge;

    .line 215
    .line 216
    iput p2, v1, Lwq;->g:I

    .line 217
    .line 218
    iput v6, v1, Lwq;->k:I

    .line 219
    .line 220
    check-cast p1, Lcom/twntool/root/RootManagerImpl;

    .line 221
    .line 222
    invoke-virtual {p1, v1}, Lcom/twntool/root/RootManagerImpl;->f(Li6;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 226
    if-ne p1, v2, :cond_6

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_6
    move-object v1, p0

    .line 230
    move p0, p2

    .line 231
    move-object p2, p1

    .line 232
    move-object p1, v1

    .line 233
    :goto_2
    :try_start_5
    check-cast p2, Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p1, v0, p2, v4}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    .line 237
    .line 238
    move p2, p0

    .line 239
    move-object p0, v1

    .line 240
    goto :goto_4

    .line 241
    :catchall_3
    move-exception p1

    .line 242
    :goto_3
    :try_start_6
    invoke-static {p1}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 243
    .line 244
    .line 245
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 246
    .line 247
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lwm; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 252
    .line 253
    .line 254
    goto :goto_8

    .line 255
    :goto_5
    :try_start_7
    const-string v0, "fishdom connect failure"

    .line 256
    .line 257
    invoke-static {v8, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p0, p1, v5}, Lcom/twntool/android/bridge/TwnBridge;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 268
    .line 269
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    goto :goto_8

    .line 277
    :catchall_4
    move-exception p1

    .line 278
    goto :goto_a

    .line 279
    :goto_6
    throw p1

    .line 280
    :goto_7
    const-string v0, "fishdom connect timeout"

    .line 281
    .line 282
    invoke-static {v8, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .line 284
    .line 285
    const-string p1, "e"

    .line 286
    .line 287
    const-string v0, "log_connect_timeout"

    .line 288
    .line 289
    invoke-virtual {p0, p1, v0, v4}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 293
    .line 294
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 299
    .line 300
    .line 301
    :goto_8
    sget-object v2, Ly1;->r:Ly1;

    .line 302
    .line 303
    :goto_9
    return-object v2

    .line 304
    :goto_a
    if-nez p2, :cond_7

    .line 305
    .line 306
    :try_start_8
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 307
    .line 308
    filled-new-array {p2, v4}, [Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-virtual {p0, v9, p2}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 313
    .line 314
    .line 315
    goto :goto_b

    .line 316
    :catchall_5
    move-exception p0

    .line 317
    invoke-static {p0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 318
    .line 319
    .line 320
    :cond_7
    :goto_b
    throw p1
.end method

.method public static final m(Lcom/twntool/android/bridge/TwnBridge;LLb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v2, Ljava/util/Map;

    .line 9
    .line 10
    const-string v3, "fishdom send falhou: "

    .line 11
    .line 12
    instance-of v4, v0, Lyq;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    move-object v4, v0

    .line 17
    check-cast v4, Lyq;

    .line 18
    .line 19
    iget v5, v4, Lyq;->h:I

    .line 20
    .line 21
    const/high16 v6, -0x80000000

    .line 22
    .line 23
    and-int v7, v5, v6

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    sub-int/2addr v5, v6

    .line 28
    iput v5, v4, Lyq;->h:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v4, Lyq;

    .line 32
    .line 33
    invoke-direct {v4, v1, v0}, Lyq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v0, v4, Lyq;->f:Ljava/lang/Object;

    .line 37
    .line 38
    sget-object v5, Lx6;->a:Lx6;

    .line 39
    .line 40
    iget v6, v4, Lyq;->h:I

    .line 41
    .line 42
    const-string v7, "px_send_fail"

    .line 43
    .line 44
    const-string v8, "e"

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x1

    .line 48
    const-string v11, "TwnFishdom"

    .line 49
    .line 50
    const-string v12, "js_px_sent"

    .line 51
    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    if-ne v6, v10, :cond_1

    .line 55
    .line 56
    iget-object v1, v4, Lyq;->e:LJb;

    .line 57
    .line 58
    iget-object v2, v4, Lyq;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 59
    .line 60
    :try_start_0
    invoke-static {v0}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Lwm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    move-object/from16 v16, v7

    .line 64
    .line 65
    move-object/from16 v17, v8

    .line 66
    .line 67
    move-object/from16 v18, v2

    .line 68
    .line 69
    move-object v2, v1

    .line 70
    move-object/from16 v1, v18

    .line 71
    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    :catchall_0
    move-exception v0

    .line 75
    move-object v1, v2

    .line 76
    :goto_1
    move-object v2, v7

    .line 77
    move-object v3, v8

    .line 78
    goto/16 :goto_d

    .line 79
    .line 80
    :catch_0
    move-exception v0

    .line 81
    move-object v1, v2

    .line 82
    goto/16 :goto_e

    .line 83
    .line 84
    :catch_1
    move-exception v0

    .line 85
    move-object v1, v2

    .line 86
    :goto_2
    move-object v2, v7

    .line 87
    move-object v3, v8

    .line 88
    goto/16 :goto_f

    .line 89
    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_2
    invoke-static {v0}, LN6;->O(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :try_start_1
    const-string v0, "i"

    .line 102
    .line 103
    const-string v6, "px_send_applying"

    .line 104
    .line 105
    invoke-virtual {v1, v0, v6, v9}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, v1, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 109
    .line 110
    move-object/from16 v6, p2

    .line 111
    .line 112
    invoke-virtual {v0, v6, v2}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Lwm; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 117
    .line 118
    sget-object v6, Lv8;->a:Lv8;

    .line 119
    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    move-object v0, v6

    .line 123
    :cond_3
    :try_start_2
    iget-object v13, v1, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 124
    .line 125
    move-object/from16 v14, p3

    .line 126
    .line 127
    invoke-virtual {v13, v14, v2}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    check-cast v13, Ljava/util/Map;

    .line 132
    .line 133
    if-nez v13, :cond_4

    .line 134
    .line 135
    move-object v13, v6

    .line 136
    :cond_4
    iget-object v14, v1, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 137
    .line 138
    move-object/from16 v15, p4

    .line 139
    .line 140
    invoke-virtual {v14, v15, v2}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/util/Map;

    .line 145
    .line 146
    if-nez v2, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    move-object v6, v2

    .line 150
    :goto_3
    invoke-static/range {p1 .. p1}, LNb;->a(LLb;)LJb;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iget-object v14, v1, Lcom/twntool/android/bridge/TwnBridge;->i:Lcom/twntool/fishdom/FishdomEngine;

    .line 155
    .line 156
    iget-object v14, v14, Lcom/twntool/fishdom/FishdomEngine;->e:Ljava/lang/String;
    :try_end_2
    .catch Lwm; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 157
    .line 158
    if-eqz v14, :cond_6

    .line 159
    .line 160
    :try_start_3
    iget-object v15, v1, Lcom/twntool/android/bridge/TwnBridge;->o:Lcom/twntool/network/ApiClient;

    .line 161
    .line 162
    const-string v10, "fishdom"

    .line 163
    .line 164
    const-string v9, "fishdom.apply"
    :try_end_3
    .catch Lwm; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 165
    .line 166
    move-object/from16 v16, v7

    .line 167
    .line 168
    :try_start_4
    const-string v7, "fields"
    :try_end_4
    .catch Lwm; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 169
    .line 170
    move-object/from16 v17, v8

    .line 171
    .line 172
    :try_start_5
    new-instance v8, Lih;

    .line 173
    .line 174
    invoke-direct {v8, v7, v0}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    const-string v0, "toggles"

    .line 178
    .line 179
    new-instance v7, Lih;

    .line 180
    .line 181
    invoke-direct {v7, v0, v13}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    const-string v0, "selectors"

    .line 185
    .line 186
    new-instance v13, Lih;

    .line 187
    .line 188
    invoke-direct {v13, v0, v6}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    filled-new-array {v8, v7, v13}, [Lih;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v15, v10, v9, v14, v0}, Lcom/twntool/network/ApiClient;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lih;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget-object v0, v0, Lih;->a:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v0, Ljava/lang/String;

    .line 206
    .line 207
    iget-object v6, v1, Lcom/twntool/android/bridge/TwnBridge;->i:Lcom/twntool/fishdom/FishdomEngine;

    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    const-string v7, "x"

    .line 213
    .line 214
    invoke-static {v0, v7}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iput-object v0, v6, Lcom/twntool/fishdom/FishdomEngine;->e:Ljava/lang/String;

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :goto_4
    move-object/from16 v2, v16

    .line 221
    .line 222
    move-object/from16 v3, v17

    .line 223
    .line 224
    goto/16 :goto_d

    .line 225
    .line 226
    :goto_5
    move-object/from16 v2, v16

    .line 227
    .line 228
    move-object/from16 v3, v17

    .line 229
    .line 230
    goto/16 :goto_f

    .line 231
    .line 232
    :catchall_1
    move-exception v0

    .line 233
    goto :goto_4

    .line 234
    :catch_2
    move-exception v0

    .line 235
    goto/16 :goto_e

    .line 236
    .line 237
    :catch_3
    move-exception v0

    .line 238
    goto :goto_5

    .line 239
    :catchall_2
    move-exception v0

    .line 240
    :goto_6
    move-object/from16 v17, v8

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :catch_4
    move-exception v0

    .line 244
    :goto_7
    move-object/from16 v17, v8

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :catchall_3
    move-exception v0

    .line 248
    move-object/from16 v16, v7

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :catch_5
    move-exception v0

    .line 252
    move-object/from16 v16, v7

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_6
    move-object/from16 v16, v7

    .line 256
    .line 257
    move-object/from16 v17, v8

    .line 258
    .line 259
    :goto_8
    iget-wide v6, v1, Lcom/twntool/android/bridge/TwnBridge;->u:J

    .line 260
    .line 261
    new-instance v0, Lzq;

    .line 262
    .line 263
    const/4 v8, 0x0

    .line 264
    invoke-direct {v0, v1, v2, v8}, Lzq;-><init>(Lcom/twntool/android/bridge/TwnBridge;LJb;Li6;)V

    .line 265
    .line 266
    .line 267
    iput-object v1, v4, Lyq;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 268
    .line 269
    iput-object v2, v4, Lyq;->e:LJb;

    .line 270
    .line 271
    const/4 v8, 0x1

    .line 272
    iput v8, v4, Lyq;->h:I

    .line 273
    .line 274
    invoke-static {v6, v7, v0, v4}, Los;->G(JLAb;Li6;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-ne v0, v5, :cond_7

    .line 279
    .line 280
    goto/16 :goto_11

    .line 281
    .line 282
    :cond_7
    :goto_9
    move-object v4, v0

    .line 283
    check-cast v4, Lba;

    .line 284
    .line 285
    iget-boolean v0, v4, Lba;->a:Z

    .line 286
    .line 287
    if-eqz v0, :cond_a

    .line 288
    .line 289
    iget-object v0, v4, Lba;->e:Ljava/util/List;

    .line 290
    .line 291
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v0
    :try_end_5
    .catch Lwm; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 299
    const-string v5, "s"

    .line 300
    .line 301
    if-eqz v0, :cond_8

    .line 302
    .line 303
    :try_start_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catch Lwm; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 308
    .line 309
    const/4 v6, 0x0

    .line 310
    :try_start_7
    invoke-virtual {v1, v5, v0, v6}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 311
    .line 312
    .line 313
    goto :goto_a

    .line 314
    :catchall_4
    move-exception v0

    .line 315
    move-object v5, v0

    .line 316
    :try_start_8
    invoke-static {v5}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 317
    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_8
    iget-object v0, v4, Lba;->e:Ljava/util/List;

    .line 321
    .line 322
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_9

    .line 327
    .line 328
    const-string v0, "w"

    .line 329
    .line 330
    const-string v2, "no_changes"

    .line 331
    .line 332
    const/4 v3, 0x0

    .line 333
    invoke-virtual {v1, v0, v2, v3}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_9
    const-string v0, "px_send_ok"

    .line 338
    .line 339
    iget-object v2, v2, LJb;->b:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v1, v5, v0, v2}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 345
    .line 346
    iget-object v2, v4, Lba;->c:Ljava/lang/String;

    .line 347
    .line 348
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v1, v12, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_10

    .line 356
    .line 357
    :cond_a
    iget-object v0, v4, Lba;->d:Ljava/lang/String;

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lwm; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 372
    .line 373
    .line 374
    move-object/from16 v2, v16

    .line 375
    .line 376
    move-object/from16 v3, v17

    .line 377
    .line 378
    const/4 v5, 0x0

    .line 379
    :try_start_9
    invoke-virtual {v1, v3, v2, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v0, v4, Lba;->d:Ljava/lang/String;
    :try_end_9
    .catch Lwm; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 383
    .line 384
    if-eqz v0, :cond_b

    .line 385
    .line 386
    :try_start_a
    const-string v4, "d"

    .line 387
    .line 388
    invoke-virtual {v1, v4, v0, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 389
    .line 390
    .line 391
    goto :goto_c

    .line 392
    :catchall_5
    move-exception v0

    .line 393
    :try_start_b
    invoke-static {v0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 394
    .line 395
    .line 396
    goto :goto_c

    .line 397
    :catchall_6
    move-exception v0

    .line 398
    goto :goto_d

    .line 399
    :catch_6
    move-exception v0

    .line 400
    goto :goto_f

    .line 401
    :cond_b
    :goto_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 402
    .line 403
    const/4 v4, 0x0

    .line 404
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v1, v12, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Lwm; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 409
    .line 410
    .line 411
    goto :goto_10

    .line 412
    :catchall_7
    move-exception v0

    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :catch_7
    move-exception v0

    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :goto_d
    :try_start_c
    const-string v4, "fishdom send failure"

    .line 419
    .line 420
    invoke-static {v11, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    .line 422
    .line 423
    const/4 v4, 0x0

    .line 424
    invoke-virtual {v1, v3, v2, v4}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 428
    .line 429
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v1, v12, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    goto :goto_10

    .line 437
    :catchall_8
    move-exception v0

    .line 438
    move-object v2, v0

    .line 439
    goto :goto_12

    .line 440
    :goto_e
    throw v0

    .line 441
    :goto_f
    const-string v4, "fishdom send timeout"

    .line 442
    .line 443
    invoke-static {v11, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .line 445
    .line 446
    const-string v0, "timeout: permita o su e tente novamente"

    .line 447
    .line 448
    invoke-virtual {v1, v3, v2, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 452
    .line 453
    const/4 v2, 0x0

    .line 454
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v1, v12, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 459
    .line 460
    .line 461
    :goto_10
    sget-object v5, Ly1;->r:Ly1;

    .line 462
    .line 463
    :goto_11
    return-object v5

    .line 464
    :goto_12
    :try_start_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 465
    .line 466
    const/4 v3, 0x0

    .line 467
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v1, v12, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 472
    .line 473
    .line 474
    goto :goto_13

    .line 475
    :catchall_9
    move-exception v0

    .line 476
    invoke-static {v0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 477
    .line 478
    .line 479
    :goto_13
    throw v2
.end method

.method public static final n(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string p0, "literal"

    .line 2
    .line 3
    const-string v0, "quote(...)"

    .line 4
    .line 5
    invoke-static {p2, p0, p2, v0}, LLj;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lxi;

    .line 10
    .line 11
    const-string v1, "<Var\\b[^>]*name=\""

    .line 12
    .line 13
    const-string v2, "\"[^>]*/>"

    .line 14
    .line 15
    invoke-static {v1, p0, v2}, LS8;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Lxi;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lxi;->a(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    new-instance p0, LYm;

    .line 29
    .line 30
    const/4 p2, 0x4

    .line 31
    invoke-direct {p0, p3, p2}, LYm;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, p0}, Lxi;->e(Ljava/lang/CharSequence;Lwb;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x2

    .line 40
    const-string v0, "</root\\s*>"

    .line 41
    .line 42
    const-string v1, "compile(...)"

    .line 43
    .line 44
    const-string v2, "matcher(...)"

    .line 45
    .line 46
    invoke-static {p0, v0, v1, p1, v2}, LLj;->o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0, p1}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, LAf;->b()Lrd;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget v1, v1, Lpd;->a:I

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "substring(...)"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, LAf;->b()Lrd;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget p0, p0, Lpd;->a:I

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "<Var name=\""

    .line 83
    .line 84
    invoke-static {p0, v1, v0, p1, p2}, LLj;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "\" v=\""

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, "\" t=\"i\"/>\n"

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    :cond_1
    move-object p0, p1

    .line 109
    :goto_0
    return-object p0
.end method

.method public static final o(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;)Ljava/util/Map;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 6
    .line 7
    const-class v1, Ljava/util/Map;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of p1, p0, Ljava/util/Map;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    :cond_0
    move-object p0, v0

    .line 21
    :goto_0
    if-nez p0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lv8;->a:Lv8;

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_9

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    instance-of v3, v2, Ljava/util/Map;

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    check-cast v2, Ljava/util/Map;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-object v2, v0

    .line 64
    :goto_2
    if-nez v2, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_8

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/util/Map$Entry;

    .line 91
    .line 92
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    instance-of v6, v5, Ljava/lang/Number;

    .line 97
    .line 98
    if-eqz v6, :cond_5

    .line 99
    .line 100
    check-cast v5, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    goto :goto_4

    .line 111
    :cond_5
    instance-of v6, v5, Ljava/lang/Boolean;

    .line 112
    .line 113
    if-eqz v6, :cond_6

    .line 114
    .line 115
    check-cast v5, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    goto :goto_4

    .line 126
    :cond_6
    instance-of v6, v5, Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v6, :cond_7

    .line 129
    .line 130
    check-cast v5, Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v5}, LGl;->Y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-static {v5}, LMl;->i0(Ljava/lang/String;)Ljava/lang/Double;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    if-eqz v5, :cond_7

    .line 145
    .line 146
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 147
    .line 148
    .line 149
    move-result-wide v5

    .line 150
    double-to-int v5, v5

    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    goto :goto_4

    .line 156
    :cond_7
    move-object v5, v0

    .line 157
    :goto_4
    if-eqz v5, :cond_4

    .line 158
    .line 159
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_9
    move-object p0, p1

    .line 185
    :goto_5
    return-object p0
.end method

.method public static final p(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "<DataElem name=\"GameFeatures\" type=\"dataStore\">"

    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, p0, v1, v1, v0}, LGl;->C0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x4

    .line 13
    if-ltz p0, :cond_7

    .line 14
    .line 15
    const/16 v2, 0x3e

    .line 16
    .line 17
    invoke-static {p1, v2, p0, v1, v0}, LGl;->B0(Ljava/lang/CharSequence;CIZI)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, -0x1

    .line 22
    const/4 v5, 0x1

    .line 23
    if-ge v3, v5, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v6, v3, -0x1

    .line 27
    .line 28
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/16 v7, 0x2f

    .line 33
    .line 34
    if-ne v6, v7, :cond_1

    .line 35
    .line 36
    add-int/lit8 v4, v3, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/2addr v3, v5

    .line 40
    move v6, v5

    .line 41
    :goto_0
    if-lez v6, :cond_6

    .line 42
    .line 43
    const-string v8, "</DataElem>"

    .line 44
    .line 45
    invoke-static {p1, v8, v3, v1, v0}, LGl;->C0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-gez v8, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const-string v9, "<DataElem"

    .line 53
    .line 54
    invoke-static {p1, v9, v3, v1, v0}, LGl;->C0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ltz v3, :cond_5

    .line 59
    .line 60
    if-ge v3, v8, :cond_5

    .line 61
    .line 62
    invoke-static {p1, v2, v3, v1, v0}, LGl;->B0(Ljava/lang/CharSequence;CIZI)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-ge v3, v5, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    add-int/lit8 v8, v3, -0x1

    .line 70
    .line 71
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-eq v8, v7, :cond_4

    .line 76
    .line 77
    add-int/lit8 v6, v6, 0x1

    .line 78
    .line 79
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    add-int/lit8 v6, v6, -0x1

    .line 83
    .line 84
    add-int/lit8 v3, v8, 0xb

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    move v4, v3

    .line 88
    :goto_1
    if-le v4, p0, :cond_7

    .line 89
    .line 90
    const-string v2, "<DataElem name=\"CityTicket\" type=\"dataStore\">"

    .line 91
    .line 92
    invoke-static {p1, v2, p0, v1, v0}, LGl;->C0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-gt p0, v2, :cond_7

    .line 97
    .line 98
    if-ge v2, v4, :cond_7

    .line 99
    .line 100
    const-string p0, "superpasse"

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    const-string p0, "<SeasonTicket[ />]"

    .line 104
    .line 105
    const-string v2, "compile(...)"

    .line 106
    .line 107
    const-string v3, "matcher(...)"

    .line 108
    .line 109
    invoke-static {p0, v2, p1, v3}, LLj;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0, v1, p1}, Lud;->d(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)LAf;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-eqz p0, :cond_8

    .line 118
    .line 119
    invoke-virtual {p0}, LAf;->b()Lrd;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iget p0, p0, Lpd;->a:I

    .line 124
    .line 125
    const-string v2, "</SeasonTicket>"

    .line 126
    .line 127
    invoke-static {p1, v2, p0, v1, v0}, LGl;->C0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-ltz p0, :cond_8

    .line 132
    .line 133
    const-string p0, "velhooeste"

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_8
    const-string p0, "nenhum"

    .line 137
    .line 138
    :goto_2
    return-object p0
.end method

.method public static final q(Lcom/twntool/android/bridge/TwnBridge;LLb;[BLjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, LNb;->a(LLb;)LJb;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/twntool/android/bridge/TwnBridge;->o:Lcom/twntool/network/ApiClient;

    .line 10
    .line 11
    invoke-virtual {p1}, LLb;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v1, v1, LJb;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, p2, v3, v1}, Lcom/twntool/network/ApiClient;->f([BLjava/lang/String;Ljava/lang/String;)LO6;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object p2, p2, LO6;->a:[B

    .line 22
    .line 23
    if-eqz p2, :cond_a

    .line 24
    .line 25
    sget-object v1, LHh;->d:Ljava/util/Set;

    .line 26
    .line 27
    invoke-static {p2}, Lud;->A([B)LHh;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/twntool/android/bridge/TwnBridge;->g:Lcom/twntool/px/PxEngine;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Lcom/twntool/px/PxEngine;->d(LLb;LHh;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_9

    .line 41
    .line 42
    iget-object v1, p0, Lcom/twntool/android/bridge/TwnBridge;->g:Lcom/twntool/px/PxEngine;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iput-object p2, v1, Lcom/twntool/px/PxEngine;->h:[B

    .line 48
    .line 49
    sget-object v2, LLb;->HOMESCAPES:LLb;

    .line 50
    .line 51
    if-ne p1, v2, :cond_0

    .line 52
    .line 53
    iget-object p1, v1, Lcom/twntool/px/PxEngine;->f:Ljava/util/Set;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, v1, Lcom/twntool/px/PxEngine;->g:Ljava/util/Set;

    .line 57
    .line 58
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lud;->F([B)Ljava/util/zip/GZIPInputStream;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :try_start_0
    new-instance v2, LTd;

    .line 68
    .line 69
    new-instance v3, Ljava/io/InputStreamReader;

    .line 70
    .line 71
    sget-object v4, LG4;->a:Ljava/nio/charset/Charset;

    .line 72
    .line 73
    invoke-direct {v3, p2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3}, LTd;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :try_start_1
    iput-boolean v0, v2, LTd;->b:Z

    .line 80
    .line 81
    invoke-virtual {v2}, LTd;->S()I

    .line 82
    .line 83
    .line 84
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x3

    .line 87
    if-eq v3, v5, :cond_1

    .line 88
    .line 89
    :try_start_2
    invoke-static {v2, v4}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {p2, v4}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto/16 :goto_7

    .line 98
    .line 99
    :cond_1
    :try_start_3
    invoke-virtual {v2}, LTd;->d()V

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v2}, LTd;->F()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {v2}, LTd;->M()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const-string v6, "tables"

    .line 113
    .line 114
    invoke-static {v3, v6}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_3

    .line 119
    .line 120
    invoke-virtual {v2}, LTd;->S()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-ne v6, v5, :cond_3

    .line 125
    .line 126
    invoke-virtual {v2}, LTd;->d()V

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-virtual {v2}, LTd;->F()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_2

    .line 134
    .line 135
    invoke-virtual {v2}, LTd;->M()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const-string v6, "nextName(...)"

    .line 140
    .line 141
    invoke-static {v3, v6}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, LTd;->Y()V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    goto :goto_6

    .line 153
    :cond_2
    invoke-virtual {v2}, LTd;->p()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_3
    invoke-static {v3}, Lud;->o(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, LTd;->Y()V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {v2}, LTd;->p()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    .line 169
    .line 170
    :try_start_4
    invoke-static {v2, v4}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    .line 172
    .line 173
    invoke-static {p2, v4}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    const/4 v2, 0x0

    .line 181
    if-eqz p2, :cond_5

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_8

    .line 193
    .line 194
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Ljava/lang/String;

    .line 199
    .line 200
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    xor-int/2addr v1, v0

    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    add-int/2addr v2, v0

    .line 208
    if-ltz v2, :cond_7

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_7
    invoke-static {}, LZ4;->o0()V

    .line 212
    .line 213
    .line 214
    throw v4

    .line 215
    :cond_8
    :goto_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const-string p2, "s"

    .line 220
    .line 221
    const-string v0, "px_clone_log_read"

    .line 222
    .line 223
    invoke-virtual {p0, p2, v0, p1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 227
    .line 228
    new-instance p2, Ljava/lang/Integer;

    .line 229
    .line 230
    invoke-direct {p2, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 231
    .line 232
    .line 233
    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const-string p2, "js_px_clone_tables"

    .line 238
    .line 239
    invoke-virtual {p0, p2, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :goto_6
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 244
    :catchall_2
    move-exception p1

    .line 245
    :try_start_6
    invoke-static {v2, p0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 249
    :goto_7
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 250
    :catchall_3
    move-exception p1

    .line 251
    invoke-static {p2, p0}, Lud;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    throw p1

    .line 255
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    .line 256
    .line 257
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p0

    .line 261
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    .line 262
    .line 263
    const-string p1, "decode: resposta sem documento."

    .line 264
    .line 265
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p0
.end method

.method public static final r(Lcom/twntool/android/bridge/TwnBridge;)LLb;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/twntool/game/AppState;->a:LLb;

    .line 4
    .line 5
    sget-object v0, LLb;->HOMESCAPES:LLb;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, LLb;->GARDENSCAPES:LLb;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final s(Lcom/twntool/android/bridge/TwnBridge;LLb;Li6;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "royal connect falhou: "

    .line 5
    .line 6
    instance-of v1, p2, Lir;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, p2

    .line 11
    check-cast v1, Lir;

    .line 12
    .line 13
    iget v2, v1, Lir;->k:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    and-int v4, v2, v3

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iput v2, v1, Lir;->k:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lir;

    .line 26
    .line 27
    invoke-direct {v1, p0, p2}, Lir;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p2, v1, Lir;->h:Ljava/lang/Object;

    .line 31
    .line 32
    sget-object v2, Lx6;->a:Lx6;

    .line 33
    .line 34
    iget v3, v1, Lir;->k:I

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const-string v5, "px_connect_fail"

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x1

    .line 41
    const-string v8, "TwnRoyal"

    .line 42
    .line 43
    const-string v9, "js_px_connected"

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    if-eq v3, v7, :cond_2

    .line 48
    .line 49
    if-ne v3, v6, :cond_1

    .line 50
    .line 51
    iget p0, v1, Lir;->g:I

    .line 52
    .line 53
    iget-object p1, v1, Lir;->f:Lcom/twntool/android/bridge/TwnBridge;

    .line 54
    .line 55
    iget-object v0, v1, Lir;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, v1, Lir;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 60
    .line 61
    :try_start_0
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :catchall_0
    move-exception p1

    .line 67
    move p2, p0

    .line 68
    move-object p0, v1

    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_2
    iget p0, v1, Lir;->g:I

    .line 80
    .line 81
    iget-object p1, v1, Lir;->e:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, LJb;

    .line 84
    .line 85
    iget-object v3, v1, Lir;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 86
    .line 87
    :try_start_1
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V
    :try_end_1
    .catch Lwm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .line 89
    .line 90
    move-object v12, p2

    .line 91
    move p2, p0

    .line 92
    move-object p0, v3

    .line 93
    move-object v3, v12

    .line 94
    goto :goto_1

    .line 95
    :catchall_1
    move-exception p1

    .line 96
    move p2, p0

    .line 97
    move-object p0, v3

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :catch_0
    move-exception p1

    .line 101
    move p2, p0

    .line 102
    move-object p0, v3

    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :catch_1
    move-exception p1

    .line 106
    move p2, p0

    .line 107
    move-object p0, v3

    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :cond_3
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const/4 p2, 0x0

    .line 114
    :try_start_2
    invoke-static {p1}, LNb;->a(LLb;)LJb;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v3, "i"

    .line 119
    .line 120
    const-string v10, "px_connecting"

    .line 121
    .line 122
    iget-object v11, p1, LJb;->b:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p0, v3, v10, v11}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-wide v10, p0, Lcom/twntool/android/bridge/TwnBridge;->t:J

    .line 128
    .line 129
    new-instance v3, Ljr;

    .line 130
    .line 131
    invoke-direct {v3, p0, p1, v4}, Ljr;-><init>(Lcom/twntool/android/bridge/TwnBridge;LJb;Li6;)V

    .line 132
    .line 133
    .line 134
    iput-object p0, v1, Lir;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 135
    .line 136
    iput-object p1, v1, Lir;->e:Ljava/lang/Object;

    .line 137
    .line 138
    iput p2, v1, Lir;->g:I

    .line 139
    .line 140
    iput v7, v1, Lir;->k:I

    .line 141
    .line 142
    invoke-static {v10, v11, v3, v1}, Los;->G(JLAb;Li6;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-ne v3, v2, :cond_4

    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_4
    :goto_1
    check-cast v3, Lsj;

    .line 151
    .line 152
    iget-boolean v7, v3, Lsj;->a:Z
    :try_end_2
    .catch Lwm; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    .line 154
    iget-object v10, v3, Lsj;->d:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v7, :cond_5

    .line 157
    .line 158
    :try_start_3
    const-string v0, "s"

    .line 159
    .line 160
    const-string v1, "px_connected_ok"

    .line 161
    .line 162
    iget-object p1, p1, LJb;->b:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p0, v0, v1, p1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 168
    .line 169
    iget-object v0, v3, Lsj;->c:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v1, v3, Lsj;->b:Ljava/util/Map;

    .line 172
    .line 173
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_8

    .line 181
    .line 182
    :catchall_2
    move-exception p1

    .line 183
    goto :goto_5

    .line 184
    :catch_2
    move-exception p1

    .line 185
    goto :goto_6

    .line 186
    :catch_3
    move-exception p1

    .line 187
    goto :goto_7

    .line 188
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v10, v5}, Lcom/twntool/android/bridge/TwnBridge;->F(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lwm; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 204
    .line 205
    .line 206
    :try_start_4
    const-string v0, "d"

    .line 207
    .line 208
    iget-object p1, p0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 209
    .line 210
    iput-object p0, v1, Lir;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 211
    .line 212
    iput-object v0, v1, Lir;->e:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object p0, v1, Lir;->f:Lcom/twntool/android/bridge/TwnBridge;

    .line 215
    .line 216
    iput p2, v1, Lir;->g:I

    .line 217
    .line 218
    iput v6, v1, Lir;->k:I

    .line 219
    .line 220
    check-cast p1, Lcom/twntool/root/RootManagerImpl;

    .line 221
    .line 222
    invoke-virtual {p1, v1}, Lcom/twntool/root/RootManagerImpl;->f(Li6;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 226
    if-ne p1, v2, :cond_6

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_6
    move-object v1, p0

    .line 230
    move p0, p2

    .line 231
    move-object p2, p1

    .line 232
    move-object p1, v1

    .line 233
    :goto_2
    :try_start_5
    check-cast p2, Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p1, v0, p2, v4}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 236
    .line 237
    .line 238
    move p2, p0

    .line 239
    move-object p0, v1

    .line 240
    goto :goto_4

    .line 241
    :catchall_3
    move-exception p1

    .line 242
    :goto_3
    :try_start_6
    invoke-static {p1}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 243
    .line 244
    .line 245
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 246
    .line 247
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lwm; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 252
    .line 253
    .line 254
    goto :goto_8

    .line 255
    :goto_5
    :try_start_7
    const-string v0, "royal connect failure"

    .line 256
    .line 257
    invoke-static {v8, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p0, p1, v5}, Lcom/twntool/android/bridge/TwnBridge;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 268
    .line 269
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    goto :goto_8

    .line 277
    :catchall_4
    move-exception p1

    .line 278
    goto :goto_a

    .line 279
    :goto_6
    throw p1

    .line 280
    :goto_7
    const-string v0, "royal connect timeout"

    .line 281
    .line 282
    invoke-static {v8, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .line 284
    .line 285
    const-string p1, "e"

    .line 286
    .line 287
    const-string v0, "log_connect_timeout"

    .line 288
    .line 289
    invoke-virtual {p0, p1, v0, v4}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 293
    .line 294
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 299
    .line 300
    .line 301
    :goto_8
    sget-object v2, Ly1;->r:Ly1;

    .line 302
    .line 303
    :goto_9
    return-object v2

    .line 304
    :goto_a
    if-nez p2, :cond_7

    .line 305
    .line 306
    :try_start_8
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 307
    .line 308
    filled-new-array {p2, v4}, [Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-virtual {p0, v9, p2}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 313
    .line 314
    .line 315
    goto :goto_b

    .line 316
    :catchall_5
    move-exception p0

    .line 317
    invoke-static {p0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 318
    .line 319
    .line 320
    :cond_7
    :goto_b
    throw p1
.end method

.method public static final t(Lcom/twntool/android/bridge/TwnBridge;LLb;Ljava/lang/String;Li6;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "App Clone (royal): pastas encontradas: "

    .line 5
    .line 6
    instance-of v1, p3, Lkr;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, p3

    .line 11
    check-cast v1, Lkr;

    .line 12
    .line 13
    iget v2, v1, Lkr;->j:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    and-int v4, v2, v3

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iput v2, v1, Lkr;->j:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lkr;

    .line 26
    .line 27
    invoke-direct {v1, p0, p3}, Lkr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p3, v1, Lkr;->g:Ljava/lang/Object;

    .line 31
    .line 32
    sget-object v2, Lx6;->a:Lx6;

    .line 33
    .line 34
    iget v3, v1, Lkr;->j:I

    .line 35
    .line 36
    sget-object v4, Ly1;->r:Ly1;

    .line 37
    .line 38
    sget-object v5, Lu8;->a:Lu8;

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x3

    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x1

    .line 44
    const-string v10, "js_px_ac_folders"

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    if-eq v3, v9, :cond_3

    .line 49
    .line 50
    if-eq v3, v8, :cond_2

    .line 51
    .line 52
    if-ne v3, v7, :cond_1

    .line 53
    .line 54
    iget-object p0, v1, Lkr;->e:Ljava/lang/Object;

    .line 55
    .line 56
    move-object p2, p0

    .line 57
    check-cast p2, Ljava/lang/String;

    .line 58
    .line 59
    iget-object p0, v1, Lkr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 60
    .line 61
    :try_start_0
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :catch_0
    move-exception p0

    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_2
    iget-object p2, v1, Lkr;->f:Ljava/lang/String;

    .line 81
    .line 82
    iget-object p0, v1, Lkr;->e:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p0, LLb;

    .line 85
    .line 86
    iget-object p1, v1, Lkr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 87
    .line 88
    :try_start_1
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .line 90
    .line 91
    move-object v11, p1

    .line 92
    move-object p1, p0

    .line 93
    move-object p0, v11

    .line 94
    goto :goto_2

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    move-object v11, p1

    .line 97
    move-object p1, p0

    .line 98
    move-object p0, v11

    .line 99
    goto/16 :goto_5

    .line 100
    .line 101
    :cond_3
    iget-object p2, v1, Lkr;->f:Ljava/lang/String;

    .line 102
    .line 103
    iget-object p0, v1, Lkr;->e:Ljava/lang/Object;

    .line 104
    .line 105
    move-object p1, p0

    .line 106
    check-cast p1, LLb;

    .line 107
    .line 108
    iget-object p0, v1, Lkr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 109
    .line 110
    :try_start_2
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-static {p3}, LN6;->O(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :try_start_3
    iget-object p3, p0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 118
    .line 119
    iput-object p0, v1, Lkr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 120
    .line 121
    iput-object p1, v1, Lkr;->e:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object p2, v1, Lkr;->f:Ljava/lang/String;

    .line 124
    .line 125
    iput v9, v1, Lkr;->j:I

    .line 126
    .line 127
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 128
    .line 129
    invoke-virtual {p3, v1}, Lcom/twntool/root/RootManagerImpl;->l(Li6;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    if-ne p3, v2, :cond_5

    .line 134
    .line 135
    goto/16 :goto_6

    .line 136
    .line 137
    :cond_5
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-nez p3, :cond_7

    .line 144
    .line 145
    iget-object p3, p0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 146
    .line 147
    iput-object p0, v1, Lkr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 148
    .line 149
    iput-object p1, v1, Lkr;->e:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object p2, v1, Lkr;->f:Ljava/lang/String;

    .line 152
    .line 153
    iput v8, v1, Lkr;->j:I

    .line 154
    .line 155
    check-cast p3, Lcom/twntool/root/RootManagerImpl;

    .line 156
    .line 157
    invoke-virtual {p3, v1}, Lcom/twntool/root/RootManagerImpl;->q(Li6;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    if-ne p3, v2, :cond_6

    .line 162
    .line 163
    goto/16 :goto_6

    .line 164
    .line 165
    :cond_6
    :goto_2
    check-cast p3, Lnj;

    .line 166
    .line 167
    iget-boolean p3, p3, Lnj;->a:Z

    .line 168
    .line 169
    if-nez p3, :cond_7

    .line 170
    .line 171
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 172
    .line 173
    iget-object p3, p0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 174
    .line 175
    iget-object p3, p3, Lcom/twntool/game/AppState;->h:Ljava/lang/String;

    .line 176
    .line 177
    const-string v0, "N\u00e3o foi poss\u00edvel obter root."

    .line 178
    .line 179
    filled-new-array {p1, v5, p3, v0}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0, v10, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v6, p2}, Lcom/twntool/android/bridge/TwnBridge;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :goto_3
    move-object v2, v4

    .line 190
    goto :goto_6

    .line 191
    :cond_7
    iget-object p3, p0, Lcom/twntool/android/bridge/TwnBridge;->h:Lcom/twntool/game/RoyalEngine;

    .line 192
    .line 193
    invoke-static {p1}, LNb;->a(LLb;)LJb;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iput-object p0, v1, Lkr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 198
    .line 199
    iput-object p2, v1, Lkr;->e:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v6, v1, Lkr;->f:Ljava/lang/String;

    .line 202
    .line 203
    iput v7, v1, Lkr;->j:I

    .line 204
    .line 205
    invoke-virtual {p3, p1, v1}, Lcom/twntool/game/RoyalEngine;->u(LJb;Li6;)Ljava/io/Serializable;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    if-ne p3, v2, :cond_8

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_8
    :goto_4
    check-cast p3, Ljava/util/List;

    .line 213
    .line 214
    const-string p1, "d"

    .line 215
    .line 216
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p0, p1, v0, v6}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 236
    .line 237
    iget-object v0, p0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/twntool/game/AppState;->h:Ljava/lang/String;

    .line 240
    .line 241
    filled-new-array {p1, p3, v0, v6}, [Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p0, v10, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v6, p2}, Lcom/twntool/android/bridge/TwnBridge;->z(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :goto_5
    const-string p3, "TwnRoyal"

    .line 253
    .line 254
    const-string v0, "royal app clone scan falhou"

    .line 255
    .line 256
    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .line 258
    .line 259
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 260
    .line 261
    iget-object p3, p0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 262
    .line 263
    iget-object p3, p3, Lcom/twntool/game/AppState;->h:Ljava/lang/String;

    .line 264
    .line 265
    const-string v0, "N\u00e3o foi poss\u00edvel escanear o dispositivo."

    .line 266
    .line 267
    filled-new-array {p1, v5, p3, v0}, [Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p0, v10, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, v6, p2}, Lcom/twntool/android/bridge/TwnBridge;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :goto_6
    return-object v2

    .line 279
    :goto_7
    throw p0
.end method

.method public static final u(Lcom/twntool/android/bridge/TwnBridge;LLb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    const-class v1, Ljava/util/Map;

    .line 6
    .line 7
    iget-object v2, v8, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 8
    .line 9
    const-string v9, "royal send falhou: "

    .line 10
    .line 11
    instance-of v3, v0, Llr;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Llr;

    .line 17
    .line 18
    iget v4, v3, Llr;->h:I

    .line 19
    .line 20
    const/high16 v5, -0x80000000

    .line 21
    .line 22
    and-int v6, v4, v5

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    sub-int/2addr v4, v5

    .line 27
    iput v4, v3, Llr;->h:I

    .line 28
    .line 29
    :goto_0
    move-object v0, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-instance v3, Llr;

    .line 32
    .line 33
    invoke-direct {v3, v8, v0}, Llr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v3, v0, Llr;->f:Ljava/lang/Object;

    .line 38
    .line 39
    sget-object v10, Lx6;->a:Lx6;

    .line 40
    .line 41
    iget v4, v0, Llr;->h:I

    .line 42
    .line 43
    const-string v11, "px_send_fail"

    .line 44
    .line 45
    const-string v12, "e"

    .line 46
    .line 47
    const/4 v13, 0x0

    .line 48
    const/4 v14, 0x1

    .line 49
    const-string v15, "TwnRoyal"

    .line 50
    .line 51
    const-string v7, "js_px_sent"

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    if-ne v4, v14, :cond_1

    .line 56
    .line 57
    iget-object v1, v0, Llr;->e:LJb;

    .line 58
    .line 59
    iget-object v2, v0, Llr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 60
    .line 61
    :try_start_0
    invoke-static {v3}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Lwm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    move-object/from16 v20, v7

    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-object v1, v7

    .line 70
    goto/16 :goto_d

    .line 71
    .line 72
    :catch_0
    move-exception v0

    .line 73
    move-object v1, v7

    .line 74
    goto/16 :goto_e

    .line 75
    .line 76
    :catch_1
    move-exception v0

    .line 77
    move-object v1, v7

    .line 78
    goto/16 :goto_f

    .line 79
    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_2
    invoke-static {v3}, LN6;->O(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :try_start_1
    const-string v3, "i"

    .line 92
    .line 93
    const-string v4, "px_send_applying"

    .line 94
    .line 95
    invoke-virtual {v8, v3, v4, v13}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    move-object/from16 v3, p2

    .line 99
    .line 100
    invoke-virtual {v2, v3, v1}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/util/Map;
    :try_end_1
    .catch Lwm; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 105
    .line 106
    sget-object v4, Lv8;->a:Lv8;

    .line 107
    .line 108
    if-nez v3, :cond_3

    .line 109
    .line 110
    move-object/from16 v3, p3

    .line 111
    .line 112
    move-object v5, v4

    .line 113
    goto :goto_2

    .line 114
    :cond_3
    move-object v5, v3

    .line 115
    move-object/from16 v3, p3

    .line 116
    .line 117
    :goto_2
    :try_start_2
    invoke-virtual {v2, v3, v1}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Ljava/util/Map;

    .line 122
    .line 123
    if-nez v3, :cond_4

    .line 124
    .line 125
    move-object/from16 v3, p4

    .line 126
    .line 127
    move-object v6, v4

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    move-object v6, v3

    .line 130
    move-object/from16 v3, p4

    .line 131
    .line 132
    :goto_3
    invoke-virtual {v2, v3, v1}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/util/Map;

    .line 137
    .line 138
    if-nez v1, :cond_5

    .line 139
    .line 140
    move-object/from16 v16, v4

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    move-object/from16 v16, v1

    .line 144
    .line 145
    :goto_4
    invoke-static/range {p1 .. p1}, LNb;->a(LLb;)LJb;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-wide v2, v8, Lcom/twntool/android/bridge/TwnBridge;->u:J

    .line 150
    .line 151
    new-instance v1, Lmr;
    :try_end_2
    .catch Lwm; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 152
    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    move-object/from16 p1, v1

    .line 156
    .line 157
    move-wide/from16 v18, v2

    .line 158
    .line 159
    move-object/from16 v2, p0

    .line 160
    .line 161
    move-object v3, v4

    .line 162
    move-object v13, v4

    .line 163
    move-object v4, v5

    .line 164
    move-object v5, v6

    .line 165
    move-object/from16 v6, v16

    .line 166
    .line 167
    move-object/from16 v20, v7

    .line 168
    .line 169
    move-object/from16 v7, v17

    .line 170
    .line 171
    :try_start_3
    invoke-direct/range {v1 .. v7}, Lmr;-><init>(Lcom/twntool/android/bridge/TwnBridge;LJb;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Li6;)V

    .line 172
    .line 173
    .line 174
    iput-object v8, v0, Llr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 175
    .line 176
    iput-object v13, v0, Llr;->e:LJb;

    .line 177
    .line 178
    iput v14, v0, Llr;->h:I

    .line 179
    .line 180
    move-object/from16 v3, p1

    .line 181
    .line 182
    move-wide/from16 v1, v18

    .line 183
    .line 184
    invoke-static {v1, v2, v3, v0}, Los;->G(JLAb;Li6;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3
    :try_end_3
    .catch Lwm; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 188
    if-ne v3, v10, :cond_6

    .line 189
    .line 190
    goto/16 :goto_11

    .line 191
    .line 192
    :cond_6
    move-object v2, v8

    .line 193
    move-object v1, v13

    .line 194
    :goto_5
    :try_start_4
    check-cast v3, Lsj;

    .line 195
    .line 196
    iget-boolean v0, v3, Lsj;->a:Z
    :try_end_4
    .catch Lwm; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 197
    .line 198
    iget-object v4, v3, Lsj;->d:Ljava/lang/String;

    .line 199
    .line 200
    if-eqz v0, :cond_a

    .line 201
    .line 202
    :try_start_5
    iget-boolean v0, v3, Lsj;->f:Z
    :try_end_5
    .catch Lwm; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 203
    .line 204
    const-string v4, "w"

    .line 205
    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    :try_start_6
    const-string v0, "rl_kingdom_warn"

    .line 209
    .line 210
    iget v5, v3, Lsj;->g:I

    .line 211
    .line 212
    new-instance v6, Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 215
    .line 216
    .line 217
    iget-object v5, v3, Lsj;->h:Ljava/lang/String;

    .line 218
    .line 219
    filled-new-array {v6, v5}, [Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v2, v4, v0, v5}, Lcom/twntool/android/bridge/TwnBridge;->I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    move-object/from16 v1, v20

    .line 229
    .line 230
    goto/16 :goto_d

    .line 231
    .line 232
    :catch_2
    move-exception v0

    .line 233
    move-object/from16 v1, v20

    .line 234
    .line 235
    goto/16 :goto_e

    .line 236
    .line 237
    :catch_3
    move-exception v0

    .line 238
    move-object/from16 v1, v20

    .line 239
    .line 240
    goto/16 :goto_f

    .line 241
    .line 242
    :cond_7
    :goto_6
    iget-object v0, v3, Lsj;->i:Ljava/util/List;

    .line 243
    .line 244
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v0
    :try_end_6
    .catch Lwm; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 252
    const-string v6, "s"

    .line 253
    .line 254
    if-eqz v0, :cond_8

    .line 255
    .line 256
    :try_start_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Lwm; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 261
    .line 262
    const/4 v7, 0x0

    .line 263
    :try_start_8
    invoke-virtual {v2, v6, v0, v7}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 264
    .line 265
    .line 266
    goto :goto_7

    .line 267
    :catchall_2
    move-exception v0

    .line 268
    move-object v6, v0

    .line 269
    :try_start_9
    invoke-static {v6}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_8
    iget-boolean v0, v3, Lsj;->e:Z

    .line 274
    .line 275
    if-eqz v0, :cond_9

    .line 276
    .line 277
    const-string v0, "px_send_ok"

    .line 278
    .line 279
    iget-object v1, v1, LJb;->b:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v2, v6, v0, v1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_9
    const-string v0, "no_changes"

    .line 286
    .line 287
    const/4 v1, 0x0

    .line 288
    invoke-virtual {v2, v4, v0, v1}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :goto_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 292
    .line 293
    iget-object v1, v3, Lsj;->c:Ljava/lang/String;

    .line 294
    .line 295
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v0
    :try_end_9
    .catch Lwm; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 299
    move-object/from16 v1, v20

    .line 300
    .line 301
    :try_start_a
    invoke-virtual {v2, v1, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_10

    .line 305
    .line 306
    :catchall_3
    move-exception v0

    .line 307
    goto/16 :goto_d

    .line 308
    .line 309
    :catch_4
    move-exception v0

    .line 310
    goto/16 :goto_e

    .line 311
    .line 312
    :catch_5
    move-exception v0

    .line 313
    goto/16 :goto_f

    .line 314
    .line 315
    :cond_a
    move-object/from16 v1, v20

    .line 316
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    const/4 v5, 0x0

    .line 333
    invoke-virtual {v2, v12, v11, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, v3, Lsj;->j:Ljava/lang/String;
    :try_end_a
    .catch Lwm; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 337
    .line 338
    if-eqz v0, :cond_b

    .line 339
    .line 340
    :try_start_b
    invoke-virtual {v2, v12, v0, v5}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 341
    .line 342
    .line 343
    goto :goto_9

    .line 344
    :catchall_4
    move-exception v0

    .line 345
    move-object v3, v0

    .line 346
    :try_start_c
    invoke-static {v3}, LN6;->k(Ljava/lang/Throwable;)LUi;
    :try_end_c
    .catch Lwm; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 347
    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_b
    if-eqz v4, :cond_c

    .line 351
    .line 352
    :try_start_d
    const-string v0, "d"

    .line 353
    .line 354
    const/4 v3, 0x0

    .line 355
    invoke-virtual {v2, v0, v4, v3}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 356
    .line 357
    .line 358
    goto :goto_9

    .line 359
    :catchall_5
    move-exception v0

    .line 360
    :try_start_e
    invoke-static {v0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 361
    .line 362
    .line 363
    :cond_c
    :goto_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 364
    .line 365
    const/4 v3, 0x0

    .line 366
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v2, v1, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Lwm; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 371
    .line 372
    .line 373
    goto :goto_10

    .line 374
    :catchall_6
    move-exception v0

    .line 375
    move-object/from16 v1, v20

    .line 376
    .line 377
    :goto_a
    move-object v2, v8

    .line 378
    goto :goto_d

    .line 379
    :catch_6
    move-exception v0

    .line 380
    move-object/from16 v1, v20

    .line 381
    .line 382
    :goto_b
    move-object v2, v8

    .line 383
    goto :goto_e

    .line 384
    :catch_7
    move-exception v0

    .line 385
    move-object/from16 v1, v20

    .line 386
    .line 387
    :goto_c
    move-object v2, v8

    .line 388
    goto :goto_f

    .line 389
    :catchall_7
    move-exception v0

    .line 390
    move-object v1, v7

    .line 391
    goto :goto_a

    .line 392
    :catch_8
    move-exception v0

    .line 393
    move-object v1, v7

    .line 394
    goto :goto_b

    .line 395
    :catch_9
    move-exception v0

    .line 396
    move-object v1, v7

    .line 397
    goto :goto_c

    .line 398
    :goto_d
    :try_start_f
    const-string v3, "royal send failure"

    .line 399
    .line 400
    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .line 402
    .line 403
    const/4 v3, 0x0

    .line 404
    invoke-virtual {v2, v12, v11, v3}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 408
    .line 409
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v2, v1, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    goto :goto_10

    .line 417
    :catchall_8
    move-exception v0

    .line 418
    move-object v3, v0

    .line 419
    goto :goto_12

    .line 420
    :goto_e
    throw v0

    .line 421
    :goto_f
    const-string v3, "royal send timeout"

    .line 422
    .line 423
    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .line 425
    .line 426
    const-string v0, "timeout: permita o su e tente novamente"

    .line 427
    .line 428
    invoke-virtual {v2, v12, v11, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 432
    .line 433
    const/4 v3, 0x0

    .line 434
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v2, v1, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 439
    .line 440
    .line 441
    :goto_10
    sget-object v10, Ly1;->r:Ly1;

    .line 442
    .line 443
    :goto_11
    return-object v10

    .line 444
    :goto_12
    :try_start_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 445
    .line 446
    const/4 v4, 0x0

    .line 447
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v2, v1, v0}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 452
    .line 453
    .line 454
    goto :goto_13

    .line 455
    :catchall_9
    move-exception v0

    .line 456
    invoke-static {v0}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 457
    .line 458
    .line 459
    :goto_13
    throw v3
.end method

.method public static final v(Lcom/twntool/android/bridge/TwnBridge;Li6;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "connect falhou: "

    .line 5
    .line 6
    instance-of v1, p1, Lsr;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Lsr;

    .line 12
    .line 13
    iget v2, v1, Lsr;->g:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    and-int v4, v2, v3

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iput v2, v1, Lsr;->g:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lsr;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lsr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p1, v1, Lsr;->e:Ljava/lang/Object;

    .line 31
    .line 32
    sget-object v2, Lx6;->a:Lx6;

    .line 33
    .line 34
    iget v3, v1, Lsr;->g:I

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    const-string v5, "TwnSC"

    .line 38
    .line 39
    const-string v6, ""

    .line 40
    .line 41
    const-string v7, "js_px_connected"

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    if-ne v3, v4, :cond_1

    .line 47
    .line 48
    iget-object p0, v1, Lsr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 49
    .line 50
    :try_start_0
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Lwm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :catch_1
    move-exception p1

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    invoke-static {p1}, LN6;->O(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    sget-object p1, LNb;->h:LJb;

    .line 75
    .line 76
    :try_start_1
    iget-wide v9, p0, Lcom/twntool/android/bridge/TwnBridge;->t:J

    .line 77
    .line 78
    new-instance v3, Ltr;

    .line 79
    .line 80
    invoke-direct {v3, p0, p1, v8}, Ltr;-><init>(Lcom/twntool/android/bridge/TwnBridge;LJb;Li6;)V

    .line 81
    .line 82
    .line 83
    iput-object p0, v1, Lsr;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 84
    .line 85
    iput v4, v1, Lsr;->g:I

    .line 86
    .line 87
    invoke-static {v9, v10, v3, v1}, Los;->G(JLAb;Li6;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v2, :cond_3

    .line 92
    .line 93
    goto/16 :goto_7

    .line 94
    .line 95
    :cond_3
    :goto_1
    check-cast p1, Lcl;

    .line 96
    .line 97
    iget-boolean v1, p1, Lcl;->a:Z

    .line 98
    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    iget-object v0, p0, Lcom/twntool/android/bridge/TwnBridge;->b:Lcom/twntool/game/AppState;

    .line 102
    .line 103
    iget-object v1, p1, Lcl;->c:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v1, v0, Lcom/twntool/game/AppState;->e:Ljava/lang/String;

    .line 106
    .line 107
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 108
    .line 109
    iget-object v1, p1, Lcl;->c:Ljava/lang/String;

    .line 110
    .line 111
    if-nez v1, :cond_4

    .line 112
    .line 113
    move-object v1, v6

    .line 114
    :cond_4
    iget-object p1, p1, Lcl;->b:Ljava/util/Map;

    .line 115
    .line 116
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p0, v7, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_5
    iget-object v1, p1, Lcl;->e:Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    const-string v2, "js_log"

    .line 129
    .line 130
    const-string v3, "e"

    .line 131
    .line 132
    iget-object v4, p0, Lcom/twntool/android/bridge/TwnBridge;->k:Lcom/twntool/simcity/SimCityEngine;

    .line 133
    .line 134
    sget-object v9, Lv8;->a:Lv8;

    .line 135
    .line 136
    invoke-virtual {v4, v1, v9}, Lcom/twntool/simcity/SimCityEngine;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {p0, v2, v1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_6
    iget-object v1, p1, Lcl;->d:Ljava/lang/String;

    .line 148
    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    iget-object v1, p1, Lcl;->e:Ljava/lang/String;

    .line 152
    .line 153
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 169
    .line 170
    iget-object p1, p1, Lcl;->d:Ljava/lang/String;

    .line 171
    .line 172
    if-nez p1, :cond_8

    .line 173
    .line 174
    move-object p1, v6

    .line 175
    :cond_8
    filled-new-array {v0, p1, v8}, [Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p0, v7, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lwm; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :goto_2
    const-string v0, "connect failure"

    .line 184
    .line 185
    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .line 187
    .line 188
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-nez p1, :cond_9

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_9
    move-object v6, p1

    .line 198
    :goto_3
    filled-new-array {v0, v6, v8}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p0, v7, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :goto_4
    throw p0

    .line 207
    :goto_5
    const-string v0, "connect timeout"

    .line 208
    .line 209
    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .line 211
    .line 212
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 213
    .line 214
    const-string v0, "timeout"

    .line 215
    .line 216
    filled-new-array {p1, v0, v8}, [Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0, v7, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :goto_6
    sget-object v2, Ly1;->r:Ly1;

    .line 224
    .line 225
    :goto_7
    return-object v2
.end method

.method public static final w(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "send falhou: "

    .line 5
    .line 6
    instance-of v1, p4, Lur;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, p4

    .line 11
    check-cast v1, Lur;

    .line 12
    .line 13
    iget v2, v1, Lur;->g:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    and-int v4, v2, v3

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iput v2, v1, Lur;->g:I

    .line 23
    .line 24
    :goto_0
    move-object v7, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Lur;

    .line 27
    .line 28
    invoke-direct {v1, p0, p4}, Lur;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    iget-object p4, v7, Lur;->e:Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v1, Lx6;->a:Lx6;

    .line 35
    .line 36
    iget v2, v7, Lur;->g:I

    .line 37
    .line 38
    const-string v8, ""

    .line 39
    .line 40
    const-string v9, "js_px_sent"

    .line 41
    .line 42
    const-string v10, "TwnSC"

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    if-ne v2, v3, :cond_1

    .line 48
    .line 49
    iget-object p0, v7, Lur;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 50
    .line 51
    :try_start_0
    invoke-static {p4}, LN6;->O(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto/16 :goto_8

    .line 60
    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    invoke-static {p4}, LN6;->O(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sget-object p4, LNb;->h:LJb;

    .line 73
    .line 74
    :try_start_1
    iget-object v2, p0, Lcom/twntool/android/bridge/TwnBridge;->k:Lcom/twntool/simcity/SimCityEngine;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->G(Ljava/lang/String;)Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {p0, p2}, Lcom/twntool/android/bridge/TwnBridge;->G(Ljava/lang/String;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {p0, p3}, Lcom/twntool/android/bridge/TwnBridge;->G(Ljava/lang/String;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    iput-object p0, v7, Lur;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 89
    .line 90
    iput v3, v7, Lur;->g:I

    .line 91
    .line 92
    move-object v3, p4

    .line 93
    invoke-virtual/range {v2 .. v7}, Lcom/twntool/simcity/SimCityEngine;->i(LJb;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Li6;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    if-ne p4, v1, :cond_3

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_3
    :goto_2
    check-cast p4, Lcl;

    .line 101
    .line 102
    iget-boolean p1, p4, Lcl;->a:Z
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    iget-object p2, p4, Lcl;->d:Ljava/lang/String;

    .line 105
    .line 106
    if-nez p1, :cond_6

    .line 107
    .line 108
    iget-object p1, p4, Lcl;->e:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    :try_start_2
    const-string p3, "js_log"

    .line 113
    .line 114
    const-string v1, "e"

    .line 115
    .line 116
    iget-object v2, p0, Lcom/twntool/android/bridge/TwnBridge;->k:Lcom/twntool/simcity/SimCityEngine;

    .line 117
    .line 118
    sget-object v3, Lv8;->a:Lv8;

    .line 119
    .line 120
    invoke-virtual {v2, p1, v3}, Lcom/twntool/simcity/SimCityEngine;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p0, p3, v1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    if-nez p2, :cond_5

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move-object p1, p2

    .line 135
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v10, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :cond_6
    iget-boolean p1, p4, Lcl;->a:Z

    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-nez p2, :cond_7

    .line 157
    .line 158
    move-object p2, v8

    .line 159
    :cond_7
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_6

    .line 167
    :goto_4
    const-string p2, "send failure"

    .line 168
    .line 169
    invoke-static {v10, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-nez p1, :cond_8

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_8
    move-object v8, p1

    .line 182
    :goto_5
    filled-new-array {p2, v8}, [Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0, v9, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :goto_6
    sget-object v1, Ly1;->r:Ly1;

    .line 190
    .line 191
    :goto_7
    return-object v1

    .line 192
    :goto_8
    throw p0
.end method

.method public static final x(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;[BLjava/util/Map;)LJn;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "township.save_memory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Lcom/twntool/township/LocalTownshipEditor;->apply([BLjava/util/Map;)[B

    move-result-object v0

    new-instance p1, LJn;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2, v2}, LJn;-><init>(Z[BLjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2
    .line 3
    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/twntool/android/bridge/TwnBridge;->o:Lcom/twntool/network/ApiClient;

    .line 5
    .line 6
    const-string v1, "township"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/String;

    .line 9
    .line 10
    sget-object v3, LG4;->a:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1, v2, p3}, Lcom/twntool/network/ApiClient;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lih;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p3, p1, Lih;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p3, Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p1, Lih;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, LRd;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, LZb;->i(LOd;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-class v0, Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/util/Map;

    .line 40
    .line 41
    new-instance p1, LJn;

    .line 42
    .line 43
    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    const-string v0, "getBytes(...)"

    .line 48
    .line 49
    invoke-static {p3, v0}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-direct {p1, v0, p3, p0, p0}, LJn;-><init>(Z[BLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    new-instance p1, LJn;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    const/16 v6, 0xc

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v1, p1

    .line 65
    move-object v3, p2

    .line 66
    invoke-direct/range {v1 .. v6}, LJn;-><init>(Z[BLjava/lang/Object;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final B(Ljava/lang/String;Li6;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, LQp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, LQp;

    .line 7
    .line 8
    iget v1, v0, LQp;->h:I

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
    iput v1, v0, LQp;->h:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, LQp;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, LQp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, LQp;->f:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lx6;->a:Lx6;

    .line 28
    .line 29
    iget v2, v0, LQp;->h:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, LQp;->e:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v0, v0, LQp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 39
    .line 40
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p2}, LN6;->O(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "\'"

    .line 61
    .line 62
    const-string v4, "\'\\\'\'"

    .line 63
    .line 64
    invoke-static {p1, v2, v4}, LOl;->r0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v2, "for e in \'"

    .line 69
    .line 70
    const-string v4, "\'/*; do [ -e \"$e\" ] || continue; if [ -d \"$e\" ]; then echo \"D|$e|0\"; else echo \"F|$e|$(stat -c %s \"$e\" 2>/dev/null || echo 0)\"; fi; done"

    .line 71
    .line 72
    invoke-static {v2, p1, v4}, LS8;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p0, v0, LQp;->d:Lcom/twntool/android/bridge/TwnBridge;

    .line 77
    .line 78
    iput-object p2, v0, LQp;->e:Ljava/util/ArrayList;

    .line 79
    .line 80
    iput v3, v0, LQp;->h:I

    .line 81
    .line 82
    iget-object v2, p0, Lcom/twntool/android/bridge/TwnBridge;->n:LXi;

    .line 83
    .line 84
    check-cast v2, Lcom/twntool/root/RootManagerImpl;

    .line 85
    .line 86
    invoke-virtual {v2, p1, v0}, Lcom/twntool/root/RootManagerImpl;->r(Ljava/lang/String;Li6;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-ne p1, v1, :cond_3

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_3
    move-object v0, p0

    .line 94
    move-object v11, p2

    .line 95
    move-object p2, p1

    .line 96
    move-object p1, v11

    .line 97
    :goto_1
    check-cast p2, LSk;

    .line 98
    .line 99
    iget-object p2, p2, LSk;->b:Ljava/lang/String;

    .line 100
    .line 101
    const-string v1, "\n"

    .line 102
    .line 103
    filled-new-array {v1}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v4, 0x6

    .line 109
    invoke-static {p2, v1, v2, v4}, LGl;->Q0(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_7

    .line 127
    .line 128
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v5}, LGl;->Y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    const-string v6, "|"

    .line 143
    .line 144
    filled-new-array {v6}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-static {v5, v6, v2, v4}, LGl;->Q0(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    const/4 v7, 0x3

    .line 157
    if-lt v6, v7, :cond_5

    .line 158
    .line 159
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    check-cast v6, Ljava/lang/CharSequence;

    .line 164
    .line 165
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-nez v6, :cond_6

    .line 170
    .line 171
    :cond_5
    const/4 v5, 0x0

    .line 172
    :cond_6
    if-eqz v5, :cond_4

    .line 173
    .line 174
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v4, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v5

    .line 196
    const-string v6, "D"

    .line 197
    .line 198
    if-eqz v5, :cond_9

    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    check-cast v5, Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-static {v7, v6}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_8

    .line 215
    .line 216
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_9
    invoke-static {p2, v4}, LY4;->F0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    :cond_a
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_f

    .line 237
    .line 238
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/util/List;

    .line 243
    .line 244
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Ljava/lang/String;

    .line 249
    .line 250
    const/16 v5, 0x2f

    .line 251
    .line 252
    invoke-static {v4, v5}, LGl;->T0(Ljava/lang/String;C)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-nez v7, :cond_b

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_b
    const-string v7, "."

    .line 264
    .line 265
    invoke-static {v5, v7, v2}, LOl;->u0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-eqz v7, :cond_c

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_c
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-static {v7, v6}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-nez v7, :cond_d

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {v5}, Lcom/twntool/android/bridge/TwnBridge;->A(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-eqz v8, :cond_a

    .line 290
    .line 291
    :cond_d
    new-instance v8, Lih;

    .line 292
    .line 293
    const-string v9, "nome"

    .line 294
    .line 295
    invoke-direct {v8, v9, v5}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    new-instance v5, Lih;

    .line 299
    .line 300
    const-string v9, "path"

    .line 301
    .line 302
    invoke-direct {v5, v9, v4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    new-instance v7, Lih;

    .line 310
    .line 311
    const-string v9, "dir"

    .line 312
    .line 313
    invoke-direct {v7, v9, v4}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    const/4 v4, 0x2

    .line 317
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Ljava/lang/String;

    .line 322
    .line 323
    invoke-static {v1}, LNl;->l0(Ljava/lang/String;)Ljava/lang/Long;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    if-eqz v1, :cond_e

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 330
    .line 331
    .line 332
    move-result-wide v9

    .line 333
    goto :goto_5

    .line 334
    :cond_e
    const-wide/16 v9, 0x0

    .line 335
    .line 336
    :goto_5
    new-instance v1, Ljava/lang/Long;

    .line 337
    .line 338
    invoke-direct {v1, v9, v10}, Ljava/lang/Long;-><init>(J)V

    .line 339
    .line 340
    .line 341
    new-instance v4, Lih;

    .line 342
    .line 343
    const-string v9, "tam"

    .line 344
    .line 345
    invoke-direct {v4, v9, v1}, Lih;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    filled-new-array {v8, v5, v7, v4}, [Lih;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-static {v1}, Lvf;->n0([Lih;)Ljava/util/Map;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_f
    return-object p1
.end method

.method public final D(Li9;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p1, Li9;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/twntool/android/bridge/TwnBridge;->j:Lcom/twntool/familyisland/FamilyIslandEngine;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object p2, Lv8;->a:Lv8;

    .line 11
    .line 12
    invoke-virtual {p1, v0, p2}, Lcom/twntool/familyisland/FamilyIslandEngine;->o(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "e"

    .line 17
    .line 18
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "js_fi_log"

    .line 23
    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p1, Li9;->d:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/twntool/android/bridge/TwnBridge;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final E(LAb;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/twntool/android/bridge/TwnBridge;->r:Lw6;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lu7;->b:LW6;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v0, v1, p1, v2}, Le4;->y(Lw6;Lr6;LAb;I)LAl;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "TwnBridge"

    .line 13
    .line 14
    const-string v0, "launch() called before attach()"

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, LGl;->Y0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    :goto_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string v2, "e"

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v2, p2, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const-string p2, "|"

    .line 31
    .line 32
    filled-new-array {p2}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/4 v1, 0x6

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {p1, p2, v3, v1}, LGl;->Q0(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v4, 0x1

    .line 47
    if-le v1, v4, :cond_3

    .line 48
    .line 49
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/CharSequence;

    .line 54
    .line 55
    const-string v5, "[a-z][a-z0-9_]*"

    .line 56
    .line 57
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const-string v6, "compile(...)"

    .line 62
    .line 63
    invoke-static {v5, v6}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v6, "input"

    .line 67
    .line 68
    invoke-static {v1, v6}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {p2, v4}, LY4;->v0(Ljava/util/List;I)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-array v0, v3, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    check-cast p2, [Ljava/lang/String;

    .line 98
    .line 99
    array-length v0, p2

    .line 100
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p0, v2, p1, p2}, Lcom/twntool/android/bridge/TwnBridge;->I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p0, v2, p1, v0}, Lcom/twntool/android/bridge/TwnBridge;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method public final G(Ljava/lang/String;)Ljava/util/Map;
    .locals 3

    .line 1
    sget-object v0, Lv8;->a:Lv8;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, LOl;->o0(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 13
    .line 14
    const-class v2, Ljava/util/Map;

    .line 15
    .line 16
    invoke-virtual {v1, p1, v2}, LZb;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of v1, p1, Ljava/util/Map;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-nez p1, :cond_3

    .line 31
    .line 32
    :cond_2
    :goto_1
    move-object p1, v0

    .line 33
    goto :goto_3

    .line 34
    :goto_2
    invoke-static {p1}, LN6;->k(Ljava/lang/Throwable;)LUi;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_3
    :goto_3
    instance-of v1, p1, LUi;

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object v0, p1

    .line 44
    :goto_4
    check-cast v0, Ljava/util/Map;

    .line 45
    .line 46
    return-object v0
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "level"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "msgKey"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "js_log"

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, v0, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final varargs I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 1
    const-string v0, "msgKey"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p3

    .line 12
    const-string v1, "js_log"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v1, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    array-length v2, p3

    .line 27
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    array-length v2, p3

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    if-ge v3, v2, :cond_3

    .line 33
    .line 34
    aget-object v4, p3, v3

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    :cond_1
    const-string v4, ""

    .line 45
    .line 46
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, v1, p1}, Lcom/twntool/android/bridge/TwnBridge;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method public final check_tool_access(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "game"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lno;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lno;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final delete_remembered_key(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Loo;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Loo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_academia_industria_custom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "factories"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "trains"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "islands"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lqo;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v0, p1

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p2

    .line 27
    move-object v3, p3

    .line 28
    move-object v4, p4

    .line 29
    invoke-direct/range {v0 .. v5}, Lqo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final do_activate_season_pass(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "cbId"

    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "2"

    invoke-virtual {p0, p1, v0}, Lcom/twntool/android/bridge/TwnBridge;->do_activate_season_pass(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final do_activate_season_pass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "cbId"

    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tier"

    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lro;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lro;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    return-void
.end method

.method public final do_add_all_barn_items(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "updatesJson"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lso;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lso;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_add_barn_item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "itemId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "qty"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lto;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, p3, p2, v0}, Lto;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final do_add_item(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "qmapJson"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "bulk"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "bqty"

    .line 22
    .line 23
    invoke-static {p5, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Luo;

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v0, p1

    .line 30
    move-object v1, p0

    .line 31
    move-object v2, p2

    .line 32
    move-object v3, p3

    .line 33
    move-object v4, p4

    .line 34
    move-object v5, p5

    .line 35
    invoke-direct/range {v0 .. v6}, Luo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final do_advance_season_pass_time(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "hours"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lvo;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lvo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_apply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "fieldId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "value"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lwo;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, p3, p2, v0}, Lwo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final do_apply_avatares_selecionados(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selectedJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lxo;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lxo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_apply_season_pass_items(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "itemsJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lyo;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lyo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_clone_decoration_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selectedXml"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "useSelected"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "cloneZoo"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "cloneItems"

    .line 22
    .line 23
    invoke-static {p5, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lzo;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {p1, p0, p5, p4, p2}, Lzo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final do_connect(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LBo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LBo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_decode(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LCo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LCo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_desban_apply(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LDo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LDo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_desban_apply_completo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LEo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LEo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_desban_fetch_friend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "cityId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "cver"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, LFo;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, p2, p3, v0}, LFo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final do_desban_list_dir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, LGo;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, LGo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_desban_load_local_xml(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LHo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LHo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_desban_pick_path(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "path"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LIo;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LIo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_ecr_fetch_faltantes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "cityId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "cver"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, LJo;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, p2, p3, v0}, LJo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final do_encode_and_send(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LLo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LLo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_enviar_cartas(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LMo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LMo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_enviar_cartas_multi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "alvos"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LNo;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LNo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_enviar_cartas_pacote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "toCity"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "selected"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, LOo;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, p2, p3, v0}, LOo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final do_expedition_final(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LPo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LPo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_fetch_city_friend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "cityId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "cver"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, LQo;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, p2, p3, v0}, LQo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final do_fetch_city_save_path(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LRo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LRo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_academia_data(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LSo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LSo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_all_factory_slots(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LTo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LTo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_barn_items(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LUo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LUo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_passe_tipo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LVo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LVo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_quantities(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LWo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LWo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_season_pass(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LXo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LXo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_season_pass_items(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LYo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LYo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_season_pass_time(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LZo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LZo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_get_trains(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lap;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lap;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_inject_coupons(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "updatesJson"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lbp;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lbp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_load_local_info(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcp;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lcp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_market_slots(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "count"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ldp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Ldp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_minhas_cartas(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lep;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lep;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_new_account(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "game"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lgp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lgp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_pull_decoded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lhp;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lhp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_regata(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lip;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lip;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_regata_add_and_use(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "qtd"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lkp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_regata_tarefas(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "qtd"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Llp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Llp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_regata_use(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lnp;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lnp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_reset_device_flow(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lop;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lop;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_save_city(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "dataJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lpp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lpp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_save_trains(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "trainsJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lqp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lqp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_set_achievements(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "desJson"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lrp;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, p2, p3, v0}, Lrp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final do_set_barn_capacity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "upgradesJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lsp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lsp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_set_barn_items(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "itemsJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ltp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Ltp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_set_factory_slots(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "sid"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "value"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lup;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p0, p2, p3, v0}, Lup;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final do_set_passe_tipo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "tipo"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lvp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lvp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_set_quantities(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "qJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lwp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lwp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_set_quantities_gift(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "updatesJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lxp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lxp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_srv_edit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "op"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "paramsJson"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lyp;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, v0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move-object v4, p3

    .line 23
    move-object v5, p2

    .line 24
    invoke-direct/range {v1 .. v6}, Lyp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final do_todas_cartas(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lzp;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lzp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_todas_vantagens(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, LAp;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {v2, p0, p1}, LAp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, LAr;

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const-string v3, "js_on_todas_vantagens"

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    move-object v1, p0

    .line 25
    invoke-direct/range {v0 .. v5}, LAr;-><init>(Lcom/twntool/android/bridge/TwnBridge;LAb;Ljava/lang/String;Ljava/lang/Object;Li6;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final do_twn_cards_apply(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LBp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LBp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_twn_cards_list(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LCp;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LCp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_unlock_all_decorations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "qtdsJson"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "qtdPadrao"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, LDp;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v0, p1

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p4

    .line 27
    move-object v3, p2

    .line 28
    move-object v4, p3

    .line 29
    invoke-direct/range {v0 .. v5}, LDp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final do_unlock_avatars(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LEp;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LEp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_unlock_expedition_decorations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LFp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LFp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_unlock_museum_individual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LGp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LGp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_unlock_profile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LHp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LHp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_unlock_skins(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LIp;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LIp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_unlock_stickers(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LJp;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LJp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_unlock_stickers_individual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LKp;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p0, p2}, LKp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_unlock_terrenos(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, LLp;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-direct {v3, p0, p1}, LLp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    new-instance p1, LAr;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const-string v4, "js_on_unlock_terrenos"

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    move-object v2, p0

    .line 20
    invoke-direct/range {v1 .. v6}, LAr;-><init>(Lcom/twntool/android/bridge/TwnBridge;LAb;Ljava/lang/String;Ljava/lang/Object;Li6;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final do_unlock_vehicle_skins(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LMp;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LMp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final do_unlock_vehicle_skins_individual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LNp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LNp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final do_zoo_cards(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "selJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LOp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LOp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final ed_decode_file(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "filePath"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LXp;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p0, p2}, LXp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final ed_encode_file(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "filePath"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LYp;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p0, p2}, LYp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final ed_list_save_folders(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LZp;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LZp;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final ed_load_from_paste(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "content"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Laq;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Laq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final ed_open_file(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lbq;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lbq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final ed_pull_from_device(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "filename"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "doDecode"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcq;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-direct {p1, p0, p2}, Lcq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final ed_save_file_dialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "resultPath"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "name"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Ldq;

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    invoke-direct {p1, p0, p2, p3}, Ldq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final ed_select_save_folder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "folder"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Leq;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Leq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final fd_aq_add_peixes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pedidosJson"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lfq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lfq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final fd_aq_bloquear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nome"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lgq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lgq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final fd_aq_desbloquear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nomesJson"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lhq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lhq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final fd_aq_listar(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Liq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Liq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final fd_aq_peixes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "aquario"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Ljq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final fd_aq_rem_peixes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pedidosJson"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lkq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lkq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final fd_passe_listar(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Llq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Llq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final fd_passe_salvar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "changesJson"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lmq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lmq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final fd_quests_completar(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lnq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final fi_connect(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lpq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lpq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final fi_items(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "cat"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lqq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lqq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final fi_scan_clone_dirs(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lrq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lrq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final fi_select_game(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lsq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lsq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final fi_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fieldsJson"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "togglesJson"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "selectorsJson"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Luq;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    move-object v1, v0

    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move-object v4, p2

    .line 28
    move-object v5, p3

    .line 29
    move-object v6, p4

    .line 30
    invoke-direct/range {v1 .. v7}, Luq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final fi_set_clone_dir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lvq;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lvq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final get_achievement_list(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LAq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LAq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_all_decorations(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LBq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LBq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_allowed_tools(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LCq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LCq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_expedition_decorations(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LDq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LDq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_hwid(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LEq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LEq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_item_groups(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LFq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LFq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_key_info(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LGq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LGq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_museum_collections(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LHq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LHq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_skin_categories(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LIq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LIq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_unlocked_achievements(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LJq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LJq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_unlocked_avatars(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LKq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LKq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_unlocked_profile_items(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LLq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LLq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_unlocked_skins(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LMq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LMq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final get_vps_url(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LNq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LNq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final is_authenticated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LOq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LOq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final load_language(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LPq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LPq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final load_remembered_key(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LQq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LQq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final open_file_dialog_deco(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LRq;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, LRq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final px_clone_apply(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LTq;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LTq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final px_clone_pick_local(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "path"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LUq;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LUq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final px_clone_pick_preset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "numero"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, LWq;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, LWq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final px_clone_presets(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LYq;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LYq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final px_clone_scan(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, LZq;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, LZq;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final px_connect(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lbr;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lbr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final px_items(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "category"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lcr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final px_scan_clone_dirs(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldr;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Ldr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final px_select_game(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "game"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Ler;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final px_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "fieldsJson"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "togglesJson"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "selectorsJson"

    .line 17
    .line 18
    invoke-static {p4, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lgr;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v0, p1

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p2

    .line 27
    move-object v3, p3

    .line 28
    move-object v4, p4

    .line 29
    invoke-direct/range {v0 .. v5}, Lgr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final px_set_clone_dir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "path"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lhr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lhr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final read_clipboard(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/twntool/android/bridge/TwnBridge;->w:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lgo;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, p1, v2}, Lgo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final save_language(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lang"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lnr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lnr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final save_remembered_key(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lor;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lor;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final set_hwid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lpr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lpr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final set_language(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lang"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lqr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lqr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final set_vps_url(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lrr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, Lrr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final twn_backup_apagar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lvr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p1, p2, v1}, Lvr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final twn_backup_criar(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lwr;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lwr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final twn_backup_listar(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lxr;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lxr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final twn_backup_restaurar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "rel"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lyr;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lyr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final twn_nova_conta_fresh(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lzr;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p0, v0}, Lzr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Li6;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final verify_key(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "cbId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, LBr;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, p2, p1, v1}, LBr;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;Ljava/lang/String;Li6;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/twntool/android/bridge/TwnBridge;->E(LAb;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final varargs y(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "fn"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lud;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 14
    .line 15
    .line 16
    array-length v2, p2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    aget-object v5, p2, v3

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    add-int/2addr v4, v6

    .line 25
    if-le v4, v6, :cond_0

    .line 26
    .line 27
    const-string v6, ","

    .line 28
    .line 29
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v6, p0, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 33
    .line 34
    invoke-virtual {v6, v5}, LZb;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-string v6, "toJson(...)"

    .line 39
    .line 40
    invoke-static {v5, v6}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string v0, "toString(...)"

    .line 57
    .line 58
    invoke-static {p2, v0}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "if(typeof "

    .line 62
    .line 63
    const-string v1, "===\'function\')"

    .line 64
    .line 65
    const-string v2, "("

    .line 66
    .line 67
    invoke-static {v0, p1, v1, p1, v2}, LLj;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v0, ")"

    .line 72
    .line 73
    invoke-static {p1, p2, v0}, Lrl;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/twntool/android/bridge/TwnBridge;->w:Landroid/os/Handler;

    .line 78
    .line 79
    new-instance v0, Lgo;

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-direct {v0, p0, p1, v1}, Lgo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "0"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lud;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/twntool/android/bridge/TwnBridge;->p:LZb;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, LZb;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lud;->o(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, LG4;->a:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "getBytes(...)"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lud;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "try{window._androidCallback(\'"

    .line 36
    .line 37
    const-string v1, "\',JSON.parse(decodeURIComponent(escape(atob(\'"

    .line 38
    .line 39
    const-string v2, "\')))))}catch(e){try{window._androidCallback(\'"

    .line 40
    .line 41
    invoke-static {v0, p2, v1, p1, v2}, LLj;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "\',null)}catch(_){}}"

    .line 46
    .line 47
    invoke-static {p1, p2, v0}, Lrl;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/twntool/android/bridge/TwnBridge;->w:Landroid/os/Handler;

    .line 52
    .line 53
    new-instance v0, Lgo;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-direct {v0, p0, p1, v1}, Lgo;-><init>(Lcom/twntool/android/bridge/TwnBridge;Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
