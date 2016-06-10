.class public Lcom/ushaqi/zhuishushenqi/view/CropView;
.super Luk/co/senab/photoview/PhotoView;
.source "SourceFile"


# instance fields
.field private a:Luk/co/senab/photoview/d;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->b()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->b()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->b()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/view/CropView;)F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->c:F

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/view/CropView;)F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->b:F

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->b:F

    .line 43
    new-instance v0, Luk/co/senab/photoview/d;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/d;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->a:Luk/co/senab/photoview/d;

    .line 44
    return-void
.end method

.method private c()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/high16 v3, 0x40000000

    .line 141
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->b:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 142
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->b:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 143
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->b:F

    .line 144
    iget v3, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->b:F

    .line 145
    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/view/CropView;)Luk/co/senab/photoview/d;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->a:Luk/co/senab/photoview/d;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->invalidate()V

    .line 128
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->c()Landroid/graphics/RectF;

    move-result-object v1

    .line 132
    :try_start_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000

    .line 82
    invoke-super {p0, p1}, Luk/co/senab/photoview/PhotoView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->c()Landroid/graphics/RectF;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 86
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 97
    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 98
    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 99
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 100
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 101
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 104
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 105
    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 106
    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 107
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 108
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 110
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 111
    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 112
    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 113
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 114
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 115
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 117
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 118
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 119
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 120
    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v4

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 121
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 122
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 124
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0}, Luk/co/senab/photoview/PhotoView;->onFinishInflate()V

    .line 49
    const v0, 0x106000c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->setBackgroundResource(I)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->setDrawingCacheEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/ushaqi/zhuishushenqi/view/b;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/view/b;-><init>(Lcom/ushaqi/zhuishushenqi/view/CropView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 72
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/view/CropView;->c:F

    .line 77
    invoke-super {p0, p1}, Luk/co/senab/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    return-void
.end method
