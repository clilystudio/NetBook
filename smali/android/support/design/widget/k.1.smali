.class final Landroid/support/design/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private A:F

.field private B:F

.field private final C:Landroid/text/TextPaint;

.field private D:Landroid/view/animation/Interpolator;

.field private E:Landroid/view/animation/Interpolator;

.field private final c:Landroid/view/View;

.field private d:F

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:Ljava/lang/CharSequence;

.field private p:Ljava/lang/CharSequence;

.field private q:F

.field private r:Z

.field private s:Z

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Paint;

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/k;->a:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/k;->b:Landroid/graphics/Paint;

    .line 49
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v0, 0x10

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Landroid/support/design/widget/k;->g:I

    .line 58
    iput v0, p0, Landroid/support/design/widget/k;->h:I

    .line 90
    iput-object p1, p0, Landroid/support/design/widget/k;->c:Landroid/view/View;

    .line 92
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    .line 93
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/k;->f:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    .line 97
    return-void
.end method

.method private static a(FFFLandroid/view/animation/Interpolator;)F
    .locals 1

    .prologue
    .line 493
    if-eqz p3, :cond_0

    .line 494
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 496
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method private static a(FF)Z
    .locals 2

    .prologue
    .line 465
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 220
    iget v8, p0, Landroid/support/design/widget/k;->d:F

    .line 222
    iget-object v0, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/design/widget/k;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/design/widget/k;->D:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, v8, v3}, Landroid/support/design/widget/k;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/k;->x:F

    .line 224
    iget v0, p0, Landroid/support/design/widget/k;->m:F

    iget v1, p0, Landroid/support/design/widget/k;->n:F

    iget-object v3, p0, Landroid/support/design/widget/k;->D:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, v8, v3}, Landroid/support/design/widget/k;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/k;->z:F

    .line 225
    iget-object v0, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/design/widget/k;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/design/widget/k;->D:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, v8, v3}, Landroid/support/design/widget/k;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/k;->y:F

    .line 227
    iget v0, p0, Landroid/support/design/widget/k;->i:F

    iget v1, p0, Landroid/support/design/widget/k;->j:F

    iget-object v3, p0, Landroid/support/design/widget/k;->E:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, v8, v3}, Landroid/support/design/widget/k;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    .line 1344
    iget-object v0, p0, Landroid/support/design/widget/k;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1350
    iget v0, p0, Landroid/support/design/widget/k;->j:F

    invoke-static {v3, v0}, Landroid/support/design/widget/k;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1351
    iget-object v0, p0, Landroid/support/design/widget/k;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    .line 1352
    iget v0, p0, Landroid/support/design/widget/k;->j:F

    .line 1353
    iput v9, p0, Landroid/support/design/widget/k;->A:F

    move v3, v1

    move v1, v0

    .line 1367
    :goto_0
    cmpl-float v0, v3, v4

    if-lez v0, :cond_f

    .line 1368
    iget v0, p0, Landroid/support/design/widget/k;->B:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    move v0, v7

    .line 1369
    :goto_1
    iput v1, p0, Landroid/support/design/widget/k;->B:F

    .line 1372
    :goto_2
    iget-object v1, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    .line 1373
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/k;->B:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1376
    iget-object v0, p0, Landroid/support/design/widget/k;->o:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v3, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1378
    iget-object v1, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1379
    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    .line 1381
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    .line 2336
    iget-object v0, p0, Landroid/support/design/widget/k;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v7, :cond_9

    move v0, v7

    .line 2338
    :goto_3
    if-eqz v0, :cond_a

    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 1381
    iput-boolean v0, p0, Landroid/support/design/widget/k;->r:Z

    .line 1382
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/k;->q:F

    .line 1386
    :cond_3
    sget-boolean v0, Landroid/support/design/widget/k;->a:Z

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/support/design/widget/k;->A:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_b

    move v0, v7

    :goto_5
    iput-boolean v0, p0, Landroid/support/design/widget/k;->s:Z

    .line 1388
    iget-boolean v0, p0, Landroid/support/design/widget/k;->s:Z

    if-eqz v0, :cond_4

    .line 2397
    iget-object v0, p0, Landroid/support/design/widget/k;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1393
    :cond_4
    :goto_6
    iget-object v0, p0, Landroid/support/design/widget/k;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 230
    :cond_5
    iget v0, p0, Landroid/support/design/widget/k;->l:I

    iget v1, p0, Landroid/support/design/widget/k;->k:I

    if-eq v0, v1, :cond_e

    .line 233
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/k;->k:I

    iget v2, p0, Landroid/support/design/widget/k;->l:I

    .line 2483
    sub-float v3, v9, v8

    .line 2484
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    .line 2485
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 2486
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 2487
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    .line 2488
    float-to-int v2, v4

    float-to-int v3, v5

    float-to-int v4, v6

    float-to-int v1, v1

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 238
    :goto_7
    iget-object v0, p0, Landroid/support/design/widget/k;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 239
    return-void

    .line 1355
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    .line 1356
    iget v0, p0, Landroid/support/design/widget/k;->i:F

    .line 1358
    iget v5, p0, Landroid/support/design/widget/k;->i:F

    invoke-static {v3, v5}, Landroid/support/design/widget/k;->a(FF)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1360
    iput v9, p0, Landroid/support/design/widget/k;->A:F

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    .line 1363
    :cond_7
    iget v5, p0, Landroid/support/design/widget/k;->i:F

    div-float/2addr v3, v5

    iput v3, p0, Landroid/support/design/widget/k;->A:F

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 1368
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 2336
    goto/16 :goto_3

    .line 2338
    :cond_a
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto/16 :goto_4

    :cond_b
    move v0, v2

    .line 1386
    goto/16 :goto_5

    .line 2402
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/k;->i:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2403
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/k;->k:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2405
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2406
    iget-object v1, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v3, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2407
    int-to-float v1, v0

    iput v1, p0, Landroid/support/design/widget/k;->q:F

    .line 2409
    if-gtz v0, :cond_d

    if-lez v5, :cond_4

    .line 2413
    :cond_d
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/k;->t:Landroid/graphics/Bitmap;

    .line 2415
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/design/widget/k;->t:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2416
    iget-object v1, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2418
    iget-object v0, p0, Landroid/support/design/widget/k;->u:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    .line 2420
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/k;->u:Landroid/graphics/Paint;

    .line 2421
    iget-object v0, p0, Landroid/support/design/widget/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2422
    iget-object v0, p0, Landroid/support/design/widget/k;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto/16 :goto_6

    .line 235
    :cond_e
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/k;->l:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_7

    :cond_f
    move v0, v2

    goto/16 :goto_2
