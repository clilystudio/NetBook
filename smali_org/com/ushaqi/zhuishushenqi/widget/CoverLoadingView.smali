.class public Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;
.super Lcom/ushaqi/zhuishushenqi/widget/CoverView;
.source "SourceFile"


# instance fields
.field private final a:F

.field private b:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->CoverLoadingView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->a:F

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 27
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->onFinishInflate()V

    .line 29
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->a:F

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->setCornerRadius(F)V

    .line 31
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->setId(I)V

    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->b:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method
