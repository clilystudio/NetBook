.class public final Lcom/ushaqi/zhuishushenqi/adapter/g;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f0300fd

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 23
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/g;->a:Landroid/content/res/Resources;

    .line 24
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;

    .line 1040
    const-class v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getFullCover()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020106

    invoke-virtual {v0, v3, v4}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1041
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1042
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getShortIntro()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1043
    const/4 v0, 0x3

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/g;->a:Landroid/content/res/Resources;

    const v4, 0x7f050113

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getLatelyFollower()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1044
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/g;->a:Landroid/content/res/Resources;

    const v3, 0x7f050166

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getRetentionRatio()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1045
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getRetentionRatio()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(IZ)Landroid/view/View;

    .line 1046
    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getRetentionRatio()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(IZ)Landroid/view/View;

    .line 1047
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1048
    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 17
    return-void

    :cond_0
    move v0, v2

    .line 1045
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1046
    goto :goto_1
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0c02f0
        0x7f0c02e5
        0x7f0c02f1
        0x7f0c0355
        0x7f0c0357
        0x7f0c0356
        0x7f0c0353
        0x7f0c0354
    .end array-data
.end method
