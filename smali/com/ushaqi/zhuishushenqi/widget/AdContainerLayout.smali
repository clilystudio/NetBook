.class public Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/ushaqi/zhuishushenqi/widget/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->a:Z

    .line 20
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 40
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 28
    :pswitch_0
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->a:Z

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->b:Lcom/ushaqi/zhuishushenqi/widget/f;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->b:Lcom/ushaqi/zhuishushenqi/widget/f;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/widget/f;->a()V

    .line 32
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->b:Lcom/ushaqi/zhuishushenqi/widget/f;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->b:Lcom/ushaqi/zhuishushenqi/widget/f;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/widget/f;->b()V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setIsShowConfirm(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->a:Z

    .line 46
    return-void
.end method

.method public setSplashAdContainerClickListener(Lcom/ushaqi/zhuishushenqi/widget/f;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/AdContainerLayout;->b:Lcom/ushaqi/zhuishushenqi/widget/f;

    .line 50
    return-void
.end method
