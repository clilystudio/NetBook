.class final Lcom/ushaqi/zhuishushenqi/ui/post/aB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

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
    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 93
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookReview;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v2, "extraReviewId"

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/BookReview;->_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_0
    return-void
.end method
