.class public final Lcom/nostra13/universalimageloader/core/b/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:I

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/BitmapShader;

.field private f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 5

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->c:Landroid/graphics/RectF;

    .line 74
    int-to-float v0, p2

    iput v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->a:F

    .line 75
    iput p3, p0, Lcom/nostra13/universalimageloader/core/b/c;->b:I

    .line 77
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->e:Landroid/graphics/BitmapShader;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p3

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p3

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->d:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->f:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->f:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b/c;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 83
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nostra13/universalimageloader/core/b/c;->a:F

    iget v2, p0, Lcom/nostra13/universalimageloader/core/b/c;->a:F

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/b/c;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, -0x3

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 88
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/nostra13/universalimageloader/core/b/c;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nostra13/universalimageloader/core/b/c;->b:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/nostra13/universalimageloader/core/b/c;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/nostra13/universalimageloader/core/b/c;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b/c;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b/c;->c:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 93
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b/c;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 95
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 115
    return-void
.end method
