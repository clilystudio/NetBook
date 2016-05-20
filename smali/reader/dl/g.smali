.class final Lcom/ushaqi/zhuishushenqi/reader/dl/g;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/Toc;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;B)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/dl/g;-><init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 504
    .line 2508
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Lcom/ushaqi/zhuishushenqi/reader/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/f;->a()Lcom/ushaqi/zhuishushenqi/model/Toc;

    move-result-object v0

    .line 504
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 504
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Toc;

    .line 1513
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1514
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->getChapters()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->get_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toc"

    invoke-static {v0, v1, v2, p1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Toc;)Z

    .line 1516
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Toc;->getChapters()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 1517
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->p(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)I

    .line 1518
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->h(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->f(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)V

    .line 1519
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->q(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u76ee\u5f55\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u7f13\u5b58"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1522
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/g;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->r(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    goto :goto_0
.end method
