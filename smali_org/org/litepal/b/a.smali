.class abstract Lorg/litepal/b/a;
.super Lorg/litepal/b/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/litepal/b/c;-><init>()V

    return-void
.end method

.method protected static a(Lorg/litepal/b/d;Lorg/litepal/b/d;)V
    .locals 4

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lorg/litepal/b/d;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v2

    .line 158
    invoke-virtual {p0, v0, v2, v3}, Lorg/litepal/b/d;->addAssociatedModelWithFK(Ljava/lang/String;J)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/litepal/b/d;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v2

    .line 162
    invoke-virtual {p1, v0, v2, v3}, Lorg/litepal/b/d;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/b/d;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 1233
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :goto_0
    if-eqz p1, :cond_0

    .line 114
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_0
    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 1244
    const-class v1, Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 111
    :cond_2
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    const-string v1, "The field to declare many2one or many2many associations should be List or Set."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Ljava/util/Collection;
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
    .line 58
    .line 59
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 58
    invoke-virtual {p0, p1, v0}, Lorg/litepal/b/a;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method protected final a(Lorg/litepal/b/d;Lorg/litepal/b/a/a;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/b/d;",
            "Lorg/litepal/b/a/a;",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/litepal/b/a;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method protected final a(Lorg/litepal/b/d;Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p3}, Lorg/litepal/b/a/a;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lorg/litepal/b/a;->a(Lorg/litepal/b/d;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method protected final b(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V
    .locals 1

    .prologue
    .line 180
    .line 2192
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 2191
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Lorg/litepal/b/d;->addFKNameToClearSelf(Ljava/lang/String;)V

    .line 181
    return-void
.end method
