.class public final Lcom/ushaqi/zhuishushenqi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/ushaqi/zhuishushenqi/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/ushaqi/zhuishushenqi/a;->b:Lcom/ushaqi/zhuishushenqi/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/ushaqi/zhuishushenqi/a;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/a;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/a;->b:Lcom/ushaqi/zhuishushenqi/a;

    .line 27
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/a;->b:Lcom/ushaqi/zhuishushenqi/a;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/ushaqi/zhuishushenqi/a;->a:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/a;->a:Ljava/util/Stack;

    .line 37
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/a;->a:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/ushaqi/zhuishushenqi/a;->a:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 65
    :cond_2
    sget-object v0, Lcom/ushaqi/zhuishushenqi/a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto :goto_0
.end method
