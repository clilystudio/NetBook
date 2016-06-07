.class public Lcom/mob/tools/gui/PullToRefreshView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Lcom/mob/tools/gui/m;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/Runnable;

.field private i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->b()V

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->d()V

    return-void
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/mob/tools/gui/q;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/q;-><init>(Lcom/mob/tools/gui/PullToRefreshView;)V

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/gui/PullToRefreshView;)V
    .locals 1

    .prologue
    .line 0
    .line 2000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->g:Z

    .line 0
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->i:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->g:Z

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    invoke-virtual {v0}, Lcom/mob/tools/gui/m;->onRequest()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    invoke-virtual {p0, v0, v0}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    invoke-virtual {v0}, Lcom/mob/tools/gui/m;->onReversed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->i:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->h:Ljava/lang/Runnable;

    sub-long v0, v4, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/mob/tools/gui/PullToRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/PullToRefreshView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->d:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->c()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->f:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->g:Z

    if-nez v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    invoke-virtual {v0}, Lcom/mob/tools/gui/m;->isPullReady()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 0
    :goto_1
    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    int-to-float v0, v0

    iget v3, p0, Lcom/mob/tools/gui/PullToRefreshView;->f:F

    sub-float v3, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    mul-int/lit8 v1, v1, 0x64

    iget v3, p0, Lcom/mob/tools/gui/PullToRefreshView;->d:I

    div-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/m;->onPullDown(I)V

    :cond_2
    invoke-static {p1}, Lcom/mob/tools/gui/PullToRefreshView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_3
    :goto_2
    iput v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->f:F

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1000
    goto :goto_1

    .line 0
    :cond_5
    iput v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    invoke-virtual {p0, v1, v1}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    goto :goto_2

    :pswitch_2
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->g:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    iget v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->d:I

    if-le v0, v2, :cond_7

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->d:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/m;->onPullDown(I)V

    :cond_6
    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->c()V

    invoke-static {p1}, Lcom/mob/tools/gui/PullToRefreshView;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mob/tools/gui/PullToRefreshView;->d()V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/m;->onPullDown(I)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->d:I

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    iget v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->e:I

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/gui/PullToRefreshView;->scrollTo(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Lcom/mob/tools/gui/m;)V
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v2, 0x0

    const/4 v3, -0x1

    iput-object p1, p0, Lcom/mob/tools/gui/PullToRefreshView;->a:Lcom/mob/tools/gui/m;

    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRefreshView;->removeAllViews()V

    invoke-virtual {p1}, Lcom/mob/tools/gui/m;->getBodyView$660be4()Lcom/koushikdutta/async/s;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->c:Landroid/view/View;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->c:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/gui/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/mob/tools/gui/m;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->b:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/PullToRefreshView;->d:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/mob/tools/gui/PullToRefreshView;->d:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->d:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRefreshView;->b:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/gui/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
