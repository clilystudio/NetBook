.class final Lcom/ushaqi/zhuishushenqi/ui/post/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aI;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->cancel(Z)Z

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/aH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Lcom/ushaqi/zhuishushenqi/ui/post/aH;)Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    .line 367
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    :cond_2
    return-void
.end method
