.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;
.source "SourceFile"


# static fields
.field public static a:I


# instance fields
.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

.field private e:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x3

    sput v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/G;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/G;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->f:Landroid/content/BroadcastReceiver;

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;Lcom/ushaqi/zhuishushenqi/model/Game;)Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->e:Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->h()V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->e:Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method public static g()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 315
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u76d7\u5893\u82f1\u96c4"

    aput-object v2, v1, v0

    const-string v2, "\u53eb\u6211\u6076\u9b54\u5927\u4eba"

    aput-object v2, v1, v5

    const-string v2, "\u5973\u795e\u51b2\u6211\u6765"

    aput-object v2, v1, v6

    .line 316
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 317
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWRhb211eWluZ3hpYW9uZyZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU="

    aput-object v4, v3, v0

    const-string v4, "wge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPWppYW93b2Vtb2RhcmVuJnJlc291cmNlX3R5cGU9NCZnYW1lbGlzdF90eXBlPXNpbmdsZV9nYW1lX3NldHRpbmcmZnJvbT1zaW5nbGVfZ2FtZQ=="

    aput-object v4, v3, v5

    const-string v4, "mge://aHR0cDovL3dnZS5tYXh0aG9uLmNuLz9wYWNrYWdlX2lkPW52c2hlbmNob25nd2xhaSZyZXNvdXJjZV90eXBlPTQmZ2FtZWxpc3RfdHlwZT1zaW5nbGVfZ2FtZV9zZXR0aW5nJmZyb209c2luZ2xlX2dhbWU="

    aput-object v4, v3, v6

    .line 322
    new-instance v4, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;-><init>()V

    .line 323
    const-string v5, "aoyou"

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->setModule(Ljava/lang/String;)V

    .line 324
    const-string v5, "H5\u6e38\u620f\u4e13\u533a"

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->setTitle(Ljava/lang/String;)V

    .line 325
    new-instance v5, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    invoke-direct {v5}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;-><init>()V

    .line 326
    const-string v6, "H5\u6e38\u620f\u4e13\u533a"

    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->setName(Ljava/lang/String;)V

    .line 327
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 328
    :goto_0
    sget v7, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->a:I

    if-ge v0, v7, :cond_0

    .line 329
    new-instance v7, Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-direct {v7}, Lcom/ushaqi/zhuishushenqi/model/Game;-><init>()V

    .line 330
    aget-object v8, v1, v0

    invoke-virtual {v7, v8}, Lcom/ushaqi/zhuishushenqi/model/Game;->setName(Ljava/lang/String;)V

    .line 331
    aget v8, v2, v0

    invoke-virtual {v7, v8}, Lcom/ushaqi/zhuishushenqi/model/Game;->setIconId(I)V

    .line 332
    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Lcom/ushaqi/zhuishushenqi/model/Game;->setAndroidLink(Ljava/lang/String;)V

    .line 333
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->setGames(Ljava/util/List;)V

    .line 336
    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->setGameGroup(Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;)V

    .line 337
    return-object v4

    .line 316
    :array_0
    .array-data 4
        0x7f02004d
        0x7f02004e
        0x7f02004f
    .end array-data
.end method

.method private h()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    .line 100
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getType()Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    move-result-object v2

    sget-object v3, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->GAME_GROUP:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    if-ne v2, v3, :cond_1

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->e:Lcom/ushaqi/zhuishushenqi/model/Game;

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->e:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/s;->a(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->b()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f03003e

    return v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->f()V

    .line 277
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/H;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/H;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 278
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/ao;)V

    .line 67
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ah;)V

    .line 70
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b()V

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onPause()V

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    const-string v0, "game_layout"

    invoke-static {v0}, Lcom/umeng/a/b;->b(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "update_game_item_status"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->h()V

    .line 85
    const-string v0, "game_layout"

    invoke-static {v0}, Lcom/umeng/a/b;->a(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0c010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b:Landroid/support/v7/widget/RecyclerView;

    .line 56
    return-void
.end method
