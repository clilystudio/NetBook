.class final Landroid/support/v7/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Landroid/support/v7/widget/r;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Landroid/support/v7/widget/r;

    invoke-direct {v0}, Landroid/support/v7/widget/r;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    .line 372
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 6

    .prologue
    .line 375
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    add-int/lit8 v1, p1, -0x40

    invoke-direct {v0, v1}, Landroid/support/v7/widget/r;->e(I)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 395
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 397
    iget-object p0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 4

    .prologue
    .line 360
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 361
    invoke-direct {p0}, Landroid/support/v7/widget/r;->b()V

    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->a(I)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    goto :goto_0
.end method

.method final a(IZ)V
    .locals 10

    .prologue
    .line 402
    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_1

    .line 403
    invoke-direct {p0}, Landroid/support/v7/widget/r;->b()V

    .line 404
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/r;->a(IZ)V

    .line 421
    :cond_0
    return-void

    .line 406
    :cond_1
    iget-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 407
    :goto_1
    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    .line 408
    iget-wide v4, p0, Landroid/support/v7/widget/r;->a:J

    and-long/2addr v4, v2

    .line 409
    iget-wide v6, p0, Landroid/support/v7/widget/r;->a:J

    const-wide/16 v8, -0x1

    xor-long/2addr v2, v8

    and-long/2addr v2, v6

    const/4 v1, 0x1

    shl-long/2addr v2, v1

    .line 410
    or-long/2addr v2, v4

    iput-wide v2, p0, Landroid/support/v7/widget/r;->a:J

    .line 411
    if-eqz p2, :cond_4

    .line 412
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/r;->a(I)V

    .line 416
    :goto_2
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    if-eqz v1, :cond_0

    .line 417
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/r;->b()V

    .line 418
    iget-object p0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    const/4 p1, 0x0

    move p2, v0

    goto :goto_0

    .line 406
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 414
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/r;->e(I)V

    goto :goto_2
.end method

.method final b(I)Z
    .locals 4

    .prologue
    .line 386
    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 387
    invoke-direct {p0}, Landroid/support/v7/widget/r;->b()V

    .line 388
    iget-object p0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 390
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final c(I)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    :goto_0
    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    .line 425
    invoke-direct {p0}, Landroid/support/v7/widget/r;->b()V

    .line 426
    iget-object p0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 428
    :cond_0
    shl-long v4, v12, p1

    .line 429
    iget-wide v6, p0, Landroid/support/v7/widget/r;->a:J

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    move v0, v1

    .line 430
    :goto_1
    iget-wide v6, p0, Landroid/support/v7/widget/r;->a:J

    xor-long v8, v4, v10

    and-long/2addr v6, v8

    iput-wide v6, p0, Landroid/support/v7/widget/r;->a:J

    .line 431
    sub-long/2addr v4, v12

    .line 432
    iget-wide v6, p0, Landroid/support/v7/widget/r;->a:J

    and-long/2addr v6, v4

    .line 434
    iget-wide v8, p0, Landroid/support/v7/widget/r;->a:J

    xor-long/2addr v4, v10

    and-long/2addr v4, v8

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    .line 435
    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/support/v7/widget/r;->a:J

    .line 436
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    if-eqz v1, :cond_2

    .line 437
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/r;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/r;->a(I)V

    .line 440
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/r;->c(I)Z

    .line 442
    :cond_2
    return v0

    :cond_3
    move v0, v2

    .line 429
    goto :goto_1
.end method

.method final d(I)I
    .locals 6

    .prologue
    const/16 v1, 0x40

    const-wide/16 v4, 0x1

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    if-nez v0, :cond_1

    .line 448
    if-lt p1, v1, :cond_0

    .line 449
    iget-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 456
    :goto_0
    return v0

    .line 451
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    .line 453
    :cond_1
    if-ge p1, v1, :cond_2

    .line 454
    iget-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->d(I)I

    move-result v0

    iget-wide v2, p0, Landroid/support/v7/widget/r;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/r;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1}, Landroid/support/v7/widget/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/r;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
