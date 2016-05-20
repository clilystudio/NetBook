.class final Lcom/ushaqi/zhuishushenqi/ui/game/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/a;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

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
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/a;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 61
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/a;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/a;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameCat;

    .line 63
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/a;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/GameCat;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/a;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;->startActivity(Landroid/content/Intent;)V

    .line 66
    :cond_0
    return-void
.end method
