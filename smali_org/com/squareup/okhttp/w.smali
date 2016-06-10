.class public final Lcom/squareup/okhttp/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/w;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(Lcom/squareup/okhttp/x;)V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iget-object v0, p1, Lcom/squareup/okhttp/x;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/w;->b:Ljava/lang/String;

    .line 302
    iget-object v0, p1, Lcom/squareup/okhttp/x;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/w;->c:Ljava/lang/String;

    .line 303
    iget-object v0, p1, Lcom/squareup/okhttp/x;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/w;->d:Ljava/lang/String;

    .line 304
    iget-object v0, p1, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/w;->e:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->a()I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/w;->f:I

    .line 306
    iget-object v0, p1, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/okhttp/w;->a(Ljava/util/List;)Ljava/util/List;

    .line 307
    iget-object v0, p1, Lcom/squareup/okhttp/x;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/squareup/okhttp/x;->f:Ljava/util/List;

    .line 308
    invoke-static {v0}, Lcom/squareup/okhttp/w;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/w;->g:Ljava/util/List;

    .line 310
    iget-object v0, p1, Lcom/squareup/okhttp/x;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/squareup/okhttp/x;->g:Ljava/lang/String;

    .line 311
    invoke-static {v0}, Lcom/squareup/okhttp/w;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/x;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/w;->h:Ljava/lang/String;

    .line 314
    return-void

    .line 308
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/x;B)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/w;-><init>(Lcom/squareup/okhttp/x;)V

    return-void
.end method

.method static a(C)I
    .locals 1

    .prologue
    .line 1394
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 1397
    :goto_0
    return v0

    .line 1395
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1396
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1397
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 401
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/16 v0, 0x50

    .line 406
    :goto_0
    return v0

    .line 403
    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    const/16 v0, 0x1bb

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1

    .prologue
    .line 255
    invoke-static {p0, p1, p2, p3}, Lcom/squareup/okhttp/w;->b(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/net/URL;)Lcom/squareup/okhttp/w;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/w;->c(Ljava/lang/String;)Lcom/squareup/okhttp/w;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x25

    const/4 v5, -0x1

    .line 1361
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_3

    .line 1362
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1363
    if-ne v1, v6, :cond_2

    .line 1365
    new-instance v1, Lokio/f;

    invoke-direct {v1}, Lokio/f;-><init>()V

    .line 1366
    invoke-virtual {v1, p0, p1, v0}, Lokio/f;->a(Ljava/lang/String;II)Lokio/f;

    .line 2378
    :goto_1
    if-ge v0, p2, :cond_1

    .line 2379
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 2380
    if-ne v2, v6, :cond_0

    add-int/lit8 v3, v0, 0x2

    if-ge v3, p2, :cond_0

    .line 2381
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/squareup/okhttp/w;->a(C)I

    move-result v3

    .line 2382
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/squareup/okhttp/w;->a(C)I

    move-result v4

    .line 2383
    if-eq v3, v5, :cond_0

    if-eq v4, v5, :cond_0

    .line 2384
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lokio/f;->b(I)Lokio/f;

    .line 2385
    add-int/lit8 v0, v0, 0x2

    .line 2378
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 2389
    :cond_0
    invoke-virtual {v1, v2}, Lokio/f;->a(I)Lokio/f;

    goto :goto_2

    .line 1368
    :cond_1
    invoke-virtual {v1}, Lokio/f;->m()Ljava/lang/String;

    move-result-object v0

    .line 1373
    :goto_3
    return-object v0

    .line 1361
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1373
    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1417
    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    .line 1418
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1419
    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    .line 1421
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    .line 1425
    :cond_1
    new-instance v0, Lokio/f;

    invoke-direct {v0}, Lokio/f;-><init>()V

    .line 1426
    invoke-virtual {v0, p0, p1, v2}, Lokio/f;->a(Ljava/lang/String;II)Lokio/f;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 1427
    invoke-static/range {v0 .. v6}, Lcom/squareup/okhttp/w;->a(Lokio/f;Ljava/lang/String;IILjava/lang/String;ZZ)V

    .line 1428
    invoke-virtual {v0}, Lokio/f;->m()Ljava/lang/String;

    move-result-object v0

    .line 1433
    :goto_1
    return-object v0

    .line 1417
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 1433
    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1354
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1355
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1357
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 426
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 429
    :cond_0
    return-void
