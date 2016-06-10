.class public Lcom/maxthon/main/SmoothProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mColors:[I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mReversed:Z

.field private mSectionsCount:I

.field private mSpeed:F

.field private mStrokeSeparatorLength:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-direct {p0, p1}, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->initValues(Landroid/content/Context;)V

    .line 292
    return-void
.end method

.method private initValues(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 301
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 302
    sget v1, Lcom/maxthon/mge/R$integer;->spb_default_sections_count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 303
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/maxthon/mge/R$color;->spb_default_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mColors:[I

    .line 304
    sget v1, Lcom/maxthon/mge/R$string;->spb_default_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 305
    sget v1, Lcom/maxthon/mge/R$bool;->spb_default_reversed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 307
    sget v1, Lcom/maxthon/mge/R$dimen;->spb_default_stroke_separator_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 308
    sget v1, Lcom/maxthon/mge/R$dimen;->spb_default_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 309
    return-void
.end method


# virtual methods
.method public build()Lcom/maxthon/main/SmoothProgressDrawable;
    .locals 10

    .prologue
    .line 295
    new-instance v0, Lcom/maxthon/main/SmoothProgressDrawable;

    iget-object v1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mSectionsCount:I

    iget v3, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    iget-object v4, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mColors:[I

    iget v5, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    iget v6, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mSpeed:F

    iget-boolean v7, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mReversed:Z

    iget-boolean v8, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/maxthon/main/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFZZLcom/maxthon/main/SmoothProgressDrawable;)V

    .line 296
    return-object v0
.end method

.method public color(I)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mColors:[I

    .line 333
    return-object p0
.end method

.method public colors([I)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 2

    .prologue
    .line 337
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your color array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_1
    iput-object p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mColors:[I

    .line 340
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 2

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 315
    return-object p0
.end method

.method public mirrorMode(Z)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 0

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    .line 362
    return-object p0
.end method

.method public reversed(Z)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 0

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 357
    return-object p0
.end method

.method public sectionsCount(I)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 2

    .prologue
    .line 319
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iput p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 321
    return-object p0
.end method

.method public separatorLength(I)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 2

    .prologue
    .line 325
    if-gez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    iput p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 328
    return-object p0
.end method

.method public speed(F)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 2

    .prologue
    .line 350
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iput p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 352
    return-object p0
.end method

.method public strokeWidth(F)Lcom/maxthon/main/SmoothProgressDrawable$Builder;
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iput p1, p0, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 346
    return-object p0
.end method
