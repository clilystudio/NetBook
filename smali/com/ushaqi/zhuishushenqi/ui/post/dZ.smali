.class final Lcom/ushaqi/zhuishushenqi/ui/post/dZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 403
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/eb;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/eb;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->cancel(Z)Z

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-direct {v1, v2, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/ea;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Lcom/ushaqi/zhuishushenqi/ui/post/ea;)Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    .line 411
    const/4 v0, 0x0

    .line 412
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dZ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    :cond_3
    return-void
.end method
