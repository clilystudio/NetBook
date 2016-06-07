.class public final Lorg/litepal/d/h;
.super Lorg/litepal/d/b;
.source "SourceFile"


# instance fields
.field private b:Lorg/litepal/d/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/litepal/d/b;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .line 2203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2204
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2207
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lorg/litepal/d/h;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lorg/litepal/d/h;->a([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 220
    return-void

    .line 2204
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2205
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3191
    iget-object v4, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v4}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lorg/litepal/d/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2205
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    iget-object v0, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v0}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    return-object v3

    .line 80
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    const/4 v2, 0x1

    .line 82
    iget-object v1, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v1}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/litepal/d/h;->g(Ljava/lang/String;)Lorg/litepal/d/a/b;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 82
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 89
    :goto_1
    if-eqz v1, :cond_0

    .line 91
    invoke-static {v0}, Lorg/litepal/d/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v1}, Lorg/litepal/d/a/b;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const/4 v1, 0x0

    .line 86
    goto :goto_1
.end method

.method private d()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 137
    iget-object v0, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v0}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/d/h;->g(Ljava/lang/String;)Lorg/litepal/d/a/b;

    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    return-object v4

    .line 138
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    iget-object v1, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v1}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-virtual {v5}, Lorg/litepal/d/a/b;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    iget-object v3, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v3}, Lorg/litepal/d/a/b;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    iput-object p1, p0, Lorg/litepal/d/h;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    invoke-virtual {p0}, Lorg/litepal/d/h;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 53
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/d/a/b;

    .line 54
    iput-object v0, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    .line 1111
    iget-object v0, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v0}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/d/h;->g(Ljava/lang/String;)Lorg/litepal/d/a/b;

    move-result-object v0

    .line 1112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    invoke-virtual {v0}, Lorg/litepal/d/a/b;->c()Ljava/util/Map;

    move-result-object v0

    .line 1114
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1115
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1120
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1065
    iget-object v0, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v0}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lorg/litepal/d/h;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0}, Lorg/litepal/d/h;->c()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/litepal/d/h;->a(Ljava/util/Map;)V

    .line 1067
    invoke-direct {p0}, Lorg/litepal/d/h;->d()Ljava/util/Map;

    move-result-object v0

    .line 1231
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v5, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v5}, Lorg/litepal/d/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lorg/litepal/d/h;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1232
    invoke-direct {p0, v0}, Lorg/litepal/d/h;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 1115
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1178
    iget-object v1, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {v1}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 1165
    :goto_3
    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/litepal/d/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1166
    iget-object v1, p0, Lorg/litepal/d/h;->b:Lorg/litepal/d/a/b;

    invoke-virtual {p0, v1, v0}, Lorg/litepal/d/h;->a(Lorg/litepal/d/a/b;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 1116
    :goto_4
    if-eqz v1, :cond_1

    .line 1117
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1178
    goto :goto_3

    :cond_4
    move v1, v3

    .line 1165
    goto :goto_4

    .line 1120
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1121
    const-string v6, "AssociationUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "remove column is >> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/litepal/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
