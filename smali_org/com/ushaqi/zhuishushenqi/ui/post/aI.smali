.class final Lcom/ushaqi/zhuishushenqi/ui/post/aI;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/ushaqi/zhuishushenqi/model/BookReview;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;B)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/aI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)[Lcom/ushaqi/zhuishushenqi/model/BookReview;
    .locals 5

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->ok:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->reviews:[Lcom/ushaqi/zhuishushenqi/model/BookReview;

    if-eqz v1, :cond_0

    .line 259
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->reviews:[Lcom/ushaqi/zhuishushenqi/model/BookReview;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a([Ljava/lang/String;)[Lcom/ushaqi/zhuishushenqi/model/BookReview;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 252
    check-cast p1, [Lcom/ushaqi/zhuishushenqi/model/BookReview;

    .line 1269
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1270
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->c()V

    .line 1275
    if-eqz p1, :cond_4

    .line 1276
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    .line 1277
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1278
    array-length v1, p1

    .line 1279
    if-lez v1, :cond_3

    .line 1280
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 1281
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/adapter/h;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(Ljava/util/Collection;)V

    .line 1284
    const/16 v0, 0x14

    if-ge v1, v0, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1292
    :cond_1
    :goto_1
    return-void

    .line 1287
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_1

    .line 1290
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b()V

    goto :goto_1

    .line 1295
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
