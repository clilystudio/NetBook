.class final Lcom/ushaqi/zhuishushenqi/ui/post/bh;
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
        "Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;B)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bh;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)[Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;
    .locals 7

    .prologue
    .line 413
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/adapter/l;->getCount()I

    move-result v3

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v6}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)Lcom/ushaqi/zhuishushenqi/model/DiscussSummaryList;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/DiscussSummaryList;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a([Ljava/lang/String;)[Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 408
    check-cast p1, [Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;

    .line 1425
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1426
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1427
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1428
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1430
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    if-eqz p1, :cond_2

    .line 1435
    array-length v0, p1

    .line 1436
    if-lez v0, :cond_1

    .line 1437
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1438
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/l;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/l;->a(Ljava/util/Collection;)V

    .line 1439
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 1442
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1450
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
