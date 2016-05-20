.class final Lcom/ushaqi/zhuishushenqi/ui/post/bJ;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;B)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;
    .locals 6

    .prologue
    .line 359
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 354
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x8

    .line 354
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;

    .line 1368
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1369
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1370
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1374
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1376
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;

    move-result-object v0

    .line 1377
    array-length v1, v0

    .line 1378
    if-lez v1, :cond_1

    .line 1379
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1380
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1381
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/o;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/o;->a(Ljava/util/Collection;)V

    .line 1382
    const/16 v0, 0x14

    if-ge v1, v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1393
    :goto_0
    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1389
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/o;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/o;->a(Ljava/util/Collection;)V

    .line 1390
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1391
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    goto :goto_0

    .line 1396
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
