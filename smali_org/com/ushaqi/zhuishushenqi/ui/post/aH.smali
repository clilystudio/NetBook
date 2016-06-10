.class final Lcom/ushaqi/zhuishushenqi/ui/post/aH;
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
    .line 303
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;B)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/aH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)[Lcom/ushaqi/zhuishushenqi/model/BookReview;
    .locals 5

    .prologue
    .line 308
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->ok:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->reviews:[Lcom/ushaqi/zhuishushenqi/model/BookReview;

    if-eqz v1, :cond_0

    .line 310
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->reviews:[Lcom/ushaqi/zhuishushenqi/model/BookReview;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a([Ljava/lang/String;)[Lcom/ushaqi/zhuishushenqi/model/BookReview;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 303
    check-cast p1, [Lcom/ushaqi/zhuishushenqi/model/BookReview;

    .line 1320
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1321
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->c()V

    .line 1326
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1330
    if-eqz p1, :cond_3

    .line 1331
    array-length v1, p1

    .line 1332
    if-lez v1, :cond_2

    .line 1333
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 1334
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/adapter/h;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/h;->a(Ljava/util/Collection;)V

    .line 1337
    const/16 v0, 0x14

    if-lt v1, v0, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1345
    :cond_1
    :goto_1
    return-void

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_1

    .line 1348
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
