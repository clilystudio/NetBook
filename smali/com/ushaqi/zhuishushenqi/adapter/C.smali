.class public final Lcom/ushaqi/zhuishushenqi/adapter/C;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f030104

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/C;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;

    .line 1032
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/C;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u9884\u8bfb"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ae0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/adapter/C;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1035
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/C;->a:I

    if-ne v0, p1, :cond_0

    .line 1036
    invoke-virtual {p0, v4, v2}, Lcom/ushaqi/zhuishushenqi/adapter/C;->a(IZ)Landroid/view/View;

    :goto_0
    return-void

    .line 1038
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/ushaqi/zhuishushenqi/adapter/C;->a(IZ)Landroid/view/View;

    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c036d
        0x7f0c036a
        0x7f0c036c
    .end array-data
.end method
