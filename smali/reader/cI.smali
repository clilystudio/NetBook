.class final Lcom/ushaqi/zhuishushenqi/reader/cI;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 508
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    .line 509
    const v0, 0x7f05006a

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 510
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->a:I

    .line 511
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;
    .locals 2

    .prologue
    .line 516
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->v(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 520
    :goto_0
    return-object v0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 504
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cI;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 504
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;

    .line 1525
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;->getItems()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;->getItems()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1526
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;->getItems()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;

    move-result-object v0

    .line 1527
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->a:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->a:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 1528
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->a:I

    .line 1530
    :cond_1
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->a:I

    aget-object v0, v0, v1

    .line 1531
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocItem;->getCurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;ILjava/lang/String;)V

    .line 1532
    :goto_0
    return-void

    .line 1533
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cI;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    const-string v1, "\u8f7d\u5165\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
