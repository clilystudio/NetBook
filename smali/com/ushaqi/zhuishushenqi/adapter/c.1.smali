.class public final Lcom/ushaqi/zhuishushenqi/adapter/c;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/CategoryBook;",
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

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/c;->a:Landroid/content/res/Resources;

    .line 24
    return-void
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 17
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;

    .line 1041
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->getFullCover()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1042
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1043
    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1044
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/c;->a:Landroid/content/res/Resources;

    const v2, 0x7f050113

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->getLatelyFollower()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1045
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->getRetentionRatio()F

    move-result v0

    .line 1046
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 1047
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/c;->a:Landroid/content/res/Resources;

    const v3, 0x7f050166

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1048
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(IZ)Landroid/view/View;

    .line 1049
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(IZ)Landroid/view/View;

    .line 1054
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1055
    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->getMajorCate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1058
    :goto_1
    return-void

    .line 1051
    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(IZ)Landroid/view/View;

    .line 1052
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(IZ)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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
