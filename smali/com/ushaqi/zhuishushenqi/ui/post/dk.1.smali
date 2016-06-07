.class final Lcom/ushaqi/zhuishushenqi/ui/post/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dk;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dk;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 218
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dk;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dk;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dk;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    const-string v2, "extraReviewId"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dk;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    :cond_0
    return-void
.end method
