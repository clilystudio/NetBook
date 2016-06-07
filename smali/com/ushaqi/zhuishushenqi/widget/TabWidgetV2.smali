.class public Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;
.super Landroid/widget/TabWidget;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:Landroid/graphics/Bitmap;

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->TabWidgetV2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->e:I

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    .line 37
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Item count can\'t be zero"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p1

    .line 42
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/design/widget/am;->b(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    int-to-double v2, v0

    const-wide v4, 0x4000cccccccccccdL    # 2.1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 44
    int-to-float v2, v0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    .line 45
    sub-int v2, v1, v0

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->g:I

    .line 46
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->e:I

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    div-int/2addr v0, v2

    .line 47
    int-to-float v0, v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->h:F

    .line 49
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    const-string v2, "customer_night_theme"

    invoke-static {p1, v2, v6}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const v2, 0x7f02008a

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Landroid/support/design/widget/am;->a(IIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->d:Landroid/graphics/Bitmap;

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->f:I

    .line 57
    return-void

    .line 53
    :cond_1
    const v2, 0x7f0200be

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Landroid/support/design/widget/am;->a(IIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->d:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .prologue
    .line 94
    int-to-float v0, p2

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 95
    int-to-float v1, p1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->c:F

    .line 96
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->invalidate()V

    .line 97
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 70
    .line 1086
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 70
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->e:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 79
    :goto_1
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->c:F

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 80
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->d:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 83
    return-void

    .line 1086
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 73
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    sub-float/2addr v0, v1

    goto :goto_1

    .line 74
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 75
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->g:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_1

    .line 77
    :cond_3
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_1
.end method

.method public setIndex(I)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a(II)V

    .line 91
    return-void
.end method

.method public setItemCount(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 60
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    .line 61
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Landroid/support/design/widget/am;->b(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 62
    int-to-float v1, v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    .line 63
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->e:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a:I

    div-int/2addr v0, v1

    .line 64
    int-to-float v0, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->b:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->h:F

    .line 65
    return-void
.end method
