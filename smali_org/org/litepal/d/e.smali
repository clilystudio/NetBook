.class public final Lorg/litepal/d/e;
.super Lorg/litepal/d/b;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/d/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/litepal/d/b;-><init>()V

    return-void
.end method

.method private c()Ljava/util/List;
    .locals 10
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
    const/4 v8, 0x0

    .line 77
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/litepal/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table_schema"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 81
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 83
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 85
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1132
    invoke-direct {p0}, Lorg/litepal/d/e;->d()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1133
    if-nez v0, :cond_4

    .line 1132
    const/4 v0, 0x1

    .line 87
    :goto_0
    if-eqz v0, :cond_1

    .line 89
    const-string v0, "AssociationUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "need to drop "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :cond_2
    if-eqz v1, :cond_3

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_3
    :goto_1
    return-object v9

    .line 1132
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 95
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    move-object v1, v8

    .line 97
    :goto_3
    if-eqz v1, :cond_5

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_5
    throw v0

    .line 96
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 94
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private d()Ljava/util/List;
    .locals 3
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
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v0, p0, Lorg/litepal/d/e;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    return-object v1

    .line 111
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/d/a/b;

    .line 112
    invoke-virtual {v0}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/litepal/d/e;->a()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/d/e;->b:Ljava/util/Collection;

    .line 56
    iput-object p1, p0, Lorg/litepal/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1065
    invoke-direct {p0}, Lorg/litepal/d/e;->c()Ljava/util/List;

    move-result-object v0

    .line 1066
    iget-object v1, p0, Lorg/litepal/d/e;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lorg/litepal/d/e;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1067
    invoke-virtual {p0, v0}, Lorg/litepal/d/e;->b(Ljava/util/List;)V

    .line 58
    return-void
.end method
