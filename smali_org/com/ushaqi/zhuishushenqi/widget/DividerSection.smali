.class public Lcom/ushaqi/zhuishushenqi/widget/DividerSection;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field private final b:Landroid/view/View;

.field private final c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->b:Landroid/view/View;

    .line 29
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->DividerSection:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->c:Landroid/graphics/drawable/Drawable;

    .line 1046
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 36
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->addView(Landroid/view/View;)V

    .line 39
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->a:Landroid/widget/FrameLayout;

    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->a:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 43
    return-void

    .line 1049
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "customer_night_theme"

    invoke-static {v1, v2, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->b:Landroid/view/View;

    const v2, 0x7f020283

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->b:Landroid/view/View;

    const v2, 0x7f020287

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setDividerMatchParent()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    return-void
.end method
