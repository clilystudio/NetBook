.class public abstract Lorg/litepal/d/f;
.super Lorg/litepal/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/d/a/b;",
            ">;"
        }
    .end annotation
.end field

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
    invoke-direct {p0}, Lorg/litepal/a;-><init>()V

    return-void
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-static {p0, v0}, Lorg/litepal/d/f;->d(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 208
    invoke-static {p0, v0}, Lorg/litepal/d/f;->c(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 209
    return-void
.end method

.method protected static a([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 106
    const-string v0, ""

    .line 108
    if-eqz p0, :cond_0

    .line 109
    :try_start_0
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 117
    :cond_0
    return-void

    .line 109
    :cond_1
    aget-object v0, p0, v1

    .line 111
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    new-instance v1, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An exception that indicates there was an error with SQL parsing or execution. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    .line 2180
    new-instance v0, Lorg/litepal/d/e;

    invoke-direct {v0}, Lorg/litepal/d/e;-><init>()V

    .line 2181
    invoke-virtual {v0, p0, v1}, Lorg/litepal/d/e;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 221
    invoke-static {p0, v1}, Lorg/litepal/d/f;->d(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3141
    new-instance v0, Lorg/litepal/d/h;

    invoke-direct {v0}, Lorg/litepal/d/h;-><init>()V

    .line 3142
    invoke-virtual {v0, p0, v1}, Lorg/litepal/d/b;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 3153
    new-instance v0, Lorg/litepal/d/h;

    invoke-direct {v0}, Lorg/litepal/d/h;-><init>()V

    .line 3154
    invoke-virtual {v0, p0, v1}, Lorg/litepal/d/h;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 224
    invoke-static {p0, v1}, Lorg/litepal/d/f;->c(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 225
    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lorg/litepal/d/d;

    invoke-direct {v0}, Lorg/litepal/d/d;-><init>()V

    .line 130
    invoke-virtual {v0, p0, p1}, Lorg/litepal/d/a;->b(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 131
    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lorg/litepal/d/d;

    invoke-direct {v0}, Lorg/litepal/d/d;-><init>()V

    .line 169
    invoke-virtual {v0, p0, p1}, Lorg/litepal/d/d;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 170
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/d/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lorg/litepal/d/f;->a:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/d/f;->a:Ljava/util/Collection;

    .line 1192
    :cond_0
    iget-object v0, p0, Lorg/litepal/d/f;->a:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 1195
    iget-object v0, p0, Lorg/litepal/d/f;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {}, Lorg/litepal/c/a;->a()Lorg/litepal/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/litepal/c/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 69
    :goto_0
    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lorg/litepal/d/f;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 71
    invoke-static {}, Lorg/litepal/c/a;->a()Lorg/litepal/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/c/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    :cond_1
    iget-object v0, p0, Lorg/litepal/d/f;->a:Ljava/util/Collection;

    return-object v0

    .line 1195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lorg/litepal/d/f;->a:Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/litepal/d/f;->a(Ljava/lang/String;)Lorg/litepal/d/a/b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method protected final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/d/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/litepal/d/f;->b:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/litepal/d/f;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    invoke-static {}, Lorg/litepal/c/a;->a()Lorg/litepal/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/c/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/d/f;->a(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/d/f;->b:Ljava/util/Collection;

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/litepal/d/f;->b:Ljava/util/Collection;

    return-object v0
.end method

.method protected abstract b(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method
