.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/game/Q;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Game;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ushaqi/zhuishushenqi/model/GameCat;

.field private e:Z

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameCat;

    .line 128
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/P;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/P;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->f:Landroid/content/BroadcastReceiver;

    .line 185
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/GameCat;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "game_cat_list"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Game;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/game/Q;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a(Ljava/util/Collection;)V

    .line 125
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->j()V

    .line 126
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->e:Z

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/s;->a(Landroid/app/Activity;Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/game/Q;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/Q;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->i()V

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameCat;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->f()V

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameCat;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameCat;->getGames()[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a(Ljava/util/List;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/S;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/S;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/S;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030119

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a(I)V

    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    const-string v1, "micro_game"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->e:Z

    .line 73
    const-string v1, "game_cat_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "game_cat_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameCat;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameCat;

    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameCat;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameCat;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b(Ljava/lang/String;)V

    .line 81
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 83
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/O;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/Q;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/Q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/game/Q;

    .line 93
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/game/Q;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b()V

    .line 96
    return-void

    .line 77
    :cond_0
    const-string v1, "game_list_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->f:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "update_game_item_status"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->j()V

    .line 103
    return-void
.end method
