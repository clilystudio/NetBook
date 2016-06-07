.class public final Lorg/litepal/b/h;
.super Lorg/litepal/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/litepal/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method final e(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/litepal/b/h;->d(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Ljava/util/Collection;

    move-result-object v0

    .line 1137
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    invoke-virtual {p1, v1}, Lorg/litepal/b/d;->addEmptyModelForJoinTable(Ljava/lang/String;)V

    .line 65
    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    :cond_1
    return-void

    .line 66
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/d;

    .line 67
    invoke-virtual {p0, v0, p2}, Lorg/litepal/b/h;->a(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Ljava/util/Collection;

    move-result-object v2

    .line 70
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->e()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 69
    invoke-virtual {p0, v2, v3}, Lorg/litepal/b/h;->a(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v2

    .line 2104
    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2105
    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_3
    invoke-virtual {p0, v0, p2, v2}, Lorg/litepal/b/h;->a(Lorg/litepal/b/d;Lorg/litepal/b/a/a;Ljava/util/Collection;)V

    .line 2121
    invoke-virtual {v0}, Lorg/litepal/b/d;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2122
    invoke-virtual {v0}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 2123
    invoke-virtual {v0}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v4

    .line 2122
    invoke-virtual {p1, v2, v4, v5}, Lorg/litepal/b/d;->addAssociatedModelForJoinTable(Ljava/lang/String;J)V

    goto :goto_0
.end method
