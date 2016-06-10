.class final Lcom/ushaqi/zhuishushenqi/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 163
    check-cast p1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    check-cast p2, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;

    .line 1166
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    iget v1, p2, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView$Word;->show:I

    sub-int/2addr v0, v1

    .line 163
    return v0
.end method
