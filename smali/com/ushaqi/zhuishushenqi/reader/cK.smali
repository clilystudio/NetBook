.class final Lcom/ushaqi/zhuishushenqi/reader/cK;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
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
    .line 479
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cK;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    .line 480
    const v0, 0x7f05006a

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;I)V

    .line 481
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/cK;->a:I

    .line 482
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 487
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cK;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 475
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cK;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 475
    check-cast p1, Ljava/lang/String;

    .line 1496
    if-eqz p1, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cK;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cK;->a:I

    invoke-static {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;ILjava/lang/String;)V

    :goto_0
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cK;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    const-string v1, "\u8f7d\u5165\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
