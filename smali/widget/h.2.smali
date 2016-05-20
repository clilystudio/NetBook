.class Lcom/ushaqi/zhuishushenqi/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;)V
    .locals 1

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/h;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    .line 302
    iput p1, v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->leftMargin:I

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method
