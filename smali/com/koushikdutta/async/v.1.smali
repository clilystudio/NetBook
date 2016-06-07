.class public Lcom/koushikdutta/async/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field public static c:I

.field private static e:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I

.field private static g:I

.field private static h:I

.field private static final i:Ljava/lang/Object;

.field private static j:Ljava/nio/ByteBuffer;

.field private static synthetic k:Z


# instance fields
.field a:Lcom/koushikdutta/async/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/ArrayDeque",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/nio/ByteOrder;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/v;->k:Z

    .line 387
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v2, 0x8

    new-instance v3, Lcom/koushikdutta/async/w;

    invoke-direct {v3}, Lcom/koushikdutta/async/w;-><init>()V

    invoke-direct {v0, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/koushikdutta/async/v;->e:Ljava/util/PriorityQueue;

    .line 395
    const/high16 v0, 0x100000

    sput v0, Lcom/koushikdutta/async/v;->f:I

    .line 396
    const/high16 v0, 0x40000

    sput v0, Lcom/koushikdutta/async/v;->c:I

    .line 397
    sput v1, Lcom/koushikdutta/async/v;->g:I

    .line 398
    sput v1, Lcom/koushikdutta/async/v;->h:I

    .line 455
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/v;->i:Ljava/lang/Object;

    .line 511
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/v;->j:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    move v0, v1

    .line 17
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    .line 21
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/v;->b:Ljava/nio/ByteOrder;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 32
    return-void
.end method

.method private b(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    sget-object p1, Lcom/koushikdutta/async/d/b;->a:Ljava/nio/charset/Charset;

    .line 344
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 349
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v3, v1, [B

    .line 351
    const/4 v2, 0x0

    .line 352
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 353
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v0, v1

    move v1, v2

    move-object v2, v3

    .line 360
    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1, v0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 357
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    .line 358
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_1

    .line 362
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 458
    sget v0, Lcom/koushikdutta/async/v;->h:I

    if-gt p0, v0, :cond_6

    .line 459
    invoke-static {}, Lcom/koushikdutta/async/v;->n()Ljava/util/PriorityQueue;

    move-result-object v5

    .line 460
    if-eqz v5, :cond_6

    .line 461
    sget-object v6, Lcom/koushikdutta/async/v;->i:Ljava/lang/Object;

    monitor-enter v6

    .line 462
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 463
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 464
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 465
    const/4 v1, 0x0

    sput v1, Lcom/koushikdutta/async/v;->h:I

    .line 466
    :cond_1
    sget v1, Lcom/koushikdutta/async/v;->g:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v1, v4

    sput v1, Lcom/koushikdutta/async/v;->g:I

    .line 467
    sget-boolean v1, Lcom/koushikdutta/async/v;->k:Z

    if-nez v1, :cond_4

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-eqz v1, :cond_2

    move v4, v2

    :goto_0
    sget v1, Lcom/koushikdutta/async/v;->g:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    xor-int/2addr v1, v4

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v4, v3

    .line 467
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 468
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt v1, p0, :cond_0

    .line 470
    monitor-exit v6

    .line 480
    :goto_2
    return-object v0

    .line 474
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    :cond_6
    const/16 v0, 0x2000

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2
.end method

.method private c(I)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 215
    .line 5080
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 215
    if-ge v0, p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6080
    iget v2, p0, Lcom/koushikdutta/async/v;->d:I

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 219
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 224
    :cond_1
    if-nez v0, :cond_2

    .line 225
    sget-object v0, Lcom/koushikdutta/async/v;->j:Ljava/nio/ByteBuffer;

    .line 252
    :goto_1
    return-object v0

    .line 228
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/koushikdutta/async/v;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1

    .line 232
    :cond_3
    invoke-static {p1}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 233
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 234
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 235
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    .line 237
    :cond_4
    :goto_2
    if-ge v2, p1, :cond_5

    .line 238
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 239
    sub-int v5, p1, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 240
    invoke-virtual {v0, v4, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 241
    add-int/2addr v2, v5

    .line 242
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_4

    .line 243
    invoke-static {v0}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    .line 244
    goto :goto_2

    .line 249
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_6

    .line 250
    iget-object v1, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 251
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/v;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public static c(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 421
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v3, 0x2000

    if-lt v0, v3, :cond_0

    .line 423
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v3, Lcom/koushikdutta/async/v;->c:I

    if-gt v0, v3, :cond_0

    .line 426
    invoke-static {}, Lcom/koushikdutta/async/v;->n()Ljava/util/PriorityQueue;

    move-result-object v3

    .line 427
    if-eqz v3, :cond_0

    .line 430
    sget-object v4, Lcom/koushikdutta/async/v;->i:Ljava/lang/Object;

    monitor-enter v4

    .line 431
    :goto_1
    :try_start_0
    sget v0, Lcom/koushikdutta/async/v;->g:I

    sget v5, Lcom/koushikdutta/async/v;->f:I

    if-le v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 433
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 434
    sget v5, Lcom/koushikdutta/async/v;->g:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int v0, v5, v0

    sput v0, Lcom/koushikdutta/async/v;->g:I

    goto :goto_1

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 437
    :cond_2
    :try_start_1
    sget v0, Lcom/koushikdutta/async/v;->g:I

    sget v5, Lcom/koushikdutta/async/v;->f:I

    if-le v0, v5, :cond_3

    .line 439
    monitor-exit v4

    goto :goto_0

    .line 442
    :cond_3
    sget-boolean v0, Lcom/koushikdutta/async/v;->k:Z

    if-nez v0, :cond_6

    .line 8409
    sget-object v0, Lcom/koushikdutta/async/v;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8410
    if-ne v0, p0, :cond_4

    move v0, v1

    .line 442
    :goto_2
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    move v0, v2

    .line 8413
    goto :goto_2

    .line 444
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 445
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 446
    sget v0, Lcom/koushikdutta/async/v;->g:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v0, v5

    sput v0, Lcom/koushikdutta/async/v;->g:I

    .line 448
    invoke-virtual {v3, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 449
    sget-boolean v0, Lcom/koushikdutta/async/v;->k:Z

    if-nez v0, :cond_9

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-eqz v0, :cond_7

    move v3, v1

    :goto_3
    sget v0, Lcom/koushikdutta/async/v;->g:I

    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    xor-int/2addr v0, v3

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    move v3, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4

    .line 451
    :cond_9
    sget v0, Lcom/koushikdutta/async/v;->h:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/koushikdutta/async/v;->h:I

    .line 452
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 310
    .line 8080
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 310
    if-ltz v0, :cond_0

    .line 311
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 312
    :cond_0
    return-void
.end method

.method private static n()Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/koushikdutta/async/v;->e:Ljava/util/PriorityQueue;

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/koushikdutta/async/v;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/koushikdutta/async/v;

    invoke-direct {v0}, Lcom/koushikdutta/async/v;-><init>()V

    .line 203
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/v;->a(Lcom/koushikdutta/async/v;I)V

    .line 204
    iget-object v1, p0, Lcom/koushikdutta/async/v;->b:Ljava/nio/ByteOrder;

    .line 5027
    iput-object v1, v0, Lcom/koushikdutta/async/v;->b:Ljava/nio/ByteOrder;

    .line 204
    return-object v0
.end method

.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/v;->b(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-virtual {p0}, Lcom/koushikdutta/async/v;->j()V

    .line 372
    return-object v0
.end method

.method public final a(Lcom/koushikdutta/async/v;)V
    .locals 1

    .prologue
    .line 198
    .line 4080
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/v;->a(Lcom/koushikdutta/async/v;I)V

    .line 199
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/v;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 161
    .line 3080
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 161
    if-ge v0, p2, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    .line 165
    :goto_0
    if-ge v1, p2, :cond_4

    .line 166
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 169
    if-nez v3, :cond_1

    .line 170
    invoke-static {v0}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 174
    :cond_1
    add-int v4, v1, v3

    if-le v4, p2, :cond_3

    .line 175
    sub-int v1, p2, v1

    .line 177
    invoke-static {v1}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 178
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 179
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 181
    iget-object v2, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 182
    sget-boolean v0, Lcom/koushikdutta/async/v;->k:Z

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 183
    :cond_2
    sget-boolean v0, Lcom/koushikdutta/async/v;->k:Z

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_3
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/v;->a(Ljava/nio/ByteBuffer;)V

    .line 191
    add-int v0, v1, v3

    move v1, v0

    .line 192
    goto :goto_0

    .line 194
    :cond_4
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 195
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 263
    invoke-static {p1}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    .line 285
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/v;->d(I)V

    .line 269
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 271
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 272
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 273
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 274
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 275
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 277
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 278
    invoke-static {p1}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    .line 6257
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/v;->c(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 7257
    invoke-direct {p0, v3}, Lcom/koushikdutta/async/v;->c(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final a([B)V
    .locals 6

    .prologue
    .line 136
    const/4 v0, 0x0

    array-length v2, p1

    .line 2080
    iget v1, p0, Lcom/koushikdutta/async/v;->d:I

    .line 1140
    if-ge v1, v2, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    move v4, v0

    .line 1144
    :goto_0
    if-lez v1, :cond_3

    .line 1145
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1146
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1147
    invoke-virtual {v0, p1, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1148
    sub-int v3, v1, v5

    .line 1149
    add-int/2addr v4, v5

    .line 1150
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_2

    .line 1151
    iget-object v1, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 1152
    sget-boolean v5, Lcom/koushikdutta/async/v;->k:Z

    if-nez v5, :cond_1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1153
    :cond_1
    invoke-static {v0}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    :cond_2
    move v1, v3

    .line 1155
    goto :goto_0

    .line 1157
    :cond_3
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 137
    return-void
.end method

.method public final a()[Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 68
    iget-object v1, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 69
    iget-object v1, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ArrayDeque;->clear()V

    .line 70
    const/4 v1, 0x0

    iput v1, p0, Lcom/koushikdutta/async/v;->d:I

    .line 71
    return-object v0
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 288
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 289
    invoke-static {p1}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    .line 307
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/v;->d(I)V

    .line 295
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 298
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 300
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 301
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 302
    invoke-static {p1}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 84
    .line 1080
    iget v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 84
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/v;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 107
    iget v1, p0, Lcom/koushikdutta/async/v;->d:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/koushikdutta/async/v;->d:I

    .line 108
    return v0
.end method

.method public final f()C
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/v;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    .line 113
    iget v1, p0, Lcom/koushikdutta/async/v;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/koushikdutta/async/v;->d:I

    .line 114
    return v0
.end method

.method public final g()I
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/v;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 119
    iget v1, p0, Lcom/koushikdutta/async/v;->d:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/koushikdutta/async/v;->d:I

    .line 120
    return v0
.end method

.method public final h()B
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/v;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 125
    iget v1, p0, Lcom/koushikdutta/async/v;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/koushikdutta/async/v;->d:I

    .line 126
    return v0
.end method

.method public final i()J
    .locals 3

    .prologue
    .line 130
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/v;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 131
    iget v2, p0, Lcom/koushikdutta/async/v;->d:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/koushikdutta/async/v;->d:I

    .line 132
    return-wide v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 315
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 318
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/async/v;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/v;->d:I

    .line 320
    return-void
.end method

.method public final k()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 324
    iget v1, p0, Lcom/koushikdutta/async/v;->d:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/v;->d:I

    .line 325
    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/koushikdutta/async/v;->a:Lcom/koushikdutta/async/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/v;->b(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
