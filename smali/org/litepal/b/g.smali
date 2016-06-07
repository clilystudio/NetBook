.class public final Lorg/litepal/b/g;
.super Lorg/litepal/b/c;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/List;
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
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/litepal/b/c;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    return-void
.end method

.method private a()Ljava/util/List;
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
    .line 362
    iget-object v0, p0, Lorg/litepal/b/g;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/b/g;->b:Ljava/util/List;

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/litepal/b/g;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lorg/litepal/b/g;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    return-void

    .line 166
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/a/a;

    .line 169
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 171
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 173
    :cond_2
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lorg/litepal/b/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 6582
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-direct {p0}, Lorg/litepal/b/g;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Lorg/litepal/b/d;Ljava/util/Collection;)V
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
    .line 268
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    return-void

    .line 268
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/a/a;

    .line 269
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 270
    invoke-virtual {p1}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 271
    if-nez v2, :cond_3

    .line 272
    invoke-virtual {p0, p1, v0}, Lorg/litepal/b/g;->d(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Ljava/util/Collection;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/d;

    .line 276
    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v0}, Lorg/litepal/b/d;->resetBaseObjId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/litepal/b/a/a;->f()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 282
    invoke-virtual {p0, p1, v0}, Lorg/litepal/b/g;->c(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Lorg/litepal/b/d;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lorg/litepal/b/d;->resetBaseObjId()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static varargs c([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 229
    array-length v1, p0

    add-int/lit8 v2, v1, -0x1

    .line 230
    aget-object v1, p0, v0

    .line 231
    :goto_0
    if-lt v0, v2, :cond_0

    .line 234
    return-object v1

    .line 232
    :cond_0
    const-string v3, "\\?"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c(Lorg/litepal/b/d;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/b/d;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    .line 247
    :try_start_0
    invoke-virtual {p1}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lorg/litepal/b/g;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 248
    invoke-static {p1, v0}, Lorg/litepal/b/g;->a(Lorg/litepal/b/d;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private d(Lorg/litepal/b/d;)I
    .locals 8

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 344
    invoke-virtual {p1}, Lorg/litepal/b/d;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 345
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    return v1

    .line 345
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v3, v0}, Lcom/arcsoft/hpay100/a/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/litepal/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    iget-object v4, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 350
    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/Class;J)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 100
    invoke-direct {p0, p1}, Lorg/litepal/b/g;->a(Ljava/lang/Class;)V

    .line 2201
    const/4 v0, 0x0

    .line 2202
    invoke-direct {p0}, Lorg/litepal/b/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 3582
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 104
    invoke-direct {p0}, Lorg/litepal/b/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 105
    return v0

    .line 2202
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2582
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2203
    invoke-static {v3}, Lorg/litepal/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2204
    iget-object v4, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2205
    const-string v3, " = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method final varargs a(Ljava/lang/Class;[Ljava/lang/String;)I
    .locals 7
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
    .line 127
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->c([Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p1}, Lorg/litepal/b/g;->a(Ljava/lang/Class;)V

    .line 4211
    const/4 v0, 0x0

    .line 4212
    invoke-direct {p0}, Lorg/litepal/b/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 5582
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p0, p2}, Lorg/litepal/b/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p0, p2}, Lorg/litepal/b/g;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    .line 132
    invoke-direct {p0}, Lorg/litepal/b/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 133
    return v0

    .line 4212
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4582
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4214
    invoke-static {v3}, Lorg/litepal/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4216
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in (select id from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4218
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    .line 4219
    const-string v3, " where "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lorg/litepal/b/g;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4221
    :cond_1
    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4222
    iget-object v3, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 4223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method final varargs a(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 121
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->c([Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p2}, Lorg/litepal/b/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0, p2}, Lorg/litepal/b/g;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final b(Lorg/litepal/b/d;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1}, Lorg/litepal/b/d;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lorg/litepal/b/g;->c(Lorg/litepal/b/d;)Ljava/util/Collection;

    move-result-object v2

    .line 1324
    invoke-virtual {p1}, Lorg/litepal/b/d;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v1

    .line 1325
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1309
    invoke-direct {p0, p1}, Lorg/litepal/b/g;->d(Lorg/litepal/b/d;)I

    move-result v0

    add-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    invoke-direct {p0, p1, v2}, Lorg/litepal/b/g;->b(Lorg/litepal/b/d;Ljava/util/Collection;)V

    .line 83
    :cond_0
    return v0

    .line 1325
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1326
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/litepal/b/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1327
    iget-object v5, p0, Lorg/litepal/b/g;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1328
    const-string v4, " = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method
