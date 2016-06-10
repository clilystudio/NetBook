.class final Lcom/ushaqi/zhuishushenqi/reader/cz;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 2857
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 3860
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 3861
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 3862
    iget-boolean v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    iget-boolean v3, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-eq v2, v3, :cond_1

    .line 3863
    iget-boolean v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 3865
    :cond_1
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->e:I

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->e:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method
