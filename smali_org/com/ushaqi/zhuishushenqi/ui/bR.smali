.class Lcom/ushaqi/zhuishushenqi/ui/bR;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;B)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 459
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 460
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->q(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;->getProm()Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 462
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;->getProm()Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 474
    :cond_0
    :goto_0
    return-object v0

    .line 466
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->p(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_2

    .line 468
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;->getBooks()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 479
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Z)V

    .line 482
    if-eqz p1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/adapter/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/E;->a(Ljava/util/Collection;)V

    .line 484
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bS;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bS;-><init>(Lcom/ushaqi/zhuishushenqi/ui/bR;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;I)V

    .line 496
    const-string v0, "1"

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    .line 1053
    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->p(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 1054
    const-string v4, "emp"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-static {v1, v2, v3}, Lcom/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 506
    :goto_1
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;I)V

    .line 499
    const-string v0, "0"

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;I)V

    .line 504
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const v1, 0x7f05016e

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 446
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bR;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 446
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bR;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onPreExecute()V

    .line 452
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Z)V

    .line 453
    return-void
.end method
