.class final Lcom/ushaqi/zhuishushenqi/ui/post/dN;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/Topic;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;B)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dN;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 5

    .prologue
    .line 180
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Topic;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 175
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Topic;

    .line 1189
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V

    .line 1195
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1199
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Topic;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1200
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Topic;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    move-result-object v1

    .line 1201
    array-length v2, v1

    .line 1202
    if-lez v2, :cond_2

    .line 1203
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 1204
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/adapter/j;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/j;->a(Ljava/util/Collection;)V

    .line 1207
    const/16 v0, 0x14

    if-lt v2, v0, :cond_2

    .line 1210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1215
    :cond_1
    :goto_1
    return-void

    .line 1213
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_1

    .line 1218
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
