.class final Lcom/ushaqi/zhuishushenqi/ui/post/dy;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;B)V
    .locals 0

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dy;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 678
    :try_start_0
    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 679
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    .line 681
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 2151
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .line 683
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 673
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 673
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;

    .line 2690
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2691
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 2693
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2694
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2695
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;->getComments()[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2696
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2697
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/adapter/z;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(Ljava/util/Collection;)V

    .line 2699
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 2700
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->removeFooterView(Landroid/view/View;)Z

    .line 2701
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 2703
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    const v1, 0x7f0c028f

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCommented()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u8bc4\u8bba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2704
    :goto_0
    return-void

    .line 2707
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
