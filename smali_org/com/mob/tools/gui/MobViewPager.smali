.class public Lcom/mob/tools/gui/MobViewPager;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Scroller;

.field private g:I

.field private h:I

.field private i:Lcom/mob/tools/gui/u;

.field private j:Landroid/view/VelocityTracker;

.field private k:I

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mob/tools/gui/MobViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    .line 1000
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/mob/tools/gui/l;

    invoke-direct {v2, p0}, Lcom/mob/tools/gui/l;-><init>(Lcom/mob/tools/gui/MobViewPager;)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->g:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->h:I

    .line 0
    return-void
.end method

.method private a(IZ)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v1

    if-eqz p2, :cond_1

    move v5, v2

    :goto_0
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->invalidate()V

    return-void

    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->l:F

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->l:F

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_0

    :cond_2
    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/mob/tools/gui/MobViewPager;->scrollBy(II)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v4

    div-int v0, v3, v4

    rem-int/2addr v3, v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    if-eq v2, v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    if-le v0, v2, :cond_6

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_9

    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v5

    if-lt v5, v6, :cond_4

    invoke-virtual {p0, v1}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    :cond_4
    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3, v4, p0}, Lcom/mob/tools/gui/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iput-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_3
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    sub-int v3, v2, v3

    if-ge v0, v3, :cond_9

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    iput-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v5

    if-lt v5, v6, :cond_7

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/mob/tools/gui/MobViewPager;->removeViewAt(I)V

    :cond_7
    if-lez v3, :cond_8

    iget-object v5, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5, v3, v4, p0}, Lcom/mob/tools/gui/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    invoke-virtual {p0, v3, v1}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    iput-object v4, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/gui/u;->onScreenChange(II)V

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getDrawingTime()J

    move-result-wide v0

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_2
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v3}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 3000
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/mob/tools/gui/MobViewPager;->m:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v5, v0

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->g:I

    if-le v3, v0, :cond_5

    move v0, v1

    :goto_2
    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->g:I

    if-le v5, v3, :cond_6

    move v3, v1

    :goto_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    :cond_4
    if-eqz v0, :cond_3

    iput v1, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    iput v4, p0, Lcom/mob/tools/gui/MobViewPager;->l:F

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    .line 0
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->l:F

    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->m:F

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    :cond_8
    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    sub-int v4, v2, v0

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    add-int v4, v2, v0

    invoke-virtual {v3, v2, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    add-int v4, v2, v0

    add-int/2addr v2, v0

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v3, p0, Lcom/mob/tools/gui/MobViewPager;->l:F

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/MobViewPager;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/mob/tools/gui/MobViewPager;->h:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_6

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    if-lez v3, :cond_6

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, v0}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    :goto_2
    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mob/tools/gui/MobViewPager;->j:Landroid/view/VelocityTracker;

    :cond_5
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    goto :goto_1

    :cond_6
    const/16 v3, -0x1f4

    if-ge v2, v3, :cond_7

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    iget v3, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_7

    iget v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    div-int v2, v3, v2

    invoke-direct {p0, v2, v0}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_2

    :pswitch_3
    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->k:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Lcom/mob/tools/gui/u;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/u;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    :cond_0
    iput-object p1, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->i:Lcom/mob/tools/gui/u;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/u;->setMobViewPager(Lcom/mob/tools/gui/MobViewPager;)V

    :cond_1
    if-nez p1, :cond_3

    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/mob/tools/gui/u;->getCount()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    if-gtz v0, :cond_4

    iput v2, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mob/tools/gui/MobViewPager;->a(IZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/mob/tools/gui/MobViewPager;->removeAllViews()V

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    :cond_6
    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    iget v1, p0, Lcom/mob/tools/gui/MobViewPager;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/mob/tools/gui/MobViewPager;->a:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    invoke-virtual {p1, v0, v1, p0}, Lcom/mob/tools/gui/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/mob/tools/gui/MobViewPager;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/MobViewPager;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
