.class final Lcom/ushaqi/zhuishushenqi/ui/post/av;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/BookHelpList;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;B)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/av;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookHelpList;
    .locals 6

    .prologue
    .line 358
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/BookHelpList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 362
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookHelpList;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 353
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookHelpList;

    .line 1367
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1368
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1373
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelpList;->getHelps()[Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1374
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1375
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookHelpList;->getHelps()[Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;

    move-result-object v0

    .line 1376
    array-length v1, v0

    .line 1377
    if-lez v1, :cond_1

    .line 1378
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1379
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1380
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/d;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/d;->a(Ljava/util/Collection;)V

    .line 1381
    const/16 v0, 0x14

    if-ge v1, v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1389
    :goto_0
    return-void

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    goto :goto_0

    .line 1392
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/av;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
