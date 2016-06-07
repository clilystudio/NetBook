.class final Lcom/ushaqi/zhuishushenqi/reader/cJ;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 429
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    .line 430
    const v0, 0x7f05006a

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 431
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->a:I

    .line 432
    iput-object p4, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->b:Ljava/lang/String;

    .line 433
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;
    .locals 2

    .prologue
    .line 438
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->s(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 424
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cJ;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 424
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;

    .line 1447
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getBook()Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getChapter()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getChapter()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1448
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getBook()Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocBook;->getMd()Ljava/lang/String;

    move-result-object v1

    .line 1449
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;->getChapter()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;

    move-result-object v0

    .line 1450
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->a:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->a:I

    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 1451
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->a:I

    .line 1456
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1457
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->b:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;

    move-result-object v0

    .line 1462
    :goto_0
    if-eqz v0, :cond_3

    .line 1463
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1464
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1465
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->b:Ljava/lang/String;

    invoke-static {v3, v1, v4, v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :goto_1
    return-void

    .line 1459
    :cond_2
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->a:I

    aget-object v0, v0, v2

    .line 1460
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;->getCmd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->b:Ljava/lang/String;

    goto :goto_0

    .line 1467
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    const-string v1, "\u8f7d\u5165\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 1470
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cJ;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    const-string v1, "\u8f7d\u5165\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
