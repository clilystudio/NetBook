.class public Lcom/makeramen/RoundedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final a:[Landroid/widget/ImageView$ScaleType;

.field private static synthetic k:Z


# instance fields
.field private b:F

.field private c:F

.field private d:Landroid/content/res/ColorStateList;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    const-class v0, Lcom/makeramen/RoundedImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/makeramen/RoundedImageView;->k:Z

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/makeramen/RoundedImageView;->a:[Landroid/widget/ImageView$ScaleType;

    return-void

    :cond_0
    move v0, v2

    .line 15
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    iput v0, p0, Lcom/makeramen/RoundedImageView;->b:F

    .line 33
    iput v0, p0, Lcom/makeramen/RoundedImageView;->c:F

    .line 34
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 36
    iput-boolean v1, p0, Lcom/makeramen/RoundedImageView;->e:Z

    .line 37
    iput-boolean v1, p0, Lcom/makeramen/RoundedImageView;->f:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/makeramen/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, -0x1000000

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v3, p0, Lcom/makeramen/RoundedImageView;->b:F

    .line 33
    iput v3, p0, Lcom/makeramen/RoundedImageView;->c:F

    .line 34
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 36
    iput-boolean v4, p0, Lcom/makeramen/RoundedImageView;->e:Z

    .line 37
    iput-boolean v4, p0, Lcom/makeramen/RoundedImageView;->f:Z

    .line 56
    sget-object v0, Lcom/makeramen/R$styleable;->RoundedImageView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 59
    if-ltz v1, :cond_3

    .line 60
    sget-object v2, Lcom/makeramen/RoundedImageView;->a:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/makeramen/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    :goto_0
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/makeramen/RoundedImageView;->b:F

    .line 67
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/makeramen/RoundedImageView;->c:F

    .line 70
    iget v1, p0, Lcom/makeramen/RoundedImageView;->b:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 71
    iput v3, p0, Lcom/makeramen/RoundedImageView;->b:F

    .line 73
    :cond_0
    iget v1, p0, Lcom/makeramen/RoundedImageView;->c:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 74
    iput v3, p0, Lcom/makeramen/RoundedImageView;->c:F

    .line 77
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/makeramen/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 78
    iget-object v1, p0, Lcom/makeramen/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_2

    .line 79
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/makeramen/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 82
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/makeramen/RoundedImageView;->f:Z

    .line 83
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/makeramen/RoundedImageView;->e:Z

    .line 85
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 86
    invoke-direct {p0, v7}, Lcom/makeramen/RoundedImageView;->a(Z)V

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void

    .line 63
    :cond_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/makeramen/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 176
    if-nez v1, :cond_0

    .line 189
    :goto_0
    return-object v0

    .line 180
    :cond_0
    iget v2, p0, Lcom/makeramen/RoundedImageView;->g:I

    if-eqz v2, :cond_1

    .line 182
    :try_start_0
    iget v2, p0, Lcom/makeramen/RoundedImageView;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/makeramen/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    const-string v2, "RoundedImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to find resource: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/makeramen/RoundedImageView;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lcom/makeramen/RoundedImageView;->g:I

    goto :goto_1
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 211
    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    instance-of v0, p1, Lcom/makeramen/a;

    if-eqz v0, :cond_2

    .line 214
    check-cast p1, Lcom/makeramen/a;

    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->j:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lcom/makeramen/a;->a(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/a;

    move-result-object v0

    iget v1, p0, Lcom/makeramen/RoundedImageView;->b:F

    invoke-virtual {v0, v1}, Lcom/makeramen/a;->a(F)Lcom/makeramen/a;

    move-result-object v0

    iget v1, p0, Lcom/makeramen/RoundedImageView;->c:F

    invoke-virtual {v0, v1}, Lcom/makeramen/a;->b(F)Lcom/makeramen/a;

    move-result-object v0

    iget-object v1, p0, Lcom/makeramen/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/makeramen/a;->a(Landroid/content/res/ColorStateList;)Lcom/makeramen/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/makeramen/RoundedImageView;->e:Z

    invoke-virtual {v0, v1}, Lcom/makeramen/a;->a(Z)Lcom/makeramen/a;

    goto :goto_0

    .line 220
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 222
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_0

    .line 224
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/makeramen/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->f:Z

    if-eqz v0, :cond_1

    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/makeramen/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_1
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 199
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 94
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    .line 95
    return-void
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->j:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/makeramen/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    iput-object p1, p0, Lcom/makeramen/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Z)V

    .line 234
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->i:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .prologue
    .line 275
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    .line 276
    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    iput-object p1, p0, Lcom/makeramen/RoundedImageView;->d:Landroid/content/res/ColorStateList;

    .line 287
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Z)V

    .line 289
    iget v0, p0, Lcom/makeramen/RoundedImageView;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0

    .line 285
    :cond_2
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(F)V
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/makeramen/RoundedImageView;->c:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_0
    iput p1, p0, Lcom/makeramen/RoundedImageView;->c:F

    .line 265
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Z)V

    .line 267
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/makeramen/RoundedImageView;->setBorderWidth(F)V

    .line 259
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/makeramen/RoundedImageView;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 248
    :cond_0
    iput p1, p0, Lcom/makeramen/RoundedImageView;->b:F

    .line 249
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Z)V

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/makeramen/RoundedImageView;->setCornerRadius(F)V

    .line 243
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/RoundedImageView;->g:I

    .line 154
    invoke-static {p1}, Lcom/makeramen/a;->a(Landroid/graphics/Bitmap;)Lcom/makeramen/a;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 156
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/RoundedImageView;->g:I

    .line 146
    invoke-static {p1}, Lcom/makeramen/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 148
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/makeramen/RoundedImageView;->g:I

    if-eq v0, p1, :cond_0

    .line 162
    iput p1, p0, Lcom/makeramen/RoundedImageView;->g:I

    .line 163
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 165
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->h:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 171
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    return-void
.end method

.method public setMutateBackground(Z)V
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/makeramen/RoundedImageView;->f:Z

    if-ne v0, p1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    iput-boolean p1, p0, Lcom/makeramen/RoundedImageView;->f:Z

    .line 313
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setOval(Z)V
    .locals 1

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/makeramen/RoundedImageView;->e:Z

    .line 300
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    .line 303
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .prologue
    .line 117
    sget-boolean v0, Lcom/makeramen/RoundedImageView;->k:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/makeramen/RoundedImageView;->j:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 120
    iput-object p1, p0, Lcom/makeramen/RoundedImageView;->j:Landroid/widget/ImageView$ScaleType;

    .line 122
    sget-object v0, Lcom/makeramen/c;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    :goto_0
    invoke-direct {p0}, Lcom/makeramen/RoundedImageView;->b()V

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/RoundedImageView;->a(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/makeramen/RoundedImageView;->invalidate()V

    .line 141
    :cond_1
    return-void

    .line 130
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