.end method

.method static a(Lokio/f;Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 6

    .prologue
    const/16 v5, 0x25

    .line 1438
    const/4 v0, 0x0

    .line 1440
    :goto_0
    if-ge p2, p3, :cond_7

    .line 1441
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1442
    if-eqz p5, :cond_0

    const/16 v1, 0x9

    if-eq v2, v1, :cond_1

    const/16 v1, 0xa

    if-eq v2, v1, :cond_1

    const/16 v1, 0xc

    if-eq v2, v1, :cond_1

    const/16 v1, 0xd

    if-eq v2, v1, :cond_1

    .line 1445
    :cond_0
    if-eqz p6, :cond_3

    const/16 v1, 0x2b

    if-ne v2, v1, :cond_3

    .line 1447
    if-eqz p5, :cond_2

    const-string v1, "%20"

    :goto_1
    invoke-virtual {p0, v1}, Lokio/f;->a(Ljava/lang/String;)Lokio/f;

    .line 1440
    :cond_1
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 1447
    :cond_2
    const-string v1, "%2B"

    goto :goto_1

    .line 1448
    :cond_3
    const/16 v1, 0x20

    if-lt v2, v1, :cond_4

    const/16 v1, 0x7f

    if-ge v2, v1, :cond_4

    .line 1450
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    if-ne v2, v5, :cond_6

    if-nez p5, :cond_6

    .line 1453
    :cond_4
    if-nez v0, :cond_5

    .line 1454
    new-instance v0, Lokio/f;

    invoke-direct {v0}, Lokio/f;-><init>()V

    .line 1456
    :cond_5
    invoke-virtual {v0, v2}, Lokio/f;->a(I)Lokio/f;

    .line 1457
    :goto_3
    invoke-virtual {v0}, Lokio/f;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1458
    invoke-virtual {v0}, Lokio/f;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1459
    invoke-virtual {p0, v5}, Lokio/f;->b(I)Lokio/f;

    .line 1460
    sget-object v3, Lcom/squareup/okhttp/w;->a:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lokio/f;->b(I)Lokio/f;

    .line 1461
    sget-object v3, Lcom/squareup/okhttp/w;->a:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lokio/f;->b(I)Lokio/f;

    goto :goto_3

    .line 1465
    :cond_6
    invoke-virtual {p0, v2}, Lokio/f;->a(I)Lokio/f;

    goto :goto_2

    .line 1468
    :cond_7
    return-void
.end method

.method private static b(Ljava/lang/String;IILjava/lang/String;)I
    .locals 3

    .prologue
    .line 1342
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1343
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    move p2, v0

    .line 1345
    :cond_0
    return p2

    .line 1342
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 481
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 482
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 483
    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 485
    :cond_0
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 486
    if-eq v3, v4, :cond_1

    if-le v3, v1, :cond_2

    .line 487
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 494
    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 495
    :cond_3
    return-object v2
.end method

.method static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 462
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 463
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 464
    if-lez v2, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    if-eqz v1, :cond_1

    .line 467
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_1
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 471
    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/squareup/okhttp/w;
    .locals 2

    .prologue
    .line 585
    new-instance v0, Lcom/squareup/okhttp/x;

    invoke-direct {v0}, Lcom/squareup/okhttp/x;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/squareup/okhttp/x;->a(Lcom/squareup/okhttp/w;Ljava/lang/String;)Lcom/squareup/okhttp/w;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1349
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/net/URL;
    .locals 2

    .prologue
    .line 319
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/squareup/okhttp/w;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Ljava/net/URI;
    .locals 3

    .prologue
    .line 333
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/squareup/okhttp/w;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 335
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not valid as a java.net.URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/okhttp/w;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/squareup/okhttp/w;->b:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 601
    instance-of v0, p1, Lcom/squareup/okhttp/w;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/okhttp/w;

    iget-object v0, p1, Lcom/squareup/okhttp/w;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/w;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/squareup/okhttp/w;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/squareup/okhttp/w;->h:Ljava/lang/String;

    return-object v0
.end method
