.class Lorg/litepal/d/d;
.super Lorg/litepal/d/a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/litepal/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/litepal/d/a/b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p1}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/litepal/d/a/b;->c()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/litepal/d/d;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-virtual {p0}, Lorg/litepal/d/d;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    return-void

    .line 45
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/d/a/b;

    .line 1066
    if-eqz p2, :cond_1

    .line 1067
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1086
    invoke-virtual {v0}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/litepal/d/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1067
    aput-object v3, v1, v4

    .line 1068
    invoke-virtual {p0, v0}, Lorg/litepal/d/d;->a(Lorg/litepal/d/a/b;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 46
    :goto_1
    invoke-static {v1, p1}, Lorg/litepal/d/d;->a([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-virtual {v0}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, p1}, Lorg/litepal/d/d;->a(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 1070
    :cond_1
    invoke-virtual {v0}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1071
    const/4 v1, 0x0

    goto :goto_1

    .line 1073
    :cond_2
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/litepal/d/d;->a(Lorg/litepal/d/a/b;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    goto :goto_1
.end method
