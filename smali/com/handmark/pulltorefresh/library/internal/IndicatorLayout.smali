.class public Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/widget/ImageView;

.field private final d:Landroid/view/animation/Animation;

.field private final e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 13

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_arrow:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 51
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_internal_padding:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 55
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->addView(Landroid/view/View;)V

    .line 58
    sget-object v0, Lcom/handmark/pulltorefresh/library/internal/c;->a:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 72
    sget v5, Lcom/handmark/pulltorefresh/library/R$anim;->slide_in_from_top:I

    .line 73
    sget v0, Lcom/handmark/pulltorefresh/library/R$anim;->slide_out_to_top:I

    .line 74
    sget v6, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_bg_top:I

    invoke-virtual {p0, v6}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 78
    :goto_0
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    .line 79
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    .line 82
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 85
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    .line 87
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 89
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 91
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 97
    return-void

    .line 60
    :pswitch_0
    sget v5, Lcom/handmark/pulltorefresh/library/R$anim;->slide_in_from_bottom:I

    .line 61
    sget v0, Lcom/handmark/pulltorefresh/library/R$anim;->slide_out_to_bottom:I

    .line 62
    sget v7, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_bg_bottom:I

    invoke-virtual {p0, v7}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 65
    iget-object v7, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 67
    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-virtual {v7, v8, v9, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 68
    iget-object v6, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_2

    .line 102
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    if-ne v3, v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 114
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 145
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->b:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 121
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->clearAnimation()V

    .line 127
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->a:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 137
    return-void
.end method
