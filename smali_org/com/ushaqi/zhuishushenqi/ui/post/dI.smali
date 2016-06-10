.class final Lcom/ushaqi/zhuishushenqi/ui/post/dI;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;B)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    return-void
.end method

.method private static varargs a()Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    .line 2286
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a()Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 126
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;

    .line 3140
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 3141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    .line 3146
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3148
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    move-result-object v0

    .line 3149
    array-length v0, v0

    .line 3150
    if-lez v0, :cond_2

    .line 3151
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;)V

    .line 3152
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;)V

    .line 3153
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 3154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 3161
    :cond_0
    :goto_0
    return-void

    .line 3156
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 3159
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    goto :goto_0

    .line 3164
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
