.class public final Lcom/ushaqi/zhuishushenqi/adapter/B;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/TocSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f030103

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/B;->c:I

    .line 31
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/B;->a:I

    .line 33
    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/B;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/B;->c:I

    .line 72
    return-void
.end method

.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 21
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    .line 1047
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1048
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1050
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1051
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/B;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1052
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1057
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getLastChapter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1059
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/B;->c:I

    if-ne v0, p1, :cond_1

    .line 1060
    invoke-virtual {p0, v7, v5}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(IZ)Landroid/view/View;

    :goto_1
    return-void

    .line 1054
    :cond_0
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/B;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1055
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 1062
    :cond_1
    invoke-virtual {p0, v7, v4}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(IZ)Landroid/view/View;

    goto :goto_1
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c036d
        0x7f0c036f
        0x7f0c036e
        0x7f0c036a
        0x7f0c036c
    .end array-data
.end method
