.class public Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;
.super Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final f:Landroid/view/animation/Animation;

.field private final g:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 8

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 43
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-ne p2, v0, :cond_0

    const/16 v0, -0xb4

    move v7, v0

    .line 45
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v7

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->f:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->f:Landroid/view/animation/Animation;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 48
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->f:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->f:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 51
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->g:Landroid/view/animation/Animation;

    .line 53
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->g:Landroid/view/animation/Animation;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->g:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 55
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->g:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 56
    return-void

    .line 43
    :cond_0
    const/16 v0, 0xb4

    move v7, v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->f:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected final a(F)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected final a(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    .line 77
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1123
    const/4 v0, 0x0

    .line 1124
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/b;->a:[I

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 81
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 83
    :cond_1
    return-void

    .line 1126
    :pswitch_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne v0, v1, :cond_2

    .line 1127
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 1129
    :cond_2
    const/high16 v0, 0x43340000    # 180.0f

    .line 1131
    goto :goto_0

    .line 1134
    :pswitch_1
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->e:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    sget-object v4, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    if-ne v1, v4, :cond_0

    .line 1135
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 1124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 101
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->m()V

    .line 103
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    return-void
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 113
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->n()V

    .line 114
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/FlipLoadingLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    return-void
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/handmark/pulltorefresh/library/R$drawable;->ptr_flip:I

    return v0
.end method