.end method

.method private g()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/design/widget/k;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroid/support/design/widget/k;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/k;->t:Landroid/graphics/Bitmap;

    .line 458
    :cond_0
    return-void
.end method


# virtual methods
.method final a()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Landroid/support/design/widget/k;->d:F

    return v0
.end method

.method final a(F)V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/support/design/widget/k;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 111
    iput p1, p0, Landroid/support/design/widget/k;->i:F

    .line 112
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 114
    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/k;->l:I

    if-eq v0, p1, :cond_0

    .line 125
    iput p1, p0, Landroid/support/design/widget/k;->l:I

    .line 126
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 128
    :cond_0
    return-void
.end method

.method final a(IIII)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 284
    iget-object v0, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 285
    iget-boolean v4, p0, Landroid/support/design/widget/k;->r:Z

    .line 287
    if-eqz v4, :cond_3

    iget v0, p0, Landroid/support/design/widget/k;->y:F

    .line 288
    :goto_0
    iget v5, p0, Landroid/support/design/widget/k;->z:F

    .line 290
    iget-boolean v1, p0, Landroid/support/design/widget/k;->s:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/k;->t:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 296
    :goto_1
    iget-object v3, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget v6, p0, Landroid/support/design/widget/k;->B:F

    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 298
    if-eqz v1, :cond_5

    .line 299
    iget v3, p0, Landroid/support/design/widget/k;->v:F

    iget v6, p0, Landroid/support/design/widget/k;->A:F

    mul-float/2addr v3, v6

    .line 312
    :goto_2
    if-eqz v1, :cond_0

    .line 313
    add-float/2addr v5, v3

    .line 316
    :cond_0
    iget v3, p0, Landroid/support/design/widget/k;->A:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    .line 317
    iget v3, p0, Landroid/support/design/widget/k;->A:F

    iget v6, p0, Landroid/support/design/widget/k;->A:F

    invoke-virtual {p1, v3, v6, v0, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 320
    :cond_1
    if-eqz v4, :cond_7

    .line 321
    iget v3, p0, Landroid/support/design/widget/k;->q:F

    sub-float v4, v0, v3

    .line 324
    :goto_3
    if-eqz v1, :cond_6

    .line 326
    iget-object v0, p0, Landroid/support/design/widget/k;->t:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/design/widget/k;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 332
    :cond_2
    :goto_4
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 333
    return-void

    .line 287
    :cond_3
    iget v0, p0, Landroid/support/design/widget/k;->x:F

    goto :goto_0

    :cond_4
    move v1, v2

    .line 290
    goto :goto_1

    .line 302
    :cond_5
    iget-object v3, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    const/4 v3, 0x0

    .line 303
    iget-object v6, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    goto :goto_2

    .line 328
    :cond_6
    iget-object v1, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    move v4, v0

    goto :goto_3
.end method

.method final a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Landroid/support/design/widget/k;->E:Landroid/view/animation/Interpolator;

    .line 101
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 102
    return-void
.end method

.method final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 441
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/k;->o:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/k;->o:Ljava/lang/CharSequence;

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/k;->p:Ljava/lang/CharSequence;

    .line 444
    invoke-direct {p0}, Landroid/support/design/widget/k;->g()V

    .line 445
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 447
    :cond_1
    return-void
.end method

.method final b()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/support/design/widget/k;->i:F

    return v0
.end method

.method final b(F)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 199
    .line 1026
    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    move p1, v0

    .line 201
    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/design/widget/k;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 202
    iput p1, p0, Landroid/support/design/widget/k;->d:F

    .line 203
    invoke-direct {p0}, Landroid/support/design/widget/k;->f()V

    .line 205
    :cond_1
    return-void

    .line 1026
    :cond_2
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/support/design/widget/k;->k:I

    if-eq v0, p1, :cond_0

    .line 132
    iput p1, p0, Landroid/support/design/widget/k;->k:I

    .line 133
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 135
    :cond_0
    return-void
.end method

.method final b(IIII)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/design/widget/k;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    return-void
.end method

.method final b(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Landroid/support/design/widget/k;->D:Landroid/view/animation/Interpolator;

    .line 106
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 107
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 427
    iget-object v0, p0, Landroid/support/design/widget/k;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/k;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 3243
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/k;->j:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3244
    iget v0, p0, Landroid/support/design/widget/k;->h:I

    sparse-switch v0, :sswitch_data_0

    .line 3253
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3254
    div-float/2addr v0, v2

    iget-object v1, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3255
    iget-object v1, p0, Landroid/support/design/widget/k;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/k;->n:F

    .line 3259
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/k;->i:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3260
    iget v0, p0, Landroid/support/design/widget/k;->g:I

    sparse-switch v0, :sswitch_data_1

    .line 3269
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3270
    div-float/2addr v0, v2

    iget-object v1, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3271
    iget-object v1, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/k;->m:F

    .line 3274
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/k;->v:F

    .line 3275
    iget-object v0, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/k;->w:F

    .line 3278
    invoke-direct {p0}, Landroid/support/design/widget/k;->g()V

    .line 431
    invoke-direct {p0}, Landroid/support/design/widget/k;->f()V

    .line 433
    :cond_0
    return-void

    .line 3246
    :sswitch_0
    iget-object v0, p0, Landroid/support/design/widget/k;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/k;->n:F

    goto :goto_0

    .line 3249
    :sswitch_1
    iget-object v0, p0, Landroid/support/design/widget/k;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/k;->n:F

    goto :goto_0

    .line 3262
    :sswitch_2
    iget-object v0, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/k;->m:F

    goto :goto_1

    .line 3265
    :sswitch_3
    iget-object v0, p0, Landroid/support/design/widget/k;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/design/widget/k;->C:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/k;->m:F

    goto :goto_1

    .line 3244
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 3260
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method final c(I)V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 148
    iget v0, p0, Landroid/support/design/widget/k;->g:I

    if-eq v0, v1, :cond_0

    .line 149
    iput v1, p0, Landroid/support/design/widget/k;->g:I

    .line 150
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 152
    :cond_0
    return-void
.end method

.method final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/support/design/widget/k;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final d(I)V
    .locals 2

    .prologue
    const/16 v1, 0x30

    .line 157
    iget v0, p0, Landroid/support/design/widget/k;->h:I

    if-eq v0, v1, :cond_0

    .line 158
    iput v1, p0, Landroid/support/design/widget/k;->h:I

    .line 159
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 161
    :cond_0
    return-void
.end method

.method final e()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Landroid/support/design/widget/k;->l:I

    return v0
.end method

.method final e(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/k;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/k;->l:I

    .line 168
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/k;->j:F

    .line 172
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 175
    return-void
.end method

.method final f(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Landroid/support/design/widget/k;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/k;->k:I

    .line 182
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    sget v1, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/k;->i:F

    .line 186
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    invoke-virtual {p0}, Landroid/support/design/widget/k;->c()V

    .line 189
    return-void
.end method
