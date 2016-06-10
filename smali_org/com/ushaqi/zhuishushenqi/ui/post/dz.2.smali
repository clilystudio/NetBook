.class final Lcom/ushaqi/zhuishushenqi/ui/post/dz;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/TweetResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;B)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dz;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/TweetResult;
    .locals 2

    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->l(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a()Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 398
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    .line 1412
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1414
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Lcom/ushaqi/zhuishushenqi/model/TweetResult;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    .line 1416
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 1417
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isArticle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    const-string v1, "ARTICLE"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1422
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->f()V

    .line 1424
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Lcom/ushaqi/zhuishushenqi/model/TweetResult;)V

    .line 1426
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getVotes()[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;)V

    .line 1428
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    .line 1430
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    :goto_1
    return-void

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    const-string v1, "TWEET"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dz;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->h()V

    goto :goto_1
.end method
