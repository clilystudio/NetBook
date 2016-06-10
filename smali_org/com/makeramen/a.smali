.class public final Lcom/makeramen/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/BitmapShader;

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Matrix;

.field private k:F

.field private l:Z

.field private m:F

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/widget/ImageView$ScaleType;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/a;->b:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    .line 39
    iput v3, p0, Lcom/makeramen/a;->k:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/makeramen/a;->l:Z

    .line 41
    iput v3, p0, Lcom/makeramen/a;->m:F

    .line 42
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/a;->n:Landroid/content/res/ColorStateList;

    .line 43
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/makeramen/a;->o:Landroid/widget/ImageView$ScaleType;

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/makeramen/a;->f:I

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/makeramen/a;->g:I

    .line 49
    iget-object v0, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/makeramen/a;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/makeramen/a;->d:Landroid/graphics/BitmapShader;

    .line 52
    iget-object v0, p0, Lcom/makeramen/a;->d:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/makeramen/a;->d:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/makeramen/a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/makeramen/a;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/makeramen/a;->m:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 76
    instance-of v0, p0, Lcom/makeramen/a;

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object p0

    .line 79
    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 80
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 81
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 84
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 86
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lcom/makeramen/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    invoke-static {p0}, Lcom/makeramen/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    new-instance p0, Lcom/makeramen/a;

    invoke-direct {p0, v0}, Lcom/makeramen/a;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, "RoundedDrawable"

    const-string v1, "Failed to create bitmap from drawable!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Lcom/makeramen/a;
    .locals 1

    .prologue
    .line 67
    if-eqz p0, :cond_0

    .line 68
    new-instance v0, Lcom/makeramen/a;

    invoke-direct {v0, p0}, Lcom/makeramen/a;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000

    const/high16 v4, 0x40000000

    .line 144
    sget-object v1, Lcom/makeramen/b;->a:[I

    iget-object v2, p0, Lcom/makeramen/a;->o:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 201
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 202
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 203
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 204
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/makeramen/a;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 232
    iget-object v0, p0, Lcom/makeramen/a;->d:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 233
    return-void

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 147
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 149
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 150
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/makeramen/a;->f:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/makeramen/a;->g:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 156
    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget v2, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v2, v4

    iget v3, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 158
    iget-object v1, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 163
    iget v1, p0, Lcom/makeramen/a;->f:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/makeramen/a;->g:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/makeramen/a;->g:I

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 165
    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/makeramen/a;->f:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v5

    .line 171
    :goto_1
    iget-object v3, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 172
    iget-object v2, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/makeramen/a;->m:F

    add-float/2addr v1, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/makeramen/a;->m:F

    add-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/makeramen/a;->f:I

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 168
    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/makeramen/a;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v5

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    .line 177
    :pswitch_3
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 179
    iget v0, p0, Lcom/makeramen/a;->f:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/makeramen/a;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 180
    const/high16 v0, 0x3f800000

    .line 186
    :goto_2
    iget-object v1, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/makeramen/a;->f:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    .line 187
    iget-object v2, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/makeramen/a;->g:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    .line 189
    iget-object v3, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 190
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 192
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 193
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 194
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 195
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/makeramen/a;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/makeramen/a;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    .line 208
    :pswitch_4
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 209
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 210
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 211
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 212
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 216
    :pswitch_5
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 217
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 218
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 219
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 220
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 224
    :pswitch_6
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 225
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v1, v4

    iget v2, p0, Lcom/makeramen/a;->m:F

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 226
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 227
    iget-object v0, p0, Lcom/makeramen/a;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/a;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 103
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 104
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 111
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(F)Lcom/makeramen/a;
    .locals 0

    .prologue
    .line 307
    iput p1, p0, Lcom/makeramen/a;->k:F

    .line 308
    return-object p0
.end method

.method public final a(Landroid/content/res/ColorStateList;)Lcom/makeramen/a;
    .locals 4

    .prologue
    .line 334
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/makeramen/a;->n:Landroid/content/res/ColorStateList;

    .line 335
    iget-object v0, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/makeramen/a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/makeramen/a;->getState()[I

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 336
    return-object p0

    .line 334
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/a;
    .locals 1

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/makeramen/a;->o:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 357
    iput-object p1, p0, Lcom/makeramen/a;->o:Landroid/widget/ImageView$ScaleType;

    .line 358
    invoke-direct {p0}, Lcom/makeramen/a;->a()V

    .line 360
    :cond_1
    return-object p0
.end method

.method public final a(Z)Lcom/makeramen/a;
    .locals 0

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/makeramen/a;->l:Z

    .line 345
    return-object p0
.end method

.method public final b(F)Lcom/makeramen/a;
    .locals 2

    .prologue
    .line 316
    iput p1, p0, Lcom/makeramen/a;->m:F

    .line 317
    iget-object v0, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/makeramen/a;->m:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 318
    return-object p0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/makeramen/a;->l:Z

    if-eqz v0, :cond_1

    .line 248
    iget v0, p0, Lcom/makeramen/a;->m:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/makeramen/a;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 250
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 263
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/makeramen/a;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 255
    :cond_1
    iget v0, p0, Lcom/makeramen/a;->m:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/makeramen/a;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->k:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/makeramen/a;->k:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lcom/makeramen/a;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->k:F

    iget v2, p0, Lcom/makeramen/a;->k:F

    iget-object v3, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/makeramen/a;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/a;->k:F

    iget v2, p0, Lcom/makeramen/a;->k:F

    iget-object v3, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/makeramen/a;->g:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/makeramen/a;->f:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, -0x3

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/makeramen/a;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 239
    iget-object v0, p0, Lcom/makeramen/a;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 241
    invoke-direct {p0}, Lcom/makeramen/a;->a()V

    .line 242
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/makeramen/a;->n:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/makeramen/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    invoke-virtual {p0}, Lcom/makeramen/a;->invalidateSelf()V

    .line 274
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 279
    invoke-virtual {p0}, Lcom/makeramen/a;->invalidateSelf()V

    .line 280
    return-void
.end method

.method public final setDither(Z)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/makeramen/a;->invalidateSelf()V

    .line 285
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/makeramen/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/makeramen/a;->invalidateSelf()V

    .line 290
    return-void
.end method
