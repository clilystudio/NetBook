.class final Lcom/ushaqi/zhuishushenqi/ui/post/aP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/aQ;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aR;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aR;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/aR;->cancel(Z)Z

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/aQ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;Lcom/ushaqi/zhuishushenqi/ui/post/aQ;)Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    .line 287
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/aQ;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    :cond_2
    return-void
.end method
