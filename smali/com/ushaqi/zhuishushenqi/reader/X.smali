.class final Lcom/ushaqi/zhuishushenqi/reader/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ushaqi/zhuishushenqi/reader/e",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/Reader;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/X;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/X;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 461
    .line 1464
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/X;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/X;->b:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/X;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/X;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/util/List;)V

    .line 461
    :cond_0
    return-void
.end method
