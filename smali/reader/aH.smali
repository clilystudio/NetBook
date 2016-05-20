.class final Lcom/ushaqi/zhuishushenqi/reader/aH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/af;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V
    .locals 0

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aH;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/aH;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aH;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1366
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aH;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v0

    .line 1367
    if-eqz v0, :cond_0

    .line 1368
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aH;->a:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1369
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aH;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    array-length v0, v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aH;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h_()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aH;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1379
    return-void
.end method
