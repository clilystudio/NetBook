.class final Lcom/ushaqi/zhuishushenqi/reader/V;
.super Lcom/ushaqi/zhuishushenqi/reader/Z;
.source "SourceFile"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/U;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/U;II)V
    .locals 1

    .prologue
    .line 323
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/V;->b:Lcom/ushaqi/zhuishushenqi/reader/U;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/reader/V;->a:I

    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/U;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-direct {p0, v0, p2}, Lcom/ushaqi/zhuishushenqi/reader/Z;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/V;->b:Lcom/ushaqi/zhuishushenqi/reader/U;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/U;->a(Lcom/ushaqi/zhuishushenqi/reader/U;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/V;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 327
    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/V;->b:Lcom/ushaqi/zhuishushenqi/reader/U;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/reader/U;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/W;

    invoke-direct {v2, p0, v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/W;-><init>(Lcom/ushaqi/zhuishushenqi/reader/V;Ljava/util/List;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/V;->b:Lcom/ushaqi/zhuishushenqi/reader/U;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/U;->b(Lcom/ushaqi/zhuishushenqi/reader/U;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/V;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 338
    if-eqz v0, :cond_1

    .line 339
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/V;->b:Lcom/ushaqi/zhuishushenqi/reader/U;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/reader/U;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    const/4 v2, 0x1

    sget-object v3, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->CHAPTER:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;ILcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method
