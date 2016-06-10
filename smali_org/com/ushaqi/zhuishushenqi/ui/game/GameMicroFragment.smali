.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Timer;

.field b:Ljava/util/TimerTask;

.field c:I

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

.field private g:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

.field private h:[Lcom/ushaqi/zhuishushenqi/model/Game;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;-><init>()V

    .line 540
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)[Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->h:[Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;[Lcom/ushaqi/zhuishushenqi/model/Game;)[Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->h:[Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)I
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->h()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method private h()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    .line 103
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getGames()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getGames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f03003e

    return v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 536
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f()V

    .line 537
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/W;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/W;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/W;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 538
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->setModule(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    const-string v1, "\u6211\u73a9\u8fc7\u7684"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->setTitle(Ljava/lang/String;)V

    .line 586
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;-><init>()V

    .line 587
    const-string v0, "\u6211\u73a9\u8fc7\u7684"

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->setName(Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->h:Ljava/lang/String;

    const-string v2, "played_game.txt"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 589
    if-nez v0, :cond_1

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    :cond_1
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->setGames(Ljava/util/List;)V

    .line 593
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->f:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->setGameGroup(Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;)V

    .line 594
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/ao;)V

    .line 80
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ah;)V

    .line 83
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b()V

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onPause()V

    .line 112
    const-string v0, "game_micro_layout"

    invoke-static {v0}, Lcom/umeng/a/b;->b(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->g()V

    .line 91
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->h()I

    move-result v0

    .line 92
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ah;)V

    .line 98
    :cond_0
    :goto_0
    const-string v0, "game_micro_layout"

    invoke-static {v0}, Lcom/umeng/a/b;->a(Ljava/lang/String;)V

    .line 99
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->b()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f0c010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d:Landroid/support/v7/widget/RecyclerView;

    .line 69
    return-void
.end method
