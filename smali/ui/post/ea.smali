.class final Lcom/ushaqi/zhuishushenqi/ui/post/ea;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/TimelineResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;B)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/ea;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
    .locals 4

    .prologue
    .line 352
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 347
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    .line 1361
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1362
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    .line 1367
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1368
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    move-result-object v1

    .line 1369
    array-length v2, v1

    .line 1370
    if-lez v2, :cond_3

    .line 1371
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 1372
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 1371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)Ljava/util/List;

    .line 1376
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/adapter/G;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 1377
    const/16 v0, 0x64

    if-ge v2, v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1382
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V

    .line 1388
    :cond_1
    :goto_2
    return-void

    .line 1380
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_1

    .line 1383
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    goto :goto_2

    .line 1386
    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1387
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->startActivity(Landroid/content/Intent;)V

    .line 1388
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0501a1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_2

    .line 1392
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2
.end method
