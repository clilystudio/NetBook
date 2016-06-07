.class public abstract Lorg/litepal/d/b;
.super Lorg/litepal/d/d;
.source "SourceFile"


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/litepal/d/d;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lorg/litepal/d/b;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 437
    :goto_0
    return v0

    .line 417
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/d/a/a;

    .line 418
    invoke-virtual {v0}, Lorg/litepal/d/a/a;->d()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 419
    invoke-virtual {v0}, Lorg/litepal/d/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    invoke-virtual {v0}, Lorg/litepal/d/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    invoke-static {v0, p1, p2}, Lorg/litepal/d/b;->a(Lorg/litepal/d/a/a;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 422
    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {v0}, Lorg/litepal/d/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 425
    if-eqz v4, :cond_0

    .line 426
    invoke-static {v0, p2, p1}, Lorg/litepal/d/b;->a(Lorg/litepal/d/a/a;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 427
    goto :goto_0

    .line 431
    :cond_3
    invoke-virtual {v0}, Lorg/litepal/d/a/a;->d()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 432
    invoke-static {v0, p2, p1}, Lorg/litepal/d/b;->a(Lorg/litepal/d/a/a;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 433
    goto :goto_0
.end method

.method private static a(Lorg/litepal/d/a/a;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/litepal/d/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/litepal/d/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p2}, Lorg/litepal/d/b;->g(Ljava/lang/String;)Lorg/litepal/d/a/b;

    move-result-object v1

    .line 306
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0, v1}, Lorg/litepal/d/b;->a(Lorg/litepal/d/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    invoke-virtual {v1, v0}, Lorg/litepal/d/a/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lorg/litepal/d/a/b;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/d/a/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p1}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/d/b;->g(Ljava/lang/String;)Lorg/litepal/d/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    return-object v3

    .line 89
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3145
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "_id"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 90
    :goto_1
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p1}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    const-string v1, "AssociationUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getForeignKeyColumnNames >> foreign key column is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-static {v1, v5}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3145
    goto :goto_1

    :cond_3
    move v1, v2

    .line 3147
    goto :goto_1
.end method

.method private c(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 322
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-virtual {p0, p2}, Lorg/litepal/d/b;->g(Ljava/lang/String;)Lorg/litepal/d/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    const-string v0, "insert into "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    const-string v0, ") "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    const-string v0, "select "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 349
    const-string v0, " from "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/litepal/d/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_3
    return-object v0

    .line 323
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    invoke-static {p1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 333
    if-eqz v1, :cond_3

    .line 334
    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1

    .line 342
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    if-eqz v2, :cond_5

    .line 344
    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_2

    .line 352
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private c()Ljava/util/List;
    .locals 8
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
    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v0, p0, Lorg/litepal/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    const-string v0, "AssociationUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findIntermediateTablesToDrop >> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-object v3

    .line 257
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lorg/litepal/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x1

    .line 260
    iget-object v2, p0, Lorg/litepal/d/b;->b:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 270
    if-eqz v2, :cond_0

    .line 272
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/d/a/a;

    .line 261
    invoke-virtual {v1}, Lorg/litepal/d/a/a;->d()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 263
    invoke-virtual {v1}, Lorg/litepal/d/a/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-virtual {v1}, Lorg/litepal/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v6, v1}, Lcom/arcsoft/hpay100/a/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method protected final a(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4289
    const-string v1, "alter table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rename to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4290
    invoke-static {p2}, Lorg/litepal/d/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3391
    const-string v1, "AssociationUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "generateRemoveColumnSQL >> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    invoke-direct {p0, p1, p2}, Lorg/litepal/d/b;->b(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3393
    const-string v2, "AssociationUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "generateRemoveColumnSQL >> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    invoke-direct {p0, p1, p2}, Lorg/litepal/d/b;->c(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3395
    const-string v3, "AssociationUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "generateRemoveColumnSQL >> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    invoke-static {p2}, Lorg/litepal/d/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/litepal/d/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3397
    const-string v4, "AssociationUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generateRemoveColumnSQL >> "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3398
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    .line 3399
    aput-object v3, v4, v0

    .line 161
    iget-object v0, p0, Lorg/litepal/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v0}, Lorg/litepal/d/b;->a([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 163
    :cond_0
    return-void
.end method

.method protected final a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-lt v1, v0, :cond_1

    .line 146
    invoke-static {v2, p2}, Lorg/litepal/d/b;->a([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/litepal/d/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final a(Lorg/litepal/d/a/b;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lorg/litepal/d/b;->b(Lorg/litepal/d/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final b(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lorg/litepal/d/b;->b()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/d/b;->b:Ljava/util/Collection;

    .line 73
    iput-object p1, p0, Lorg/litepal/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1207
    invoke-static {}, Lorg/litepal/c/a;->a()Lorg/litepal/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/c/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2218
    invoke-direct {p0}, Lorg/litepal/d/b;->c()Ljava/util/List;

    move-result-object v0

    .line 2219
    iget-object v1, p0, Lorg/litepal/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lorg/litepal/d/b;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2220
    invoke-virtual {p0, v0}, Lorg/litepal/d/b;->b(Ljava/util/List;)V

    .line 75
    return-void

    .line 1207
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1208
    invoke-virtual {p0, v0}, Lorg/litepal/d/b;->a(Ljava/lang/String;)Lorg/litepal/d/a/b;

    move-result-object v4

    .line 1233
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    invoke-direct {p0, v4}, Lorg/litepal/d/b;->b(Lorg/litepal/d/a/b;)Ljava/util/List;

    move-result-object v0

    .line 1235
    invoke-virtual {v4}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v6

    .line 1236
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1242
    const-string v0, "AssociationUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "findForeignKeyToRemove >> "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1243
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1242
    invoke-static {v0, v1}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v4}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lorg/litepal/d/b;->a(Ljava/util/Collection;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2109
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v8, "_id"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2110
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1238
    :goto_2
    invoke-direct {p0, v6, v1}, Lorg/litepal/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1239
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 2112
    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 2114
    goto :goto_2
.end method

.method protected final b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "delete from "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v0, "table_schema where"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    const-string v0, "AssociationUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "clear table schema value sql is "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 188
    iget-object v1, p0, Lorg/litepal/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lorg/litepal/d/b;->a([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 190
    :cond_0
    return-void

    .line 178
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    if-eqz v1, :cond_2

    .line 180
    const-string v1, " or "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_2
    const-string v1, " lower(name"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ") "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "= lower(\'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0
.end method

.method protected final g(Ljava/lang/String;)Lorg/litepal/d/a/b;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/litepal/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lorg/litepal/d/a/b;

    move-result-object v0

    return-object v0
.end method
