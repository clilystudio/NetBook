.class final Lcom/ushaqi/zhuishushenqi/ui/game/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 69
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 71
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->startActivity(Landroid/content/Intent;)V

    .line 74
    :cond_0
    return-void
.end method
