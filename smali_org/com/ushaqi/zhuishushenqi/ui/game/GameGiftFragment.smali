.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;-><init>()V

    .line 123
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/u;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/u;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->d:Landroid/content/BroadcastReceiver;

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->g()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->b:Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    .line 135
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->a(Landroid/app/Activity;Ljava/util/List;)V

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->b:Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->notifyDataSetChanged()V

    .line 142
    :cond_2
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f030119

    return v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->f()V

    .line 147
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/v;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/v;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/v;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->b:Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->b:Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/t;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/t;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->b()V

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onPause()V

    .line 119
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    const-string v0, "game_gift"

    invoke-static {v0}, Lcom/umeng/a/b;->b(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onResume()V

    .line 110
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "update_game_item_status"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->g()V

    .line 112
    const-string v0, "game_gift"

    invoke-static {v0}, Lcom/umeng/a/b;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0c010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->a:Landroid/widget/ListView;

    .line 50
    return-void
.end method
