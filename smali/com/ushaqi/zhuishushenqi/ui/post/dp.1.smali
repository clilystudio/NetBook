.class final Lcom/ushaqi/zhuishushenqi/ui/post/dp;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/ReviewList;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;B)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewList;
    .locals 7

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x0

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v6}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/ReviewList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 552
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 543
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewList;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 543
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ReviewList;

    .line 1557
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1558
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1559
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1560
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1563
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ReviewList;->getReviews()[Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1564
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1565
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ReviewList;->getReviews()[Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;

    move-result-object v0

    .line 1566
    array-length v1, v0

    .line 1567
    if-lez v1, :cond_1

    .line 1568
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1569
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1570
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/D;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(Ljava/util/Collection;)V

    .line 1571
    const/16 v0, 0x14

    if-ge v1, v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1579
    :goto_0
    return-void

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1577
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->v(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    goto :goto_0

    .line 1582
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
