.class final Lcom/ushaqi/zhuishushenqi/ui/post/bT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 608
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/bW;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->v(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->w(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bX;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->w(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bX;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->cancel(Z)Z

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bW;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/ui/post/bW;)Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    .line 616
    const/4 v0, 0x0

    .line 617
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->q(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 618
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->q(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->q(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 620
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bT;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/bW;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 622
    :cond_3
    return-void
.end method
