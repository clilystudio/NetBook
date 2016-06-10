.class final Lu/aly/T;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/av;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lu/aly/T;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1
    check-cast p2, Lu/aly/av;

    .line 1423
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1426
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1427
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-eqz v2, :cond_7

    .line 1430
    iget-short v2, v0, Lu/aly/bK;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1497
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1432
    :pswitch_0
    iget-byte v2, v0, Lu/aly/bK;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 1433
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    .line 1434
    invoke-virtual {p2, v5}, Lu/aly/av;->a(Z)V

    goto :goto_0

    .line 1436
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1440
    :pswitch_1
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-ne v2, v6, :cond_2

    .line 1442
    invoke-virtual {p1}, Lu/aly/bN;->h()Lu/aly/bL;

    move-result-object v2

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bL;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/av;->b:Ljava/util/List;

    move v0, v1

    .line 1444
    :goto_1
    iget v3, v2, Lu/aly/bL;->b:I

    if-lt v0, v3, :cond_1

    .line 1453
    invoke-virtual {p2, v5}, Lu/aly/av;->b(Z)V

    goto :goto_0

    .line 1447
    :cond_1
    new-instance v3, Lu/aly/am;

    invoke-direct {v3}, Lu/aly/am;-><init>()V

    .line 1448
    invoke-virtual {v3, p1}, Lu/aly/am;->a(Lu/aly/bN;)V

    .line 1449
    iget-object v4, p2, Lu/aly/av;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1455
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1459
    :pswitch_2
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-ne v2, v6, :cond_4

    .line 1461
    invoke-virtual {p1}, Lu/aly/bN;->h()Lu/aly/bL;

    move-result-object v2

    .line 1462
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bL;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/av;->c:Ljava/util/List;

    move v0, v1

    .line 1463
    :goto_2
    iget v3, v2, Lu/aly/bL;->b:I

    if-lt v0, v3, :cond_3

    .line 1472
    invoke-virtual {p2, v5}, Lu/aly/av;->c(Z)V

    goto :goto_0

    .line 1466
    :cond_3
    new-instance v3, Lu/aly/ao;

    invoke-direct {v3}, Lu/aly/ao;-><init>()V

    .line 1467
    invoke-virtual {v3, p1}, Lu/aly/ao;->a(Lu/aly/bN;)V

    .line 1468
    iget-object v4, p2, Lu/aly/av;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1474
    :cond_4
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1478
    :pswitch_3
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-ne v2, v6, :cond_6

    .line 1480
    invoke-virtual {p1}, Lu/aly/bN;->h()Lu/aly/bL;

    move-result-object v2

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bL;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/av;->d:Ljava/util/List;

    move v0, v1

    .line 1482
    :goto_3
    iget v3, v2, Lu/aly/bL;->b:I

    if-lt v0, v3, :cond_5

    .line 1491
    invoke-virtual {p2, v5}, Lu/aly/av;->d(Z)V

    goto/16 :goto_0

    .line 1485
    :cond_5
    new-instance v3, Lu/aly/ao;

    invoke-direct {v3}, Lu/aly/ao;-><init>()V

    .line 1486
    invoke-virtual {v3, p1}, Lu/aly/ao;->a(Lu/aly/bN;)V

    .line 1487
    iget-object v4, p2, Lu/aly/av;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1482
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1493
    :cond_6
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1501
    :cond_7
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1504
    invoke-virtual {p2}, Lu/aly/av;->v()V

    .line 1
    return-void

    .line 1430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1
    check-cast p2, Lu/aly/av;

    .line 1508
    invoke-virtual {p2}, Lu/aly/av;->v()V

    .line 1510
    invoke-static {}, Lu/aly/av;->w()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1511
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1512
    invoke-static {}, Lu/aly/av;->x()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1513
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1516
    :cond_0
    iget-object v0, p2, Lu/aly/av;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1517
    invoke-virtual {p2}, Lu/aly/av;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    invoke-static {}, Lu/aly/av;->y()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1520
    new-instance v0, Lu/aly/bL;

    iget-object v1, p2, Lu/aly/av;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/bL;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bL;)V

    .line 1521
    iget-object v0, p2, Lu/aly/av;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1530
    :cond_1
    iget-object v0, p2, Lu/aly/av;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1531
    invoke-virtual {p2}, Lu/aly/av;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1532
    invoke-static {}, Lu/aly/av;->z()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1534
    new-instance v0, Lu/aly/bL;

    iget-object v1, p2, Lu/aly/av;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/bL;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bL;)V

    .line 1535
    iget-object v0, p2, Lu/aly/av;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1544
    :cond_2
    iget-object v0, p2, Lu/aly/av;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1545
    invoke-virtual {p2}, Lu/aly/av;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1546
    invoke-static {}, Lu/aly/av;->A()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1548
    new-instance v0, Lu/aly/bL;

    iget-object v1, p2, Lu/aly/av;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lu/aly/bL;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bL;)V

    .line 1549
    iget-object v0, p2, Lu/aly/av;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1558
    :cond_3
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1559
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void

    .line 1521
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/am;

    .line 1523
    invoke-virtual {v0, p1}, Lu/aly/am;->b(Lu/aly/bN;)V

    goto :goto_0

    .line 1535
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ao;

    .line 1537
    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/bN;)V

    goto :goto_1

    .line 1549
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ao;

    .line 1551
    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/bN;)V

    goto :goto_2
.end method
