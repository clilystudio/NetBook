.class public Lcom/ushaqi/zhuishushenqi/widget/CoverView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->CoverView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->b:I

    .line 30
    const/4 v1, 0x1

    const v2, 0x7f020280

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 36
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 38
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->b:I

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->b:I

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setImageResource(I)V

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->addView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setImageResource(I)V

    .line 64
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setImageUrl(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->a:Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;

    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/CornerImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 60
    return-void
.end method
