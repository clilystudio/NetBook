.class Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;
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
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;B)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V

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
    .line 296
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 297
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->q(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;->getProm()Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;->getProm()Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 3
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

    .line 310
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Z)V

    .line 313
    if-eqz p1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/y;->a(Ljava/util/Collection;)V

    .line 315
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/B;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/B;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;I)V

    .line 333
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;I)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;I)V

    .line 331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    const v1, 0x7f05016e

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/e;->onPreExecute()V

    .line 290
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/A;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Z)V

    .line 291
    return-void
.end method
