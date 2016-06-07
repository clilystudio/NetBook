.class final Lu/aly/H;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/as;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lu/aly/H;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1
    check-cast p2, Lu/aly/as;

    .line 1363
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1366
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1367
    iget-byte v2, v0, Lu/aly/bK;->b:B

    if-eqz v2, :cond_5

    .line 1370
    iget-short v2, v0, Lu/aly/bK;->c:S

    packed-switch v2, :pswitch_data_0

    .line 1420
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1372
    :pswitch_0
    iget-byte v2, v0, Lu/aly/bK;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 1374
    invoke-virtual {p1}, Lu/aly/bN;->g()Lu/aly/bM;

    move-result-object v2

    .line 1375
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/bM;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/as;->a:Ljava/util/Map;

    move v0, v1

    .line 1376
    :goto_1
    iget v3, v2, Lu/aly/bM;->c:I

    if-lt v0, v3, :cond_0

    .line 1387
    invoke-virtual {p2, v6}, Lu/aly/as;->a(Z)V

    goto :goto_0

    .line 1380
    :cond_0
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v3

    .line 1381
    new-instance v4, Lu/aly/ar;

    invoke-direct {v4}, Lu/aly/ar;-><init>()V

    .line 1382
    invoke-virtual {v4, p1}, Lu/aly/ar;->a(Lu/aly/bN;)V

    .line 1383
    iget-object v5, p2, Lu/aly/as;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1389
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1393
    :pswitch_1
    iget-byte v2, v0, Lu/aly/bK;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    .line 1395
    invoke-virtual {p1}, Lu/aly/bN;->h()Lu/aly/bL;

    move-result-object v2

    .line 1396
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/bL;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/as;->b:Ljava/util/List;

    move v0, v1

    .line 1397
    :goto_2
    iget v3, v2, Lu/aly/bL;->b:I

    if-lt v0, v3, :cond_2

    .line 1406
    invoke-virtual {p2, v6}, Lu/aly/as;->b(Z)V

    goto :goto_0

    .line 1400
    :cond_2
    new-instance v3, Lu/aly/aq;

    invoke-direct {v3}, Lu/aly/aq;-><init>()V

    .line 1401
    invoke-virtual {v3, p1}, Lu/aly/aq;->a(Lu/aly/bN;)V

    .line 1402
    iget-object v4, p2, Lu/aly/as;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1397
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1408
    :cond_3
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1412
    :pswitch_2
    iget-byte v2, v0, Lu/aly/bK;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 1413
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/as;->c:Ljava/lang/String;

    .line 1414
    invoke-virtual {p2, v6}, Lu/aly/as;->c(Z)V

    goto/16 :goto_0

    .line 1416
    :cond_4
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto/16 :goto_0

    .line 1424
    :cond_5
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1427
    invoke-virtual {p2}, Lu/aly/as;->p()V

    .line 1
    return-void

    .line 1370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 1
    check-cast p2, Lu/aly/as;

    .line 1431
    invoke-virtual {p2}, Lu/aly/as;->p()V

    .line 1433
    invoke-static {}, Lu/aly/as;->q()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1434
    iget-object v0, p2, Lu/aly/as;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1435
    invoke-static {}, Lu/aly/as;->r()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1437
    new-instance v0, Lu/aly/bM;

    const/16 v1, 0xb

    iget-object v2, p2, Lu/aly/as;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lu/aly/bM;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bM;)V

    .line 1438
    iget-object v0, p2, Lu/aly/as;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1447
    :cond_0
    iget-object v0, p2, Lu/aly/as;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1448
    invoke-virtual {p2}, Lu/aly/as;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1449
    invoke-static {}, Lu/aly/as;->s()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1451
    new-instance v0, Lu/aly/bL;

    iget-object v1, p2, Lu/aly/as;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lu/aly/bL;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bL;)V

    .line 1452
    iget-object v0, p2, Lu/aly/as;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1461
    :cond_1
    iget-object v0, p2, Lu/aly/as;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1462
    invoke-virtual {p2}, Lu/aly/as;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1463
    invoke-static {}, Lu/aly/as;->t()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1464
    iget-object v0, p2, Lu/aly/as;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1468
    :cond_2
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1469
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void

    .line 1438
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1441
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->b(Lu/aly/bN;)V

    goto :goto_0

    .line 1452
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aq;

    .line 1454
    invoke-virtual {v0, p1}, Lu/aly/aq;->b(Lu/aly/bN;)V

    goto :goto_1
.end method
