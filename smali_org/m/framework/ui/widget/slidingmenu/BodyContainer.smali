.class public Lm/framework/ui/widget/slidingmenu/BodyContainer;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# static fields
.field private static final MENU_COVER_ALPHA:I = 0xe6

.field private static final MIN_FLING_VEL:I = 0x1f4


# instance fields
.field private downX:F

.field private maxVelocity:I

.field private menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

.field private tracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 12
    const/high16 v0, 0x4f000000

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 19
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 20
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->maxVelocity:I

    .line 22
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 27
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 28
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuConfig()Lm/framework/ui/widget/slidingmenu/MenuConfig;

    move-result-object v1

    iget v1, v1, Lm/framework/ui/widget/slidingmenu/MenuConfig;->titleHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    const/4 v0, 0x1

    goto :goto_1

    .line 39
    :pswitch_1
    const/high16 v0, 0x4f000000

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getShowMenuWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    const/4 v0, 0x0

    goto :goto_1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 101
    mul-int/lit16 v0, p1, 0xe6

    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result v1

    div-int/2addr v0, v1

    .line 102
    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 103
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuCover()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x43fa0000

    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 58
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 60
    :cond_0
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 92
    :pswitch_0
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 95
    :cond_1
    :goto_0
    return v0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->isMenuShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 69
    :cond_2
    const/high16 v0, 0x4f000000

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->downX:F

    .line 70
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->maxVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 71
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 72
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->tracker:Landroid/view/VelocityTracker;

    .line 74
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/BodyContainer;->getScrollX()I

    move-result v1

    .line 76
    sub-float v2, v0, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 79
    add-float/2addr v0, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 80
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    .line 88
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getMenuWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_4

    .line 83
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    goto :goto_1

    .line 86
    :cond_4
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/BodyContainer;->menu:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenu()V

    goto :goto_1

    .line 95
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
