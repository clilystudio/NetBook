.class final Lcom/ushaqi/zhuishushenqi/ui/post/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->g:I

    if-eq v0, p2, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iput p2, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->g:I

    .line 237
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    .line 1055
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 237
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->g:I

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->f(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->f:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 240
    :cond_0
    return-void
.end method
