.class final Lcom/ushaqi/zhuishushenqi/ui/post/cm;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;B)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cm;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 620
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    .line 2438
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    .line 621
    :catch_0
    move-exception v1

    .line 622
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 615
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetsResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 615
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;

    .line 2629
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2630
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->u(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    .line 2632
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2633
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    .line 2634
    array-length v2, v1

    .line 2635
    if-lez v2, :cond_2

    .line 2636
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2637
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 2638
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 2639
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2641
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->v(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/adapter/G;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Ljava/util/List;)V

    .line 2642
    const/16 v0, 0x64

    if-ge v2, v0, :cond_1

    .line 2643
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 2650
    :goto_1
    return-void

    .line 2645
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->w(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->x(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_1

    .line 2648
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->y(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    goto :goto_1

    .line 2653
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
