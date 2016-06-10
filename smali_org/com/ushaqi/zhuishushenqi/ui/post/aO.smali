.class final Lcom/ushaqi/zhuishushenqi/ui/post/aO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->g:I

    if-eq v0, p2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    iput p2, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->g:I

    .line 161
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    .line 1055
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->g:I

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->f(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->f:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aO;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 164
    :cond_0
    return-void
.end method
