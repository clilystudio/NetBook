.class Lorg/litepal/b/l;
.super Lorg/litepal/b/c;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/litepal/b/c;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/litepal/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    return-void
.end method

.method private a(Landroid/content/ContentValues;Lorg/litepal/b/d;)V
    .locals 4

    .prologue
    .line 379
    invoke-virtual {p2}, Lorg/litepal/b/d;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v1

    .line 380
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    return-void

    .line 380
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    invoke-static {v0}, Lorg/litepal/b/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 381
    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;J)V
    .locals 7

    .prologue
    .line 329
    :try_start_0
    invoke-static {p1, p3, p4}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;J)V

    .line 330
    if-eqz p2, :cond_1

    .line 331
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 2482
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 2358
    :goto_0
    if-eqz v0, :cond_1

    .line 2360
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-ne v2, v0, :cond_3

    .line 2361
    :cond_0
    long-to-int v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2367
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lorg/litepal/b/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 336
    :cond_1
    return-void

    .line 2482
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2362
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_4

    const-class v0, Ljava/lang/Long;

    if-ne v2, v0, :cond_5

    .line 2363
    :cond_4
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 2365
    :cond_5
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    const-string v1, "id type is not supported. Only int or long is acceptable for id"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lorg/litepal/b/d;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/b/d;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1174
    invoke-virtual {p0, p1, p2, v0}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 1175
    invoke-direct {p0, v0, p1}, Lorg/litepal/b/l;->a(Landroid/content/ContentValues;Lorg/litepal/b/d;)V

    .line 1189
    iget-object v1, p0, Lorg/litepal/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1307
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1308
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    const-string v1, "Save current model failed."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1204
    :cond_0
    invoke-direct {p0, p2}, Lorg/litepal/b/l;->b(Ljava/util/List;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;J)V

    .line 1205
    invoke-direct {p0, p1}, Lorg/litepal/b/l;->c(Lorg/litepal/b/d;)V

    .line 1206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Z)V

    .line 152
    return-void
.end method

.method private a(Lorg/litepal/b/d;Z)V
    .locals 12

    .prologue
    .line 434
    invoke-virtual {p1}, Lorg/litepal/b/d;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v2

    .line 435
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 436
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    return-void

    .line 436
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 437
    invoke-static {p1, v0}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 438
    if-eqz p2, :cond_2

    .line 439
    iget-object v1, p0, Lorg/litepal/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3461
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3462
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/litepal/b/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3463
    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3464
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 440
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 439
    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 443
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 444
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 445
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/b/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    invoke-static {v0}, Lorg/litepal/b/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    iget-object v1, p0, Lorg/litepal/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 292
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 293
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/b/l;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private b(Lorg/litepal/b/d;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/b/d;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 223
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 224
    invoke-direct {p0, p1, p2, v0}, Lorg/litepal/b/l;->b(Lorg/litepal/b/d;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 2268
    iget-object v1, p0, Lorg/litepal/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id = ?"

    .line 2269
    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 2268
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2279
    invoke-direct {p0, p1}, Lorg/litepal/b/l;->c(Lorg/litepal/b/d;)V

    .line 2280
    invoke-direct {p0, p1, v8}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Z)V

    .line 2281
    invoke-direct {p0, p1}, Lorg/litepal/b/l;->d(Lorg/litepal/b/d;)V

    .line 227
    return-void
.end method

.method private b(Lorg/litepal/b/d;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 2
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
    .line 250
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 251
    invoke-direct {p0, p3, p1}, Lorg/litepal/b/l;->a(Landroid/content/ContentValues;Lorg/litepal/b/d;)V

    .line 252
    invoke-virtual {p1}, Lorg/litepal/b/d;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    return-void

    .line 252
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Lorg/litepal/b/d;)V
    .locals 8

    .prologue
    .line 393
    invoke-virtual {p1}, Lorg/litepal/b/d;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v2

    .line 394
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 395
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    return-void

    .line 395
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 396
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 397
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/b/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 400
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 401
    iget-object v5, p0, Lorg/litepal/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1}, Lorg/litepal/b/l;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v3, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Lorg/litepal/b/d;)V
    .locals 6

    .prologue
    .line 414
    invoke-virtual {p1}, Lorg/litepal/b/d;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    return-void

    .line 415
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/b/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 418
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    iget-object v4, p0, Lorg/litepal/b/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method final b(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/litepal/b/d;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    new-array v0, v1, [Lorg/litepal/b/d;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/litepal/b/d;

    .line 108
    aget-object v2, v0, v1

    .line 109
    invoke-virtual {v2}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Lorg/litepal/b/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 111
    invoke-virtual {p0, v2}, Lorg/litepal/b/l;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 112
    array-length v4, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 124
    :cond_0
    return-void

    .line 112
    :cond_1
    aget-object v5, v0, v1

    .line 113
    invoke-virtual {v5}, Lorg/litepal/b/d;->isSaved()Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    invoke-static {v5, v2}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/Collection;)V

    .line 115
    invoke-direct {p0, v5, v3}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/List;)V

    .line 116
    invoke-static {v5, v2}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/Collection;)V

    .line 121
    :goto_1
    invoke-virtual {v5}, Lorg/litepal/b/d;->clearAssociatedData()V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {v5, v2}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/Collection;)V

    .line 119
    invoke-direct {p0, v5, v3}, Lorg/litepal/b/l;->b(Lorg/litepal/b/d;Ljava/util/List;)V

    goto :goto_1
.end method

.method final b(Lorg/litepal/b/d;)V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lorg/litepal/b/l;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-virtual {p0, v0}, Lorg/litepal/b/l;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lorg/litepal/b/d;->isSaved()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-static {p1, v0}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/Collection;)V

    .line 79
    invoke-direct {p0, p1, v1}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/List;)V

    .line 80
    invoke-static {p1, v0}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/Collection;)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {p1, v0}, Lorg/litepal/b/l;->a(Lorg/litepal/b/d;Ljava/util/Collection;)V

    .line 83
    invoke-direct {p0, p1, v1}, Lorg/litepal/b/l;->b(Lorg/litepal/b/d;Ljava/util/List;)V

    goto :goto_0
.end method
