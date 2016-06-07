.class public Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;
.super Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
.source "SourceFile"


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;->b:I

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;->b:I

    return v0
.end method


# virtual methods
.method public setImageUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/I;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/I;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;->setImageUrl(Ljava/lang/String;ILcom/nostra13/universalimageloader/core/d/a;)V

    .line 54
    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public final setImageUrl(Ljava/lang/String;ILcom/nostra13/universalimageloader/core/d/a;)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;ILcom/nostra13/universalimageloader/core/d/a;)V

    .line 64
    return-void
.end method
