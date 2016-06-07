.class final Lcom/ushaqi/zhuishushenqi/ui/post/dM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dO;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dO;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dO;->cancel(Z)Z

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/dN;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;Lcom/ushaqi/zhuishushenqi/ui/post/dN;)Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    .line 237
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "50bff3ec209793513100001c"

    aput-object v2, v1, v3

    const-string v2, "updated"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    :cond_2
    return-void
.end method
