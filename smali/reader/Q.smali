.class final Lcom/ushaqi/zhuishushenqi/reader/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/Reader;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/Q;->a:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c(Lcom/ushaqi/zhuishushenqi/reader/Reader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ae;

    .line 257
    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/ae;->a()V

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method
