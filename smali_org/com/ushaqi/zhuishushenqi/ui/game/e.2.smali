.class final Lcom/ushaqi/zhuishushenqi/ui/game/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/e;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/e;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 130
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/e;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/e;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

    .line 132
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/e;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->get_id()Ljava/lang/String;

    move-result-object v0

    const-string v2, "game"

    invoke-static {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/e;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    :cond_0
    return-void
.end method
