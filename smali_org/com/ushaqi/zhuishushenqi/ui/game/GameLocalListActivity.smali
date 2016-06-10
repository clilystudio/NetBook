.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/game/T;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->setContentView(I)V

    .line 41
    const-string v0, "\u6211\u73a9\u8fc7\u7684\u6e38\u620f"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->b(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->h:Ljava/lang/String;

    const-string v1, "played_game.txt"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->c:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->c:Ljava/util/List;

    .line 46
    :cond_0
    const v0, 0x7f0c010d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/ao;)V

    .line 48
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/T;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/T;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/game/T;

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/game/T;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ah;)V

    .line 50
    return-void
.end method
