.class public Lorg/litepal/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private associatedModelsMapForJoinTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private associatedModelsMapWithFK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private associatedModelsMapWithoutFK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private baseObjId:J

.field private fieldsToSetToDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listToClearAssociatedFK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listToClearSelfFK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    return-void
.end method

.method public static declared-synchronized average(Ljava/lang/Class;Ljava/lang/String;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    .prologue
    .line 287
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/litepal/b/d;->average(Ljava/lang/String;Ljava/lang/String;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized average(Ljava/lang/String;Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 311
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V

    .line 312
    invoke-virtual {v0, p0, p1}, Lorg/litepal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private clearFKNameList()V
    .locals 1

    .prologue
    .line 1433
    invoke-virtual {p0}, Lorg/litepal/b/d;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1434
    invoke-virtual {p0}, Lorg/litepal/b/d;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1435
    return-void
.end method

.method private clearIdOfModelForJoinTable()V
    .locals 3

    .prologue
    .line 1422
    invoke-virtual {p0}, Lorg/litepal/b/d;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    .line 1423
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1422
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1426
    iget-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1427
    return-void

    .line 1423
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1424
    iget-object v2, p0, Lorg/litepal/b/d;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method private clearIdOfModelWithFK()V
    .locals 3

    .prologue
    .line 1404
    invoke-virtual {p0}, Lorg/litepal/b/d;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    .line 1405
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1404
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1409
    return-void

    .line 1405
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1406
    iget-object v2, p0, Lorg/litepal/b/d;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method private clearIdOfModelWithoutFK()V
    .locals 1

    .prologue
    .line 1415
    invoke-virtual {p0}, Lorg/litepal/b/d;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1416
    return-void
.end method

.method public static declared-synchronized count(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 241
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/b/d;->count(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized count(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 263
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V

    .line 264
    invoke-virtual {v0, p0}, Lorg/litepal/b/b;->a(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized delete(Ljava/lang/Class;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)I"
        }
    .end annotation

    .prologue
    .line 7094
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 708
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 710
    :try_start_1
    new-instance v0, Lorg/litepal/b/g;

    invoke-direct {v0, v2}, Lorg/litepal/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 711
    invoke-virtual {v0, p0, p1, p2}, Lorg/litepal/b/g;->a(Ljava/lang/Class;J)I

    move-result v0

    .line 712
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 713
    monitor-exit v1

    return v0

    .line 714
    :catchall_0
    move-exception v0

    .line 715
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 716
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7094
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 745
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/g;

    .line 8094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 745
    invoke-direct {v0, v2}, Lorg/litepal/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 746
    invoke-virtual {v0, p0, p1}, Lorg/litepal/b/g;->a(Ljava/lang/Class;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized deleteAll(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 778
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/g;

    .line 9094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 778
    invoke-direct {v0, v2}, Lorg/litepal/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 779
    invoke-virtual {v0, p0, p1}, Lorg/litepal/b/g;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized find(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    .prologue
    .line 504
    const-class v0, Lorg/litepal/b/d;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lorg/litepal/b/d;->find(Ljava/lang/Class;JZ)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized find(Ljava/lang/Class;JZ)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;JZ)TT;"
        }
    .end annotation

    .prologue
    .line 522
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 2094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 522
    invoke-direct {v0, v2}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 523
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/litepal/b/k;->a(Ljava/lang/Class;JZ)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized findAll(Ljava/lang/Class;Z[J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z[J)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 649
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 5094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 649
    invoke-direct {v0, v2}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 650
    invoke-virtual {v0, p0, p1, p2}, Lorg/litepal/b/k;->a(Ljava/lang/Class;Z[J)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized findAll(Ljava/lang/Class;[J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[J)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 630
    const-class v0, Lorg/litepal/b/d;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1}, Lorg/litepal/b/d;->findAll(Ljava/lang/Class;Z[J)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs declared-synchronized findBySQL([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 671
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->c([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    if-nez p0, :cond_1

    .line 685
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 675
    :cond_1
    :try_start_1
    array-length v2, p0

    if-lez v2, :cond_0

    .line 679
    array-length v2, p0

    if-ne v2, v3, :cond_2

    .line 6094
    :goto_1
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 685
    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 682
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 683
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 542
    const-class v0, Lorg/litepal/b/d;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lorg/litepal/b/d;->findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized findFirst(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 558
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 3094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 558
    invoke-direct {v0, v2}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 559
    invoke-virtual {v0, p0, p1}, Lorg/litepal/b/k;->a(Ljava/lang/Class;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized findLast(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 578
    const-class v0, Lorg/litepal/b/d;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lorg/litepal/b/d;->findLast(Ljava/lang/Class;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized findLast(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .prologue
    .line 594
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/k;

    .line 4094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 594
    invoke-direct {v0, v2}, Lorg/litepal/b/k;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 595
    invoke-virtual {v0, p0, p1}, Lorg/litepal/b/k;->b(Ljava/lang/Class;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized limit(I)Lorg/litepal/b/b;
    .locals 2

    .prologue
    .line 197
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V

    .line 198
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v1

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized max(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 339
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/litepal/b/d;->max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized max(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 367
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V

    .line 368
    invoke-virtual {v0, p0, p1, p2}, Lorg/litepal/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized min(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 395
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/litepal/b/d;->min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized min(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 423
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V

    .line 424
    invoke-virtual {v0, p0, p1, p2}, Lorg/litepal/b/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized offset(I)Lorg/litepal/b/b;
    .locals 2

    .prologue
    .line 217
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V

    .line 218
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit v1

    return-object v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized order(Ljava/lang/String;)Lorg/litepal/b/b;
    .locals 2

    .prologue
    .line 177
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v1

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveAll(Ljava/util/Collection;)V
    .locals 4
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
    .line 12094
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 908
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 910
    :try_start_1
    new-instance v0, Lorg/litepal/b/l;

    invoke-direct {v0, v2}, Lorg/litepal/b/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 911
    invoke-virtual {v0, p0}, Lorg/litepal/b/l;->b(Ljava/util/Collection;)V

    .line 912
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 916
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 918
    monitor-exit v1

    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    :try_start_3
    new-instance v3, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 915
    :catchall_0
    move-exception v0

    .line 916
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 917
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 12094
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized select([Ljava/lang/String;)Lorg/litepal/b/b;
    .locals 2

    .prologue
    .line 134
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized sum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 451
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/litepal/b/d;->sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized sum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 479
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V

    .line 480
    invoke-virtual {v0, p0, p1, p2}, Lorg/litepal/b/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized update(Ljava/lang/Class;Landroid/content/ContentValues;J)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/ContentValues;",
            "J)I"
        }
    .end annotation

    .prologue
    .line 805
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/m;

    .line 10094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 805
    invoke-direct {v0, v2}, Lorg/litepal/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 806
    invoke-virtual {v0, p0, p2, p3, p1}, Lorg/litepal/b/m;->a(Ljava/lang/Class;JLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 840
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/litepal/b/d;->updateAll(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized updateAll(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 875
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/m;

    .line 11094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 875
    invoke-direct {v0, v2}, Lorg/litepal/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 876
    invoke-virtual {v0, p0, p1, p2}, Lorg/litepal/b/m;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized where([Ljava/lang/String;)Lorg/litepal/b/b;
    .locals 2

    .prologue
    .line 155
    const-class v1, Lorg/litepal/b/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lorg/litepal/b/b;

    invoke-direct {v0}, Lorg/litepal/b/b;-><init>()V

    .line 156
    iput-object p0, v0, Lorg/litepal/b/b;->a:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method addAssociatedModelForJoinTable(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1262
    invoke-virtual {p0}, Lorg/litepal/b/d;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    .line 1263
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1264
    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1266
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1267
    iget-object v1, p0, Lorg/litepal/b/d;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    :goto_0
    return-void

    .line 1270
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addAssociatedModelWithFK(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1225
    invoke-virtual {p0}, Lorg/litepal/b/d;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1227
    if-nez v0, :cond_0

    .line 1228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1229
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1230
    iget-object v1, p0, Lorg/litepal/b/d;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    :goto_0
    return-void

    .line 1233
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addAssociatedModelWithoutFK(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1320
    invoke-virtual {p0}, Lorg/litepal/b/d;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    .line 1321
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    return-void
.end method

.method addAssociatedTableNameToClearFK(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1371
    invoke-virtual {p0}, Lorg/litepal/b/d;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    .line 1372
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_0
    return-void
.end method

.method addEmptyModelForJoinTable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1283
    invoke-virtual {p0}, Lorg/litepal/b/d;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    .line 1284
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1285
    if-nez v0, :cond_0

    .line 1286
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1287
    iget-object v1, p0, Lorg/litepal/b/d;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :cond_0
    return-void
.end method

.method addFKNameToClearSelf(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1345
    invoke-virtual {p0}, Lorg/litepal/b/d;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    .line 1346
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1347
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_0
    return-void
.end method

.method clearAssociatedData()V
    .locals 0

    .prologue
    .line 1394
    invoke-direct {p0}, Lorg/litepal/b/d;->clearIdOfModelWithFK()V

    .line 1395
    invoke-direct {p0}, Lorg/litepal/b/d;->clearIdOfModelWithoutFK()V

    .line 1396
    invoke-direct {p0}, Lorg/litepal/b/d;->clearIdOfModelForJoinTable()V

    .line 1397
    invoke-direct {p0}, Lorg/litepal/b/d;->clearFKNameList()V

    .line 1398
    return-void
.end method

.method public declared-synchronized delete()I
    .locals 4

    .prologue
    .line 13094
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 937
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 939
    :try_start_1
    new-instance v0, Lorg/litepal/b/g;

    invoke-direct {v0, v1}, Lorg/litepal/b/g;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 940
    invoke-virtual {v0, p0}, Lorg/litepal/b/g;->b(Lorg/litepal/b/d;)I

    move-result v0

    .line 941
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/litepal/b/d;->baseObjId:J

    .line 942
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 943
    monitor-exit p0

    return v0

    .line 944
    :catchall_0
    move-exception v0

    .line 945
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 946
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13094
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAssociatedModelsMapForJoinTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1301
    iget-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapForJoinTable:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapForJoinTable:Ljava/util/Map;

    .line 1304
    :cond_0
    iget-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapForJoinTable:Ljava/util/Map;

    return-object v0
.end method

.method getAssociatedModelsMapWithFK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1246
    iget-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapWithFK:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapWithFK:Ljava/util/Map;

    .line 1249
    :cond_0
    iget-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapWithFK:Ljava/util/Map;

    return-object v0
.end method

.method getAssociatedModelsMapWithoutFK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1332
    iget-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapWithoutFK:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapWithoutFK:Ljava/util/Map;

    .line 1335
    :cond_0
    iget-object v0, p0, Lorg/litepal/b/d;->associatedModelsMapWithoutFK:Ljava/util/Map;

    return-object v0
.end method

.method protected getBaseObjId()J
    .locals 2

    .prologue
    .line 1171
    iget-wide v0, p0, Lorg/litepal/b/d;->baseObjId:J

    return-wide v0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFieldsToSetToDefault()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1208
    iget-object v0, p0, Lorg/litepal/b/d;->fieldsToSetToDefault:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/b/d;->fieldsToSetToDefault:Ljava/util/List;

    .line 1211
    :cond_0
    iget-object v0, p0, Lorg/litepal/b/d;->fieldsToSetToDefault:Ljava/util/List;

    return-object v0
.end method

.method getListToClearAssociatedFK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1384
    iget-object v0, p0, Lorg/litepal/b/d;->listToClearAssociatedFK:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/b/d;->listToClearAssociatedFK:Ljava/util/List;

    .line 1387
    :cond_0
    iget-object v0, p0, Lorg/litepal/b/d;->listToClearAssociatedFK:Ljava/util/List;

    return-object v0
.end method

.method getListToClearSelfFK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Lorg/litepal/b/d;->listToClearSelfFK:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/b/d;->listToClearSelfFK:Ljava/util/List;

    .line 1361
    :cond_0
    iget-object v0, p0, Lorg/litepal/b/d;->listToClearSelfFK:Ljava/util/List;

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSaved()Z
    .locals 4

    .prologue
    .line 1141
    iget-wide v0, p0, Lorg/litepal/b/d;->baseObjId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetBaseObjId()V
    .locals 2

    .prologue
    .line 1197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/litepal/b/d;->baseObjId:J

    .line 1198
    return-void
.end method

.method public declared-synchronized save()Z
    .locals 1

    .prologue
    .line 1049
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/litepal/b/d;->saveThrows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    const/4 v0, 0x1

    .line 1053
    :goto_0
    monitor-exit p0

    return v0

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    const/4 v0, 0x0

    goto :goto_0

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save$7687e54b(Landroid/support/design/widget/K;)V
    .locals 2

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/b/e;

    invoke-direct {v0, p0, p1}, Lorg/litepal/b/e;-><init>(Lorg/litepal/b/d;Landroid/support/design/widget/K;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 1078
    invoke-virtual {v0, v1}, Lorg/litepal/b/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    monitor-exit p0

    return-void

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveThrows()V
    .locals 3

    .prologue
    .line 16094
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1122
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1124
    :try_start_1
    new-instance v0, Lorg/litepal/b/l;

    invoke-direct {v0, v1}, Lorg/litepal/b/l;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1125
    invoke-virtual {v0, p0}, Lorg/litepal/b/l;->b(Lorg/litepal/b/d;)V

    .line 1126
    invoke-virtual {p0}, Lorg/litepal/b/d;->clearAssociatedData()V

    .line 1127
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1133
    monitor-exit p0

    return-void

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    :try_start_3
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1130
    :catchall_0
    move-exception v0

    .line 1131
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1132
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 16094
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setToDefault(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1154
    invoke-virtual {p0}, Lorg/litepal/b/d;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1155
    return-void
.end method

.method public declared-synchronized update(J)I
    .locals 3

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/b/m;

    .line 14094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 972
    invoke-direct {v0, v1}, Lorg/litepal/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 974
    invoke-virtual {v0, p0, p1, p2}, Lorg/litepal/b/m;->b(Lorg/litepal/b/d;J)I

    move-result v0

    .line 975
    invoke-virtual {p0}, Lorg/litepal/b/d;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    monitor-exit p0

    return v0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    :try_start_1
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized updateAll([Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1013
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/litepal/b/m;

    .line 15094
    invoke-static {}, Lorg/litepal/d/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1013
    invoke-direct {v0, v1}, Lorg/litepal/b/m;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1015
    invoke-virtual {v0, p0, p1}, Lorg/litepal/b/m;->a(Lorg/litepal/b/d;[Ljava/lang/String;)I

    move-result v0

    .line 1016
    invoke-virtual {p0}, Lorg/litepal/b/d;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    monitor-exit p0

    return v0

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    :try_start_1
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
