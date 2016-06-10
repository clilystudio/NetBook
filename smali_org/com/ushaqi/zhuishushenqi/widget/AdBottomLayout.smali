.class public Lcom/ushaqi/zhuishushenqi/widget/AdBottomLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/design/widget/K;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/AdBottomLayout;->b:F

    .line 18
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 29
    const/4 v0, 0x1

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setAreaBound(F)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/AdBottomLayout;->b:F

    .line 40
    return-void
.end method

.method public setSkipAd$500ea8a7(Landroid/support/design/widget/K;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/AdBottomLayout;->a:Landroid/support/design/widget/K;

    .line 36
    return-void
.end method
