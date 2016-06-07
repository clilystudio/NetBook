.class public final Lorg/litepal/b/j;
.super Lorg/litepal/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/litepal/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method final e(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/litepal/b/j;->c(Lorg/litepal/b/d;Lorg/litepal/b/a/a;)Lorg/litepal/b/d;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0, p1, v0, p2}, Lorg/litepal/b/j;->a(Lorg/litepal/b/d;Lorg/litepal/b/d;Lorg/litepal/b/a/a;)V

    .line 1085
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->e()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1105
    invoke-virtual {v0}, Lorg/litepal/b/d;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    invoke-virtual {v0}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-virtual {v0}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v2

    .line 1107
    invoke-virtual {p1, v1, v2, v3}, Lorg/litepal/b/d;->addAssociatedModelWithFK(Ljava/lang/String;J)V

    .line 1110
    invoke-virtual {v0}, Lorg/litepal/b/d;->getTableName()Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-virtual {v0}, Lorg/litepal/b/d;->getBaseObjId()J

    move-result-wide v2

    .line 1110
    invoke-virtual {p1, v1, v2, v3}, Lorg/litepal/b/d;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    invoke-static {p1, v0}, Lorg/litepal/b/j;->a(Lorg/litepal/b/d;Lorg/litepal/b/d;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p2}, Lorg/litepal/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lorg/litepal/b/d;->addAssociatedTableNameToClearFK(Ljava/lang/String;)V

    goto :goto_0
.end method
