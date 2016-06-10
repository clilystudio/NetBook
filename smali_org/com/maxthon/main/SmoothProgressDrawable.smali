.class public Lcom/maxthon/main/SmoothProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final FRAME_DURATION:J = 0x10L

.field private static final OFFSET_PER_FRAME:F = 0.01f


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mColors:[I

.field private mColorsIndex:I

.field private mCurrentOffset:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxOffset:F

.field private mMirrorMode:Z

.field private mNewTurn:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mReversed:Z

.field private mRunning:Z

.field private mSectionsCount:I

.field private mSeparatorLength:I

.field private mSpeed:F

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/view/animation/Interpolator;II[IFFZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 258
    new-instance v0, Lcom/maxthon/main/SmoothProgressDrawable$1;

    invoke-direct {v0, p0}, Lcom/maxthon/main/SmoothProgressDrawable$1;-><init>(Lcom/maxthon/main/SmoothProgressDrawable;)V

    iput-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 42
    iput-boolean v2, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mRunning:Z

    .line 43
    iput-object p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 44
    iput p2, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSectionsCount:I

    .line 45
    iput p3, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSeparatorLength:I

    .line 46
    iput p6, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSpeed:F

    .line 47
    iput-boolean p7, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mReversed:Z

    .line 48
    iput-object p4, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColors:[I

    .line 49
    iput v2, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColorsIndex:I

    .line 50
    iput-boolean p8, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMirrorMode:Z

    .line 52
    const/high16 v0, 0x3f800000

    iget v1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMaxOffset:F

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 58
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IFFZZLcom/maxthon/main/SmoothProgressDrawable;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p8}, Lcom/maxthon/main/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFZZ)V

    return-void
.end method

.method static synthetic access$0(Lcom/maxthon/main/SmoothProgressDrawable;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$1(Lcom/maxthon/main/SmoothProgressDrawable;)F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSpeed:F

    return v0
.end method

.method static synthetic access$2(Lcom/maxthon/main/SmoothProgressDrawable;F)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mCurrentOffset:F

    return-void
.end method

.method static synthetic access$3(Lcom/maxthon/main/SmoothProgressDrawable;)F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMaxOffset:F

    return v0
.end method

.method static synthetic access$4(Lcom/maxthon/main/SmoothProgressDrawable;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mNewTurn:Z

    return-void
.end method

.method static synthetic access$5(Lcom/maxthon/main/SmoothProgressDrawable;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private decrementColor(I)I
    .locals 1

    .prologue
    .line 211
    add-int/lit8 v0, p1, -0x1

    .line 212
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 213
    :cond_0
    return v0
.end method

.method private drawLine(Landroid/graphics/Canvas;IFFFFI)V
    .locals 6

    .prologue
    .line 187
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColors:[I

    aget v1, v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMirrorMode:Z

    if-nez v0, :cond_0

    .line 190
    iget-object v5, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    return-void

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mReversed:Z

    if-eqz v0, :cond_1

    .line 193
    int-to-float v0, p2

    add-float v1, v0, p3

    int-to-float v0, p2

    add-float v3, v0, p5

    iget-object v5, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 194
    int-to-float v0, p2

    sub-float v1, v0, p3

    int-to-float v0, p2

    sub-float v3, v0, p5

    iget-object v5, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 197
    shl-int/lit8 v0, p2, 0x1

    int-to-float v0, v0

    sub-float v1, v0, p3

    shl-int/lit8 v0, p2, 0x1

    int-to-float v0, v0

    sub-float v3, v0, p5

    iget-object v5, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawStrokes(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 141
    iget-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v0, :cond_0

    div-int/lit8 v2, v2, 0x2

    .line 142
    :cond_0
    iget v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSeparatorLength:I

    add-int/2addr v0, v2

    iget v3, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSectionsCount:I

    add-int v10, v0, v3

    .line 143
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    .line 144
    const/high16 v0, 0x3f800000

    iget v3, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v3, v3

    div-float v12, v0, v3

    .line 147
    iget-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mNewTurn:Z

    if-eqz v0, :cond_1

    .line 148
    iget v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColorsIndex:I

    invoke-direct {p0, v0}, Lcom/maxthon/main/SmoothProgressDrawable;->decrementColor(I)I

    move-result v0

    iput v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColorsIndex:I

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mNewTurn:Z

    .line 159
    :cond_1
    iget v7, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColorsIndex:I

    .line 161
    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    :goto_0
    iget v1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSectionsCount:I

    if-le v8, v1, :cond_2

    .line 184
    return-void

    .line 162
    :cond_2
    int-to-float v1, v8

    mul-float/2addr v1, v12

    iget v3, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mCurrentOffset:F

    add-float/2addr v1, v3

    .line 163
    const/4 v3, 0x0

    sub-float v4, v1, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 165
    iget-object v4, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 166
    iget-object v5, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x3f800000

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 165
    sub-float v1, v4, v1

    .line 164
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 167
    int-to-float v4, v10

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v4, v1

    .line 169
    add-float v1, v4, v3

    int-to-float v3, v10

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    .line 170
    iget v1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v9, v1

    .line 174
    :goto_1
    cmpl-float v1, v4, v9

    if-lez v1, :cond_5

    sub-float v1, v4, v9

    .line 175
    :goto_2
    add-float v13, v0, v1

    .line 176
    cmpl-float v1, v13, v0

    if-lez v1, :cond_3

    .line 178
    int-to-float v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v4, v11

    int-to-float v0, v2

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v6, v11

    move-object v0, p0

    move-object v1, p1

    .line 177
    invoke-direct/range {v0 .. v7}, Lcom/maxthon/main/SmoothProgressDrawable;->drawLine(Landroid/graphics/Canvas;IFFFFI)V

    .line 181
    :cond_3
    add-float v1, v13, v9

    .line 182
    invoke-direct {p0, v7}, Lcom/maxthon/main/SmoothProgressDrawable;->incrementColor(I)I

    move-result v7

    .line 161
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v1

    goto :goto_0

    .line 172
    :cond_4
    const/4 v1, 0x0

    move v9, v1

    goto :goto_1

    .line 174
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private incrementColor(I)I
    .locals 2

    .prologue
    .line 205
    add-int/lit8 v0, p1, 0x1

    .line 206
    iget-object v1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColors:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 207
    :cond_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    .line 126
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 128
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 130
    iget-boolean v1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mReversed:Z

    if-eqz v1, :cond_0

    .line 131
    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    const/high16 v0, -0x40800000

    const/high16 v1, 0x3f800000

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/maxthon/main/SmoothProgressDrawable;->drawStrokes(Landroid/graphics/Canvas;)V

    .line 136
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mRunning:Z

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mRunning:Z

    .line 250
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 251
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/maxthon/main/SmoothProgressDrawable;->setColors([I)V

    .line 79
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 224
    return-void
.end method

.method public setColors([I)V
    .locals 2

    .prologue
    .line 70
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColorsIndex:I

    .line 73
    iput-object p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mColors:[I

    .line 74
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    .line 75
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 64
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    .line 67
    return-void
.end method

.method public setMirrorMode(Z)V
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMirrorMode:Z

    if-ne v0, p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iput-boolean p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMirrorMode:Z

    .line 117
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setReversed(Z)V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mReversed:Z

    if-ne v0, p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-boolean p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mReversed:Z

    .line 111
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setSectionsCount(I)V
    .locals 2

    .prologue
    .line 88
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSectionsCount:I

    .line 90
    const/high16 v0, 0x3f800000

    iget v1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMaxOffset:F

    .line 91
    iget v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mCurrentOffset:F

    iget v1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mMaxOffset:F

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mCurrentOffset:F

    .line 92
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    .line 93
    return-void
.end method

.method public setSeparatorLength(I)V
    .locals 2

    .prologue
    .line 96
    if-gez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSeparatorLength:I

    .line 99
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    .line 100
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput p1, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mSpeed:F

    .line 84
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    .line 85
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The strokeWidth must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    .line 106
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/maxthon/main/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 237
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/maxthon/main/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mRunning:Z

    .line 244
    iget-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/maxthon/main/SmoothProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
