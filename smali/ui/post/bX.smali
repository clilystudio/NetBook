.class final Lcom/ushaqi/zhuishushenqi/ui/post/bX;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/TweetsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;B)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bX;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 359
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    .line 2410
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a()Lcom/ushaqi/zhuishushenqi/model/TweetsResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 354
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;

    .line 3368
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 3369
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3372
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->p(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    .line 3374
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->q(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3376
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    .line 3377
    array-length v0, v0

    .line 3378
    if-lez v0, :cond_2

    .line 3379
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/model/TweetsResult;)V

    .line 3380
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/model/TweetsResult;)V

    .line 3381
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 3382
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->r(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 3391
    :cond_0
    :goto_0
    return-void

    .line 3384
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->r(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->s(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 3387
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->t(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    goto :goto_0

    .line 3389
    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3390
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->startActivity(Landroid/content/Intent;)V

    .line 3391
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0501a1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 3395
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
