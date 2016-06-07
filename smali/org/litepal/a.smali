.class public abstract Lorg/litepal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Lorg/litepal/d/b/e;

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/litepal/d/b/e;

    const/4 v1, 0x0

    new-instance v2, Lorg/litepal/d/b/d;

    invoke-direct {v2}, Lorg/litepal/d/b/d;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/litepal/d/b/f;

    invoke-direct {v2}, Lorg/litepal/d/b/f;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/litepal/d/b/a;

    invoke-direct {v2}, Lorg/litepal/d/b/a;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 70
    new-instance v2, Lorg/litepal/d/b/c;

    invoke-direct {v2}, Lorg/litepal/d/b/c;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/litepal/d/b/b;

    invoke-direct {v2}, Lorg/litepal/d/b/b;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/litepal/a;->a:[Lorg/litepal/d/b/e;

    .line 52
    return-void
.end method

.method private static a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 576
    if-eqz v0, :cond_0

    .line 577
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    .line 578
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 579
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 580
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 17

    .prologue
    .line 310
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 311
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 312
    array-length v14, v13

    const/4 v3, 0x0

    move v11, v3

    :goto_0
    if-lt v11, v14, :cond_0

    .line 318
    return-void

    .line 312
    :cond_0
    aget-object v7, v13, v11

    .line 1333
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 313
    :goto_1
    if-eqz v3, :cond_2

    .line 1363
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    .line 1366
    invoke-static {}, Lorg/litepal/c/a;->a()Lorg/litepal/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/litepal/c/a;->d()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1367
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1368
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v16

    .line 1371
    const/4 v4, 0x0

    .line 1374
    const/4 v3, 0x0

    move v12, v3

    move v3, v4

    :goto_2
    move-object/from16 v0, v16

    array-length v4, v0

    if-lt v12, v4, :cond_4

    .line 1450
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/litepal/a;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1451
    invoke-static {v7}, Lorg/litepal/a;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    .line 1454
    invoke-static {}, Lorg/litepal/c/a;->a()Lorg/litepal/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lorg/litepal/c/a;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1455
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1456
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 1459
    const/4 v4, 0x0

    .line 1460
    const/4 v3, 0x0

    move v12, v3

    move v3, v4

    :goto_3
    array-length v4, v15

    if-lt v12, v4, :cond_d

    .line 312
    :cond_2
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_0

    .line 1333
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1375
    :cond_4
    aget-object v8, v16, v12

    .line 1376
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1377
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 1381
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1382
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    .line 1383
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1384
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 1383
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1389
    :cond_5
    :goto_4
    const/4 v3, 0x1

    move v10, v3

    .line 1409
    :goto_5
    move-object/from16 v0, v16

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v12, v3, :cond_c

    if-nez v10, :cond_c

    .line 1410
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 1411
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1412
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 1411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v3, v10

    .line 1374
    :cond_6
    :goto_6
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto/16 :goto_2

    .line 1385
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 1386
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1387
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1386
    invoke-direct/range {v3 .. v9}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 318
    :catch_0
    move-exception v3

    .line 319
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 320
    new-instance v3, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not find a class named "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1394
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/litepal/a;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1395
    invoke-static {v8}, Lorg/litepal/a;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 1396
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1397
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_a

    .line 1398
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1399
    const/4 v4, 0x2

    .line 1398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1404
    :cond_9
    :goto_7
    const/4 v3, 0x1

    move v10, v3

    goto :goto_5

    .line 1400
    :cond_a
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 1401
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1402
    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p1

    .line 1401
    invoke-direct/range {v3 .. v9}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto :goto_7

    .line 1413
    :cond_b
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_c

    .line 1414
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1415
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1414
    invoke-direct/range {v3 .. v9}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    :cond_c
    move v3, v10

    goto/16 :goto_6

    .line 1461
    :cond_d
    aget-object v8, v15, v12

    .line 1463
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1464
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 1468
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1469
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_10

    .line 1471
    const/4 v3, 0x2

    .line 1470
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v5, v3}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1476
    :cond_e
    :goto_8
    const/4 v3, 0x1

    move v10, v3

    .line 1496
    :goto_9
    array-length v3, v15

    add-int/lit8 v3, v3, -0x1

    if-ne v12, v3, :cond_15

    if-nez v10, :cond_15

    .line 1497
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_14

    .line 1499
    const/4 v3, 0x2

    .line 1498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v5, v3}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move v3, v10

    .line 1460
    :cond_f
    :goto_a
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto/16 :goto_3

    .line 1472
    :cond_10
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_e

    .line 1474
    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v5

    .line 1473
    invoke-direct/range {v3 .. v9}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto :goto_8

    .line 1481
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/litepal/a;->a(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1482
    invoke-static {v8}, Lorg/litepal/a;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 1483
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1484
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_13

    .line 1485
    const/4 v3, 0x0

    .line 1486
    const/4 v4, 0x3

    .line 1485
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v3, v4}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1491
    :cond_12
    :goto_b
    const/4 v3, 0x1

    move v10, v3

    goto :goto_9

    .line 1487
    :cond_13
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_12

    .line 1488
    const/4 v6, 0x0

    .line 1489
    const/4 v9, 0x3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 1488
    invoke-direct/range {v3 .. v9}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto :goto_b

    .line 1500
    :cond_14
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_15

    .line 1502
    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v6, v5

    .line 1501
    invoke-direct/range {v3 .. v9}, Lorg/litepal/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_15
    move v3, v10

    goto :goto_a

    :cond_16
    move v10, v3

    goto :goto_9

    :cond_17
    move v10, v3

    goto/16 :goto_5
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 526
    new-instance v0, Lorg/litepal/d/a/a;

    invoke-direct {v0}, Lorg/litepal/d/a/a;-><init>()V

    .line 527
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/d/a/a;->a(Ljava/lang/String;)V

    .line 528
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/d/a/a;->b(Ljava/lang/String;)V

    .line 529
    invoke-static {p3}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/d/a/a;->c(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p4}, Lorg/litepal/d/a/a;->a(I)V

    .line 531
    iget-object v1, p0, Lorg/litepal/a;->b:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V
    .locals 2

    .prologue
    .line 556
    new-instance v0, Lorg/litepal/b/a/a;

    invoke-direct {v0}, Lorg/litepal/b/a/a;-><init>()V

    .line 557
    invoke-virtual {v0, p1}, Lorg/litepal/b/a/a;->a(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0, p2}, Lorg/litepal/b/a/a;->b(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0, p3}, Lorg/litepal/b/a/a;->c(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, p4}, Lorg/litepal/b/a/a;->a(Ljava/lang/reflect/Field;)V

    .line 561
    invoke-virtual {v0, p5}, Lorg/litepal/b/a/a;->b(Ljava/lang/reflect/Field;)V

    .line 562
    invoke-virtual {v0, p6}, Lorg/litepal/b/a/a;->a(I)V

    .line 563
    iget-object v1, p0, Lorg/litepal/a;->c:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 222
    .line 1233
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 222
    if-nez v0, :cond_0

    .line 1244
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 222
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static c(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 179
    array-length v5, v4

    move v1, v0

    :goto_0
    if-lt v1, v5, :cond_1

    .line 192
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataSupport"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 196
    array-length v3, v1

    :goto_1
    if-lt v0, v3, :cond_3

    .line 211
    :cond_0
    return-object v2

    .line 175
    :catch_0
    move-exception v0

    new-instance v0, Lorg/litepal/exceptions/DatabaseGenerateException;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not find a class named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    aget-object v6, v4, v1

    .line 181
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 182
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 184
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 185
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-static {v7}, Lcom/arcsoft/hpay100/a/a;->U(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_3
    aget-object v4, v1, v0

    .line 198
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 199
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 200
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 202
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 203
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-static {v5}, Lcom/arcsoft/hpay100/a/a;->U(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 206
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 256
    const-string v0, "_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/d/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/litepal/a;->b:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/litepal/a;->b:Ljava/util/Collection;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/litepal/a;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/litepal/a;->b:Ljava/util/Collection;

    return-object v0

    .line 134
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/litepal/a;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Lorg/litepal/d/a/b;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v2, Lorg/litepal/d/a/b;

    invoke-direct {v2}, Lorg/litepal/d/a/b;-><init>()V

    .line 99
    invoke-virtual {v2, v0}, Lorg/litepal/d/a/b;->a(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lorg/litepal/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    return-object v2

    .line 102
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 103
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 108
    iget-object v6, p0, Lorg/litepal/a;->a:[Lorg/litepal/d/b/e;

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 109
    invoke-virtual {v8, v4, v5}, Lorg/litepal/d/b/e;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 110
    if-eqz v8, :cond_2

    .line 111
    aget-object v0, v8, v1

    .line 112
    const/4 v4, 0x1

    aget-object v4, v8, v4

    .line 113
    invoke-virtual {v2, v0, v4}, Lorg/litepal/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected final b(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/litepal/a;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/litepal/a;->c:Ljava/util/Collection;

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/litepal/a;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 152
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/litepal/a;->a(Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lorg/litepal/a;->c:Ljava/util/Collection;

    return-object v0
.end method
