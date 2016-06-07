.class final Lcom/ushaqi/zhuishushenqi/reader/dl/f;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;B)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/dl/f;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    return-void
.end method

.method private static a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
    .locals 2

    .prologue
    .line 475
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 470
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 470
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;

    .line 1484
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1486
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;->getSources()[Lcom/ushaqi/zhuishushenqi/model/TocSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;->getSources()[Lcom/ushaqi/zhuishushenqi/model/TocSource;

    move-result-object v1

    .line 1488
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1489
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/hpay100/a/a;->a(Lcom/ushaqi/zhuishushenqi/model/TocSource;Ljava/lang/String;)V

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0, v5}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I

    .line 1493
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 1494
    if-eqz v0, :cond_1

    .line 1495
    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setReadMode(I)V

    .line 1496
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 1497
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    :goto_1
    return-void

    .line 1499
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/f;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->o(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    goto :goto_1
.end method
