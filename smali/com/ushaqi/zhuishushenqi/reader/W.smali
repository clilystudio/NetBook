.class final Lcom/ushaqi/zhuishushenqi/reader/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/V;Ljava/util/List;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)V
    .locals 0

    .prologue
    .line 328
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/W;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/reader/W;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/W;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/e;

    .line 332
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/W;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    invoke-interface {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method
