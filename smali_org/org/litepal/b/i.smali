.class final Lorg/litepal/b/i;
.super Lorg/litepal/b/a;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/litepal/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method final e(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/litepal/b/d;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/litepal/b/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1089
    invoke-virtual {p0, p1, p2}, Lorg/litepal/b/i;->c(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Lorg/litepal/b/d;

    move-result-object v0

    .line 1090
    if-eqz v0, :cond_2

    .line 1092
    invoke-virtual {p0, v0, p2}, Lorg/litepal/b/i;->a(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Ljava/util/Collection;

    move-result-object v1

    .line 1095
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->e()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1094
    invoke-virtual {p0, v1, v2}, Lorg/litepal/b/i;->a(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v1

    .line 1096
    invoke-virtual {p0, v0, p2, v1}, Lorg/litepal/b/i;->a(Lorg/litepal/b/d;Lorg/litepal/b/a/a;Ljava/util/Collection;)V

    .line 1154
    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1155
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_0
    invoke-virtual {v0}, Lorg/litepal/b/d;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1158
    invoke-virtual {v0}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 1159
    invoke-virtual {v0}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v2

    .line 1158
    invoke-virtual {p1, v1, v2, v3}, Lorg/litepal/b/d;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    .line 2130
    :cond_1
    :goto_0
    return-void

    .line 1099
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/litepal/b/i;->b(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V

    goto :goto_0

    .line 2125
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/litepal/b/i;->d(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Ljava/util/Collection;

    move-result-object v0

    .line 2126
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2128
    :cond_4
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 2127
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2129
    invoke-virtual {p1, v0}, Lorg/litepal/b/d;->addAssociatedTableNameToClearFK(Ljava/lang/String;)V

    goto :goto_0

    .line 2132
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/b/d;

    .line 2133
    invoke-virtual {p0, p1, v0, p2}, Lorg/litepal/b/i;->a(Lorg/litepal/b/d;Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V

    .line 2173
    invoke-static {p1, v0}, Lorg/litepal/b/i;->a(Lorg/litepal/b/d;Lorg/litepal/b/d;)V

    goto :goto_1
.end method
