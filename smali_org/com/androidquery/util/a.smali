.class public final Lcom/androidquery/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Landroid/os/Handler;

.field private static c:Z

.field private static d:Ljava/util/concurrent/ScheduledExecutorService;

.field private static e:Ljava/io/File;

.field private static f:Ljava/io/File;

.field private static final g:[C

.field private static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    const/4 v0, 0x0

    .line 61
    sput-boolean v0, Lcom/androidquery/util/a;->a:Z

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 392
    sput-boolean v0, Lcom/androidquery/util/a;->c:Z

    .line 719
    new-array v1, v5, [C

    sput-object v1, Lcom/androidquery/util/a;->g:[C

    .line 722
    const/16 v1, 0x41

    move v2, v0

    :goto_0
    const/16 v3, 0x5a

    if-le v1, v3, :cond_0

    .line 723
    const/16 v1, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-le v1, v3, :cond_1

    .line 724
    const/16 v1, 0x30

    :goto_2
    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    .line 725
    sget-object v1, Lcom/androidquery/util/a;->g:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v1, v2

    sget-object v1, Lcom/androidquery/util/a;->g:[C

    const/16 v2, 0x2f

    aput-char v2, v1, v3

    .line 728
    new-array v1, v6, [B

    sput-object v1, Lcom/androidquery/util/a;->h:[B

    move v1, v0

    .line 730
    :goto_3
    if-lt v1, v6, :cond_3

    .line 731
    :goto_4
    if-lt v0, v5, :cond_4

    return-void

    .line 722
    :cond_0
    sget-object v4, Lcom/androidquery/util/a;->g:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v1, v4, v2

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v2, v3

    goto :goto_0

    .line 723
    :cond_1
    sget-object v4, Lcom/androidquery/util/a;->g:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v1, v4, v2

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v2, v3

    goto :goto_1

    .line 724
    :cond_2
    sget-object v4, Lcom/androidquery/util/a;->g:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v1, v4, v2

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    move v2, v3

    goto :goto_2

    .line 730
    :cond_3
    sget-object v2, Lcom/androidquery/util/a;->h:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 731
    :cond_4
    sget-object v1, Lcom/androidquery/util/a;->h:[B

    sget-object v2, Lcom/androidquery/util/a;->g:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 519
    sget-object v0, Lcom/androidquery/util/a;->e:Ljava/io/File;

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "aquery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    sput-object v0, Lcom/androidquery/util/a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 524
    :cond_0
    sget-object v0, Lcom/androidquery/util/a;->e:Ljava/io/File;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/io/File;
    .locals 3

    .prologue
    .line 502
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 504
    sget-object v0, Lcom/androidquery/util/a;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androidquery/util/a;->f:Ljava/io/File;

    .line 512
    :goto_0
    return-object v0

    .line 506
    :cond_0
    invoke-static {p0}, Lcom/androidquery/util/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 507
    new-instance v1, Ljava/io/File;

    const-string v2, "persistent"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    sput-object v1, Lcom/androidquery/util/a;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 510
    sget-object v0, Lcom/androidquery/util/a;->f:Ljava/io/File;

    goto :goto_0

    .line 512
    :cond_1
    invoke-static {p0}, Lcom/androidquery/util/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 549
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 556
    :goto_0
    return-object v0

    .line 550
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2362
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/a;->a([B)[B

    move-result-object v0

    .line 2364
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 2366
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2538
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 469
    if-eqz p0, :cond_0

    .line 470
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;JJ)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 624
    if-nez v4, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    new-instance v1, Lcom/androidquery/util/b;

    invoke-direct {v1}, Lcom/androidquery/util/b;-><init>()V

    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4655
    array-length v5, v4

    move v1, v0

    :goto_1
    if-lt v1, v5, :cond_3

    .line 628
    :goto_2
    if-eqz v0, :cond_2

    .line 629
    invoke-static {v4, p3, p4}, Lcom/androidquery/util/a;->a([Ljava/io/File;J)V

    .line 632
    :cond_2
    invoke-static {}, Lcom/androidquery/util/a;->c()Ljava/io/File;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/androidquery/util/a;->a([Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4655
    :cond_3
    :try_start_1
    aget-object v6, v4, v1

    .line 4656
    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    add-long/2addr v2, v6

    .line 4657
    cmp-long v6, v2, p1

    if-lez v6, :cond_4

    .line 4658
    const/4 v0, 0x1

    goto :goto_2

    .line 4655
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/io/File;[B)V
    .locals 2

    .prologue
    .line 585
    if-eqz p0, :cond_1

    .line 3449
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 3451
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3458
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3459
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 3460
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 593
    :cond_1
    :goto_1
    return-void

    .line 3452
    :catch_0
    move-exception v0

    .line 3453
    const-string v1, "file create fail"

    .line 3454
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3461
    :catch_1
    move-exception v0

    .line 3462
    :try_start_3
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 588
    :catch_2
    move-exception v0

    .line 589
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Ljava/io/File;[BJ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1480
    sget-object v0, Lcom/androidquery/util/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 1481
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/util/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1484
    :cond_0
    sget-object v0, Lcom/androidquery/util/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 492
    new-instance v1, Lcom/androidquery/util/b;

    invoke-direct {v1}, Lcom/androidquery/util/b;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-virtual {v1, v4, v2}, Lcom/androidquery/util/b;->a(I[Ljava/lang/Object;)Lcom/androidquery/util/b;

    move-result-object v1

    .line 493
    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 495
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 389
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/util/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/d;)V

    .line 390
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/d;)V
    .locals 3

    .prologue
    .line 396
    if-eqz p3, :cond_0

    .line 397
    invoke-virtual {p3}, Lcom/androidquery/util/d;->a()V

    .line 398
    invoke-virtual {p3, p2}, Lcom/androidquery/util/d;->a(I)V

    .line 401
    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 405
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 420
    if-eqz p3, :cond_2

    .line 421
    invoke-virtual {p3}, Lcom/androidquery/util/d;->b()V

    .line 424
    :cond_2
    return-void

    .line 406
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 415
    if-eqz p3, :cond_1

    .line 416
    invoke-virtual {p3, v1}, Lcom/androidquery/util/d;->b(I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 109
    const-string v0, "AQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1275
    sget-object v0, Lcom/androidquery/util/a;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1276
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/androidquery/util/a;->b:Landroid/os/Handler;

    .line 1278
    :cond_0
    sget-object v0, Lcom/androidquery/util/a;->b:Landroid/os/Handler;

    .line 282
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method private static a([Ljava/io/File;J)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 667
    const-wide/16 v2, 0x0

    move v1, v0

    .line 670
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_0

    .line 689
    const-string v0, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    return-void

    .line 672
    :cond_0
    aget-object v4, p0, v0

    .line 674
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 676
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 678
    cmp-long v5, v2, p1

    if-ltz v5, :cond_1

    .line 681
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 682
    add-int/lit8 v1, v1, 0x1

    .line 670
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 2

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 430
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 433
    :try_start_0
    invoke-static {p0, v1}, Lcom/androidquery/util/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 434
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    :goto_0
    invoke-static {p0}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 442
    return-object v0

    .line 435
    :catch_0
    move-exception v1

    .line 436
    invoke-static {v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 1

    .prologue
    .line 375
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 376
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 377
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    .line 383
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .prologue
    .line 561
    invoke-static {p0, p1}, Lcom/androidquery/util/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 563
    :cond_0
    const/4 v0, 0x0

    .line 565
    :cond_1
    return-object v0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 132
    :try_start_0
    const-string v0, "reporting"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 264
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 267
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/io/File;
    .locals 3

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 643
    new-instance v0, Ljava/io/File;

    const-string v2, "aquery/temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 645
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 646
    :cond_0
    const/4 v0, 0x0

    .line 648
    :cond_1
    return-object v0
.end method
