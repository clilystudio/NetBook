.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<[",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 413
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    .line 414
    const-string v0, "\u6b63\u5728\u6dfb\u52a0\u4e66\u7c4d..."

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method private varargs a([[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 421
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a([Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 425
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    check-cast p1, [[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;->a([[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 412
    check-cast p1, Ljava/util/List;

    .line 1430
    if-eqz p1, :cond_1

    .line 1431
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v1

    .line 1432
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1433
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->addBook(Lcom/ushaqi/zhuishushenqi/model/BookSummary;)V

    .line 1434
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->setSelected(Z)V

    goto :goto_0

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    .line 1437
    :goto_1
    return-void

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/N;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    const-string v1, "\u6dfb\u52a0\u4e66\u7c4d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
