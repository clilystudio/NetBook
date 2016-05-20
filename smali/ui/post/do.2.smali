.class final Lcom/ushaqi/zhuishushenqi/ui/post/do;
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
    .line 590
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;B)V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/do;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewList;
    .locals 7

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/do;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->w(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v6}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/ReviewList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 590
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewList;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x8

    .line 590
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/ReviewList;

    .line 1608
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1609
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1610
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1611
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1612
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1613
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/do;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ReviewList;->getReviews()[Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1618
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ReviewList;->getReviews()[Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;

    move-result-object v0

    .line 1619
    array-length v1, v0

    .line 1620
    if-lez v1, :cond_2

    .line 1621
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1622
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1623
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->t(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/D;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/D;->a(Ljava/util/Collection;)V

    .line 1624
    const/16 v0, 0x14

    if-ge v1, v0, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->u(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1630
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1635
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/do;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
