.class abstract Lorg/litepal/b/c;
.super Lorg/litepal/a;
.source "SourceFile"


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lorg/litepal/b/d;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/litepal/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 597
    .line 6615
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 6616
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 6617
    const v1, 0x7fffffff

    .line 6618
    array-length v7, v5

    move v2, v3

    :goto_0
    if-lt v2, v7, :cond_1

    .line 6633
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 6634
    if-eqz v0, :cond_0

    .line 6635
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 598
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/litepal/b/c;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6618
    :cond_1
    aget-object v8, v5, v2

    .line 6619
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 6620
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 6621
    array-length v10, v9

    move v4, v3

    :goto_1
    if-lt v4, v10, :cond_3

    .line 6626
    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 6627
    invoke-virtual {v6, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6629
    :cond_2
    if-ge v0, v1, :cond_5

    .line 6618
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 6621
    :cond_3
    aget-object v11, v9, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6622
    if-ne v11, p1, :cond_4

    .line 6623
    add-int/lit16 v0, v0, 0x2710

    .line 6621
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method protected static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    const/4 v0, 0x0

    .line 482
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 482
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 483
    if-eqz v1, :cond_1

    .line 484
    const-string v0, " or "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_1
    const/4 v0, 0x1

    .line 487
    const-string v1, "id = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_0
.end method

.method protected static a(Lorg/litepal/b/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/arcsoft/hpay100/a/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 682
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 714
    if-eqz p3, :cond_2

    .line 715
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 735
    :cond_2
    return-void

    .line 682
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/Field;

    .line 7031
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/b/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 684
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/b/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "id"

    .line 685
    :goto_2
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 686
    if-eq v2, v12, :cond_0

    .line 687
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 688
    new-array v7, v11, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v10

    invoke-virtual {v6, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 689
    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 690
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/litepal/b/c;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 691
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 692
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 691
    invoke-static {p1, v3, v2, v4}, Lorg/litepal/b/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    .line 684
    :cond_4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 694
    :cond_5
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v6, :cond_6

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/lang/Boolean;

    if-ne v4, v6, :cond_8

    .line 695
    :cond_6
    const-string v4, "0"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 696
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v4, v2

    :goto_3
    move-object v2, p1

    .line 710
    check-cast v2, Lorg/litepal/b/d;

    invoke-virtual {p0, v2, v3, v4}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 697
    :cond_7
    const-string v4, "1"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 698
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v4, v2

    .line 700
    goto :goto_3

    :cond_8
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v4, v6, :cond_9

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/lang/Character;

    if-ne v4, v6, :cond_a

    .line 701
    :cond_9
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    move-object v4, v2

    .line 702
    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/util/Date;

    if-ne v4, v6, :cond_d

    .line 703
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 704
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_b

    .line 705
    const/4 v2, 0x0

    move-object v4, v2

    .line 706
    goto :goto_3

    .line 707
    :cond_b
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v4, v2

    goto :goto_3

    .line 715
    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/b/a/a;

    .line 717
    invoke-virtual {v2}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-static {v3}, Lorg/litepal/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 718
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 719
    if-eq v3, v12, :cond_1

    .line 720
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 723
    :try_start_0
    invoke-virtual {v2}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 722
    invoke-static {v3, v6, v7}, Lorg/litepal/b/d;->find(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/litepal/b/d;

    .line 725
    if-eqz v3, :cond_1

    .line 726
    move-object v0, p1

    check-cast v0, Lorg/litepal/b/d;

    move-object v4, v0

    .line 727
    invoke-virtual {v2}, Lorg/litepal/b/a/a;->d()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 726
    invoke-virtual {p0, v4, v2, v3}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 729
    :catch_0
    move-exception v2

    .line 730
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_d
    move-object v4, v2

    goto/16 :goto_3
.end method

.method protected static a(Lorg/litepal/b/d;J)V
    .locals 3

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 200
    const-string v0, "baseObjId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-class v2, Lorg/litepal/b/d;

    invoke-static {p0, v0, v1, v2}, Lorg/litepal/b/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected static a(Lorg/litepal/b/d;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/b/d;",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    return-void

    .line 326
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/a/a;

    .line 327
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 328
    new-instance v2, Lorg/litepal/b/i;

    invoke-direct {v2}, Lorg/litepal/b/i;-><init>()V

    invoke-virtual {v2, p0, v0}, Lorg/litepal/b/i;->e(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 330
    new-instance v2, Lorg/litepal/b/j;

    invoke-direct {v2}, Lorg/litepal/b/j;-><init>()V

    invoke-virtual {v2, p0, v0}, Lorg/litepal/b/j;->e(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 332
    new-instance v2, Lorg/litepal/b/h;

    invoke-direct {v2}, Lorg/litepal/b/h;-><init>()V

    invoke-virtual {v2, p0, v0}, Lorg/litepal/b/h;->e(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/lang/reflect/Field;)Z
    .locals 2

    .prologue
    .line 885
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 886
    const-string v1, "boolean"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    const/4 v0, 0x1

    .line 889
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 652
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 653
    array-length v0, v3

    new-array v4, v0, [Ljava/lang/Object;

    move v0, v1

    .line 654
    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_0

    .line 657
    return-object v4

    .line 655
    :cond_0
    aget-object v2, v3, v0

    .line 6831
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 6832
    const-string v6, "boolean"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "java.lang.Boolean"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6833
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 655
    :goto_1
    aput-object v2, v4, v0

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6835
    :cond_2
    const-string v6, "float"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "java.lang.Float"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6836
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    .line 6838
    :cond_4
    const-string v6, "double"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "java.lang.Double"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6839
    :cond_5
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_1

    .line 6841
    :cond_6
    const-string v6, "int"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "java.lang.Integer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6842
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 6844
    :cond_8
    const-string v6, "long"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "java.lang.Long"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 6845
    :cond_9
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 6847
    :cond_a
    const-string v6, "short"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "java.lang.Short"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 6848
    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 6850
    :cond_c
    const-string v6, "char"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "java.lang.Character"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 6851
    :cond_d
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto/16 :goto_1

    .line 6853
    :cond_e
    const-string v6, "java.lang.String"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 6854
    const-string v2, ""

    goto/16 :goto_1

    .line 6856
    :cond_f
    if-ne p1, v2, :cond_10

    .line 6857
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 6859
    :cond_10
    invoke-direct {p0, v2}, Lorg/litepal/b/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private a([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1077
    if-eqz p1, :cond_5

    .line 1078
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1079
    array-length v0, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v3, v0, [Ljava/lang/String;

    .line 1080
    array-length v0, p1

    invoke-static {p1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    .line 1081
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move-object p1, v3

    :cond_0
    move v0, v2

    .line 1089
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_3

    .line 1098
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1099
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    array-length v1, p1

    const-string v2, "id"

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move-object p1, v0

    .line 1103
    :cond_1
    :goto_2
    return-object p1

    .line 1083
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/a/a;

    .line 1084
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    array-length v4, p1

    add-int/2addr v4, v1

    invoke-static {v0}, Lorg/litepal/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1081
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1090
    :cond_3
    aget-object v1, p1, v0

    .line 1091
    invoke-static {v1}, Lorg/litepal/b/c;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1092
    const-string v2, "_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    const-string v1, "id"

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_2

    .line 1089
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1103
    :cond_5
    const/4 p1, 0x0

    goto :goto_2
.end method

.method private static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1045
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1051
    const-string v1, "getBoolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    const-string v0, "getInt"

    .line 1060
    :cond_0
    :goto_1
    return-object v0

    .line 1048
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1053
    :cond_2
    const-string v1, "getChar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    const-string v0, "getString"

    goto :goto_1

    .line 1055
    :cond_3
    const-string v1, "getDate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1056
    const-string v0, "getLong"

    goto :goto_1

    .line 1057
    :cond_4
    const-string v1, "getInteger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    const-string v0, "getInt"

    goto :goto_1
.end method

.method private b(Lorg/litepal/b/d;)V
    .locals 17

    .prologue
    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/litepal/b/c;->d:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1202
    :cond_0
    return-void

    .line 1149
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/litepal/b/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lorg/litepal/b/a/a;

    .line 1150
    const/4 v13, 0x0

    .line 1151
    invoke-virtual {v11}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v15

    .line 1152
    invoke-virtual {v11}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    move v12, v2

    .line 1154
    :goto_1
    :try_start_0
    invoke-static {v15}, Lorg/litepal/b/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 1155
    if-eqz v12, :cond_8

    .line 1156
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 1158
    invoke-static {v15}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1159
    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1162
    const-string v6, "select * from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1163
    const-string v7, " a inner join "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1164
    const-string v6, " b on a.id = b."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_id"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1165
    const-string v4, " where b."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1167
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lorg/litepal/b/d;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 1178
    :goto_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1180
    :cond_3
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/litepal/b/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/b/d;

    .line 1182
    const-string v3, "id"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1181
    invoke-static {v2, v6, v7}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;J)V

    .line 1183
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/litepal/b/c;->a(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;)V

    .line 1184
    invoke-virtual {v11}, Lorg/litepal/b/a/a;->f()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    if-eqz v12, :cond_9

    .line 1186
    :cond_4
    invoke-virtual {v11}, Lorg/litepal/b/a/a;->d()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1185
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1187
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_5
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v2

    if-nez v2, :cond_3

    .line 1197
    :cond_6
    if-eqz v4, :cond_2

    .line 1198
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1152
    :cond_7
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_1

    .line 1170
    :cond_8
    :try_start_2
    invoke-virtual {v11}, Lorg/litepal/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-static {v2}, Lorg/litepal/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1172
    invoke-static {v15}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1173
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/litepal/b/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "=?"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1175
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1176
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1173
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    goto/16 :goto_2

    .line 1188
    :cond_9
    :try_start_3
    invoke-virtual {v11}, Lorg/litepal/b/a/a;->f()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 1190
    invoke-virtual {v11}, Lorg/litepal/b/a/a;->d()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 1194
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 1195
    :goto_4
    :try_start_4
    new-instance v4, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1196
    :catchall_0
    move-exception v2

    move-object v13, v3

    .line 1197
    :goto_5
    if-eqz v13, :cond_a

    .line 1198
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1200
    :cond_a
    throw v2

    .line 1196
    :catchall_1
    move-exception v2

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v13, v4

    goto :goto_5

    .line 1194
    :catch_1
    move-exception v2

    move-object v3, v13

    goto :goto_4
.end method

.method private static b(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Z
    .locals 1

    .prologue
    .line 556
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 167
    invoke-static {p3}, Lcom/arcsoft/hpay100/a/a;->c([Ljava/lang/String;)V

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/litepal/b/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p3}, Lorg/litepal/b/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {p0, p3}, Lorg/litepal/b/c;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 171
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 173
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 175
    invoke-static {p4}, Lorg/litepal/b/c;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 181
    :cond_0
    if-eqz v1, :cond_1

    .line 182
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_1
    return-object v8

    .line 178
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 179
    :goto_0
    :try_start_2
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    :goto_1
    if-eqz v1, :cond_2

    .line 182
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_2
    throw v0

    .line 180
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1

    .line 178
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-static {p1, p2}, Lorg/litepal/b/c;->b(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4985
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4986
    invoke-static {p2}, Lorg/litepal/b/c;->a(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4987
    const-string v1, "^is[A-Z]{1}.*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4988
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4990
    :cond_0
    const-string v1, "is"

    .line 4994
    :goto_0
    const-string v3, "^[a-z]{1}[A-Z]{1}.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v0, v2, v1, v2}, Lorg/litepal/b/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    :goto_2
    return-object v0

    .line 4992
    :cond_1
    const-string v1, "get"

    goto :goto_0

    .line 4997
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 286
    goto :goto_2
.end method

.method protected final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 428
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 429
    aget-object v0, p1, v1

    .line 431
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 119
    const/4 v11, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/b/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 1582
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    const/4 v2, 0x0

    move-object/from16 v0, p9

    invoke-direct {p0, v2, v0}, Lorg/litepal/b/c;->a([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v4

    .line 124
    iget-object v2, p0, Lorg/litepal/b/c;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 124
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 126
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lorg/litepal/b/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 129
    move-object v0, v3

    check-cast v0, Lorg/litepal/b/d;

    move-object v2, v0

    .line 130
    const-string v5, "id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 129
    invoke-static {v2, v6, v7}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;J)V

    .line 131
    move-object/from16 v0, p9

    invoke-direct {p0, v3, v13, v0, v4}, Lorg/litepal/b/c;->a(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;)V

    .line 132
    if-eqz p9, :cond_1

    .line 133
    move-object v0, v3

    check-cast v0, Lorg/litepal/b/d;

    move-object v2, v0

    invoke-direct {p0, v2}, Lorg/litepal/b/c;->b(Lorg/litepal/b/d;)V

    .line 135
    :cond_1
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v2

    if-nez v2, :cond_0

    .line 143
    :cond_2
    if-eqz v4, :cond_3

    .line 144
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_3
    return-object v12

    .line 139
    :catch_0
    move-exception v2

    move-object v3, v11

    .line 140
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    new-instance v4, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :catchall_0
    move-exception v2

    move-object v4, v3

    .line 143
    :goto_1
    if-eqz v4, :cond_4

    .line 144
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_4
    throw v2

    .line 142
    :catchall_1
    move-exception v2

    move-object v4, v11

    goto :goto_1

    :catchall_2
    move-exception v2

    goto :goto_1

    .line 139
    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    if-eqz p2, :cond_7

    .line 7113
    invoke-virtual {p0, p1}, Lorg/litepal/b/c;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 7114
    iget-object v1, p0, Lorg/litepal/b/c;->c:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/litepal/b/c;->c:Ljava/util/List;

    .line 7119
    :goto_0
    iget-object v1, p0, Lorg/litepal/b/c;->d:Ljava/util/List;

    if-nez v1, :cond_2

    .line 7120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/litepal/b/c;->d:Ljava/util/List;

    .line 7124
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 749
    iget-object v0, p0, Lorg/litepal/b/c;->c:Ljava/util/List;

    .line 751
    :goto_3
    return-object v0

    .line 7117
    :cond_1
    iget-object v1, p0, Lorg/litepal/b/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 7122
    :cond_2
    iget-object v1, p0, Lorg/litepal/b/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 7124
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/a/a;

    .line 7125
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 7126
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 7127
    :cond_4
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7128
    iget-object v2, p0, Lorg/litepal/b/c;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7130
    :cond_5
    iget-object v2, p0, Lorg/litepal/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7132
    :cond_6
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 7133
    iget-object v2, p0, Lorg/litepal/b/c;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 751
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected final a(Lorg/litepal/b/d;)Lorg/litepal/b/d;
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lorg/litepal/b/c;->b:Lorg/litepal/b/d;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/litepal/b/c;->b:Lorg/litepal/b/d;

    .line 404
    :goto_0
    return-object v0

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 401
    :try_start_0
    invoke-virtual {p1}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 402
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/d;

    iput-object v0, p0, Lorg/litepal/b/c;->b:Lorg/litepal/b/d;

    .line 404
    iget-object v0, p0, Lorg/litepal/b/c;->b:Lorg/litepal/b/d;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    :goto_1
    new-instance v1, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can not find a class named "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_2
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " needs a default constructor."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :catch_2
    move-exception v0

    .line 411
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :catch_3
    move-exception v0

    goto :goto_2

    .line 406
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method protected final a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 252
    invoke-virtual {p0, p1, p2}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 253
    const-string v1, "java.util.Date"

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 254
    check-cast v0, Ljava/util/Date;

    .line 255
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 257
    :cond_0
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    .line 3870
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3871
    const-string v5, "char"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Character"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 3770
    :goto_0
    if-eqz v1, :cond_2

    .line 3771
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 3772
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    .line 259
    :goto_1
    const-string v1, "put"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p3, v1, v4, v2, v0}, Lorg/litepal/b/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 260
    return-void

    :cond_1
    move v1, v3

    .line 3871
    goto :goto_0

    .line 3774
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3775
    new-array v1, v6, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 4796
    if-eqz v0, :cond_9

    .line 4797
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4798
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4799
    const-string v2, "int"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4800
    const-class v0, Ljava/lang/Integer;

    .line 3775
    :goto_2
    aput-object v0, v1, v3

    move-object v0, v1

    .line 3776
    goto :goto_1

    .line 4801
    :cond_3
    const-string v2, "short"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4802
    const-class v0, Ljava/lang/Short;

    goto :goto_2

    .line 4803
    :cond_4
    const-string v2, "long"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4804
    const-class v0, Ljava/lang/Long;

    goto :goto_2

    .line 4805
    :cond_5
    const-string v2, "float"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4806
    const-class v0, Ljava/lang/Float;

    goto :goto_2

    .line 4807
    :cond_6
    const-string v2, "double"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4808
    const-class v0, Ljava/lang/Double;

    goto :goto_2

    .line 4809
    :cond_7
    const-string v2, "boolean"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4810
    const-class v0, Ljava/lang/Boolean;

    goto :goto_2

    .line 4811
    :cond_8
    const-string v2, "char"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4812
    const-class v0, Ljava/lang/Character;

    goto :goto_2

    .line 4816
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 3776
    :cond_a
    const-string v0, "java.util.Date"

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3777
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Long;

    aput-object v1, v0, v3

    goto/16 :goto_1

    .line 3779
    :cond_b
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    goto/16 :goto_1
.end method

.method protected final a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 309
    invoke-static {p1, p2}, Lorg/litepal/b/c;->b(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5010
    const-string v0, "set"

    .line 5011
    invoke-static {p2}, Lorg/litepal/b/c;->a(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^is[A-Z]{1}.*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v5

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    .line 311
    invoke-static {p1, v0, v1, v2, v3}, Lorg/litepal/b/b;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 314
    :cond_0
    return-void

    .line 5013
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[a-z]{1}[A-Z]{1}.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5016
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Lorg/litepal/b/d;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/b/d;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    return-void

    .line 223
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 224
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/b/c;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1930
    const-class v1, Lorg/litepal/b/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1913
    if-eqz v1, :cond_4

    .line 1965
    invoke-virtual {p0, p1}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;)Lorg/litepal/b/d;

    move-result-object v1

    .line 1966
    invoke-virtual {p0, p1, v0}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 1967
    invoke-virtual {p0, v1, v0}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 1968
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 1969
    invoke-virtual {p0, p1, v0}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1970
    invoke-virtual {p0, v1, v0}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1971
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1914
    :goto_1
    if-nez v1, :cond_0

    .line 1915
    invoke-virtual {p0, p1, v0, p3}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1973
    :cond_2
    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2940
    :cond_4
    const-class v1, Lorg/litepal/b/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1917
    if-eqz v1, :cond_0

    .line 1918
    invoke-virtual {p0, p1, v0, p3}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method protected final varargs b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 445
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 448
    if-eqz p1, :cond_0

    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 449
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 450
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 453
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Lorg/litepal/b/d;
    .locals 1

    .prologue
    .line 358
    .line 359
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->d()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 358
    invoke-virtual {p0, p1, v0}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/d;

    return-object v0
.end method

.method protected final d(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/b/d;",
            "Lorg/litepal/b/a/a;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    .line 383
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->d()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 382
    invoke-virtual {p0, p1, v0}, Lorg/litepal/b/c;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
