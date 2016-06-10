.class Lorg/litepal/b/m;
.super Lorg/litepal/b/c;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/litepal/b/c;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/litepal/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    return-void
.end method

.method private a(Lorg/litepal/b/d;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/litepal/b/m;->a(Lorg/litepal/b/d;)Lorg/litepal/b/d;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 189
    invoke-virtual {p1}, Lorg/litepal/b/d;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v1, v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    return-void

    .line 189
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lorg/litepal/b/m;->d(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_0

    .line 192
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 193
    invoke-virtual {p0, v2, v1, p2}, Lorg/litepal/b/m;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    :goto_1
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    .line 198
    invoke-virtual {p1}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v2, v0}, Lorg/litepal/exceptions/DataSupportException;->noSuchFieldExceptioin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :catch_1
    move-exception v0

    .line 200
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private varargs b(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 167
    invoke-static {p3}, Lcom/arcsoft/hpay100/a/a;->c([Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/litepal/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p3}, Lorg/litepal/b/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p0, p3}, Lorg/litepal/b/m;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/Class;JLandroid/content/ContentValues;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;J",
            "Landroid/content/ContentValues;",
            ")I"
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p4}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/litepal/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 1582
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final varargs a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Lorg/litepal/b/m;->b(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final varargs a(Lorg/litepal/b/d;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p1}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/b/m;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lorg/litepal/b/m;->a(Lorg/litepal/b/d;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 127
    invoke-direct {p0, p1, v1}, Lorg/litepal/b/m;->a(Lorg/litepal/b/d;Landroid/content/ContentValues;)V

    .line 128
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Lorg/litepal/b/m;->b(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final b(Lorg/litepal/b/d;J)I
    .locals 6

    .prologue
    .line 72
    invoke-virtual {p1}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/b/m;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 74
    invoke-virtual {p0, p1, v0, v1}, Lorg/litepal/b/m;->a(Lorg/litepal/b/d;Ljava/util/List;Landroid/content/ContentValues;)V

    .line 75
    invoke-direct {p0, p1, v1}, Lorg/litepal/b/m;->a(Lorg/litepal/b/d;Landroid/content/ContentValues;)V

    .line 76
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/litepal/b/m;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
