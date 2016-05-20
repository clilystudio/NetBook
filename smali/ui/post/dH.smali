.class final Lcom/ushaqi/zhuishushenqi/ui/post/dH;
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
    .line 191
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;B)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
    .locals 2

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 191
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;

    .line 1205
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1206
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    .line 1211
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1212
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    move-result-object v1

    .line 1213
    array-length v2, v1

    .line 1214
    if-lez v2, :cond_3

    .line 1215
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 1216
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 1217
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/adapter/G;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 1220
    const/16 v0, 0xa

    if-ge v2, v0, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1228
    :cond_1
    :goto_1
    return-void

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_1

    .line 1225
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    goto :goto_1

    .line 1231
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
