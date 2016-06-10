.class final Lcom/ushaqi/zhuishushenqi/reader/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/Y;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V
    .locals 1

    .prologue
    .line 299
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->b:Ljava/util/Map;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/U;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/U;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 307
    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    if-nez p3, :cond_1

    .line 314
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    const/4 v1, 0x0

    sget-object v2, Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;->CHAPTER:Lcom/ushaqi/zhuishushenqi/reader/Reader$Type;

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;ILcom/ushaqi/zhuishushenqi/reader/Reader$Type;)V

    .line 315
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 316
    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/V;

    invoke-direct {v1, p0, p1, p1}, Lcom/ushaqi/zhuishushenqi/reader/V;-><init>(Lcom/ushaqi/zhuishushenqi/reader/U;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    .line 319
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/U;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
