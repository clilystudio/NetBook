.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

.field private b:Landroid/view/View;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Game;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ushaqi/zhuishushenqi/ui/game/al;

.field private e:Lcom/ushaqi/zhuishushenqi/ui/game/am;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Lcom/ushaqi/zhuishushenqi/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->c:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/aj;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/aj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->f:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/ak;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/ak;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->g:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;Lcom/ushaqi/zhuishushenqi/ui/game/am;)Lcom/ushaqi/zhuishushenqi/ui/game/am;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->e:Lcom/ushaqi/zhuishushenqi/ui/game/am;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->g()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/al;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/game/al;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->g:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/am;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->e:Lcom/ushaqi/zhuishushenqi/ui/game/am;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/s;->a(Landroid/app/Activity;Ljava/util/List;)V

    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/game/al;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/al;->notifyDataSetChanged()V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f03015a

    return v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->f()V

    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/am;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/am;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->e:Lcom/ushaqi/zhuishushenqi/ui/game/am;

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->e:Lcom/ushaqi/zhuishushenqi/ui/game/am;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/am;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setDividerHeight(I)V

    .line 63
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/al;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/al;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/game/al;

    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->d:Lcom/ushaqi/zhuishushenqi/ui/game/al;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/ai;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/ai;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b()V

    .line 78
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onPause()V

    .line 104
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    const-string v0, "game_rank_list"

    invoke-static {v0}, Lcom/umeng/a/b;->a(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "update_game_item_status"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->g()V

    .line 98
    const-string v0, "game_rank_list"

    invoke-static {v0}, Lcom/umeng/a/b;->a(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0c045d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 53
    return-void
.end method
