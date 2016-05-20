.class public Lcom/ushaqi/zhuishushenqi/widget/ProgressView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:Landroid/graphics/Path;

.field private H:Landroid/graphics/Path;

.field private I:I

.field private J:F

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:F

.field private O:F

.field private P:F

.field private Q:[F

.field private R:Landroid/support/design/widget/K;

.field private final a:F

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:Landroid/graphics/RectF;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x87

    const/16 v3, 0xff

    const/16 v2, 0x8a

    const/16 v1, 0x4a

    .line 70
    const-string v0, "#d6d6d6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b:I

    .line 71
    const-string v0, "#5FB14D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->c:I

    .line 72
    const/16 v0, 0xeb

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->d:I

    .line 73
    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->e:I

    .line 74
    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 866
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    .line 167
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->v:Landroid/graphics/RectF;

    .line 172
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->d:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    .line 177
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->e:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    .line 182
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->f:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->y:I

    .line 187
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    .line 192
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->A:I

    .line 197
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->c:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    .line 202
    const/16 v0, 0x87

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    .line 207
    const/16 v0, 0x64

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->M:Z

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->Q:[F

    .line 867
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a(Landroid/util/AttributeSet;I)V

    .line 868
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 871
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    .line 167
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->v:Landroid/graphics/RectF;

    .line 172
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->d:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    .line 177
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->e:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    .line 182
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->f:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->y:I

    .line 187
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    .line 192
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->A:I

    .line 197
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->c:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    .line 202
    const/16 v0, 0x87

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    .line 207
    const/16 v0, 0x64

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->M:Z

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->Q:[F

    .line 872
    invoke-direct {p0, p2, v1}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a(Landroid/util/AttributeSet;I)V

    .line 873
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 876
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    .line 167
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->v:Landroid/graphics/RectF;

    .line 172
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->d:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    .line 177
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->e:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    .line 182
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->f:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->y:I

    .line 187
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->A:I

    .line 197
    sget v0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->c:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    .line 202
    const/16 v0, 0x87

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    .line 207
    const/16 v0, 0x64

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->M:Z

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->Q:[F

    .line 877
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a(Landroid/util/AttributeSet;I)V

    .line 878
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 457
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    .line 458
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 459
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 460
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 462
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 463
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 464
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 466
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->h:Landroid/graphics/Paint;

    .line 467
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 468
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 469
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 472
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    .line 473
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 474
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 475
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 477
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 478
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 479
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 481
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->j:Landroid/graphics/Paint;

    .line 482
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 483
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40a00000

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    mul-float/2addr v2, v3

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 485
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    .line 486
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 487
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 488
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 492
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->l:Landroid/graphics/Paint;

    .line 493
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 494
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 496
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->r:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 498
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->m:Landroid/graphics/Paint;

    .line 499
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 500
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->s:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 501
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 503
    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x43b40000

    .line 856
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ushaqi/zhuishushenqi/R$styleable;->ProgressView:[I

    invoke-virtual {v0, p1, v1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5366
    const/4 v1, 0x6

    const/high16 v2, 0x41f00000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->o:F

    .line 5367
    const/4 v1, 0x7

    const/high16 v2, 0x41f00000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->p:F

    .line 5368
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    .line 5369
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->r:F

    .line 5370
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->s:F

    .line 5371
    const/16 v1, 0x8

    const/high16 v2, 0x40600000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    .line 5373
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5374
    if-eqz v1, :cond_0

    .line 5376
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5382
    :cond_0
    :goto_0
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5383
    if-eqz v1, :cond_1

    .line 5385
    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5391
    :cond_1
    :goto_1
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5392
    if-eqz v1, :cond_2

    .line 5394
    :try_start_2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->y:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5400
    :cond_2
    :goto_2
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5401
    if-eqz v1, :cond_3

    .line 5403
    :try_start_3
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 5409
    :cond_3
    :goto_3
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5410
    if-eqz v1, :cond_4

    .line 5412
    :try_start_4
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 5418
    :cond_4
    :goto_4
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5419
    if-eqz v1, :cond_5

    .line 5421
    :try_start_5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->A:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 5427
    :cond_5
    :goto_5
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    .line 5429
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    .line 5430
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    const/16 v2, 0xff

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    if-gez v1, :cond_7

    .line 5431
    :cond_6
    iput v7, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    .line 5434
    :cond_7
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->I:I

    .line 5435
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->J:F

    .line 5436
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->K:Z

    .line 5437
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->L:Z

    .line 5438
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 5439
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->M:Z

    .line 5442
    const/16 v1, 0x12

    const/high16 v2, 0x43870000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    rem-float/2addr v1, v3

    add-float/2addr v1, v3

    rem-float/2addr v1, v3

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->t:F

    .line 5443
    const/16 v1, 0x13

    const/high16 v2, 0x43870000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    rem-float/2addr v1, v3

    add-float/2addr v1, v3

    rem-float/2addr v1, v3

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->u:F

    .line 5445
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->t:F

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->u:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_8

    .line 5447
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->u:F

    const v2, 0x3dcccccd

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->u:F

    .line 860
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 862
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a()V

    .line 863
    return-void

    .line 5378
    :catch_0
    move-exception v1

    sget v1, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->d:I

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    goto/16 :goto_0

    .line 5387
    :catch_1
    move-exception v1

    sget v1, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->e:I

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    goto/16 :goto_1

    .line 5396
    :catch_2
    move-exception v1

    sget v1, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->f:I

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->y:I

    goto/16 :goto_2

    .line 5405
    :catch_3
    move-exception v1

    sget v1, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b:I

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    goto/16 :goto_3

    .line 5414
    :catch_4
    move-exception v1

    sget v1, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->c:I

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    goto/16 :goto_4

    .line 5423
    :catch_5
    move-exception v1

    iput v4, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->A:I

    goto/16 :goto_5
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v2, 0x43b40000

    .line 614
    .line 1510
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->t:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->u:F

    sub-float/2addr v0, v1

    sub-float v0, v2, v0

    rem-float/2addr v0, v2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->E:F

    .line 1511
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->E:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_0

    .line 1512
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->E:F

    .line 1530
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->J:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->I:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1531
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->E:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->t:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->P:F

    .line 1532
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->P:F

    rem-float/2addr v0, v2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->P:F

    .line 2521
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->P:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->t:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->F:F

    .line 2522
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->F:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->F:F

    add-float/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->F:F

    .line 2559
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->v:Landroid/graphics/RectF;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->N:F

    neg-float v1, v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->O:F

    neg-float v2, v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->N:F

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->O:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3548
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->G:Landroid/graphics/Path;

    .line 3549
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->v:Landroid/graphics/RectF;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->t:F

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->E:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 3551
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->H:Landroid/graphics/Path;

    .line 3552
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->H:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->v:Landroid/graphics/RectF;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->t:F

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->F:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 4536
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->H:Landroid/graphics/Path;

    invoke-direct {v0, v1, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 4537
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->Q:[F

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v0

    .line 4538
    if-nez v0, :cond_1

    .line 4539
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->G:Landroid/graphics/Path;

    invoke-direct {v0, v1, v6}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 4540
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->Q:[F

    invoke-virtual {v0, v5, v1, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 623
    :cond_1
    return-void

    .line 2522
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->F:F

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 566
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 568
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 569
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->H:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 570
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->H:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 572
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->G:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 579
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000

    const/high16 v3, 0x3fc00000

    .line 627
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getDefaultSize(II)I

    move-result v0

    .line 628
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->getDefaultSize(II)I

    move-result v1

    .line 629
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->L:Z

    if-eqz v2, :cond_3

    .line 630
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 631
    invoke-virtual {p0, v2, v2}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->setMeasuredDimension(II)V

    .line 637
    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->s:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->O:F

    .line 638
    int-to-float v0, v1

    div-float/2addr v0, v4

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->s:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->N:F

    .line 641
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->K:Z

    if-eqz v0, :cond_1

    .line 643
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->p:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->s:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->O:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 644
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->p:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->s:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->O:F

    .line 647
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->o:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->s:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->N:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 648
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->o:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->n:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->q:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->s:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->N:F

    .line 652
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->L:Z

    if-eqz v0, :cond_2

    .line 653
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->O:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->N:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 654
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->O:F

    .line 655
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->N:F

    .line 658
    :cond_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b()V

    .line 659
    return-void

    .line 633
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 902
    check-cast p1, Landroid/os/Bundle;

    .line 904
    const-string v0, "PARENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 905
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 907
    const-string v0, "MAX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->I:I

    .line 908
    const-string v0, "PROGRESS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->J:F

    .line 909
    const-string v0, "mCircleColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    .line 910
    const-string v0, "mCircleProgressColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    .line 911
    const-string v0, "mPointerColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    .line 912
    const-string v0, "mPointerHaloColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    .line 913
    const-string v0, "mPointerHaloColorOnTouch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->y:I

    .line 914
    const-string v0, "mPointerAlpha"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    .line 915
    const-string v0, "mPointerAlphaOnTouch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    .line 916
    const-string v0, "lockEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->M:Z

    .line 918
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->a()V

    .line 920
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b()V

    .line 921
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 882
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 884
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 885
    const-string v2, "PARENT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 886
    const-string v0, "MAX"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->I:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 887
    const-string v0, "PROGRESS"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->J:F

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 888
    const-string v0, "mCircleColor"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 889
    const-string v0, "mCircleProgressColor"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    const-string v0, "mPointerColor"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 891
    const-string v0, "mPointerHaloColor"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 892
    const-string v0, "mPointerHaloColorOnTouch"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->y:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 893
    const-string v0, "mPointerAlpha"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 894
    const-string v0, "mPointerAlphaOnTouch"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 895
    const-string v0, "lockEnabled"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->M:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    return-object v1
.end method

.method public setCircleColor(I)V
    .locals 2

    .prologue
    .line 945
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    .line 946
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 947
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->invalidate()V

    .line 948
    return-void
.end method

.method public setCircleFillColor(I)V
    .locals 2

    .prologue
    .line 1055
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->A:I

    .line 1056
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->A:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1057
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->invalidate()V

    .line 1058
    return-void
.end method

.method public setCircleProgressColor(I)V
    .locals 2

    .prologue
    .line 963
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    .line 964
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->B:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 965
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->invalidate()V

    .line 966
    return-void
.end method

.method public setLockEnabled(Z)V
    .locals 0

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->M:Z

    .line 667
    return-void
.end method

.method public setMax(I)V
    .locals 2

    .prologue
    .line 1075
    if-lez p1, :cond_1

    .line 1076
    int-to-float v0, p1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->J:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->J:F

    .line 1082
    :cond_0
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->I:I

    .line 1084
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b()V

    .line 1085
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->invalidate()V

    .line 1087
    :cond_1
    return-void
.end method

.method public setOnSeekBarChangeListener$624defb7(Landroid/support/design/widget/K;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->R:Landroid/support/design/widget/K;

    .line 926
    return-void
.end method

.method public setPointerAlpha(I)V
    .locals 2

    .prologue
    .line 1017
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1018
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    .line 1019
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->C:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1020
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->invalidate()V

    .line 1022
    :cond_0
    return-void
.end method

.method public setPointerAlphaOnTouch(I)V
    .locals 1

    .prologue
    .line 1037
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1038
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->D:I

    .line 1040
    :cond_0
    return-void
.end method

.method public setPointerColor(I)V
    .locals 2

    .prologue
    .line 981
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    .line 982
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 983
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->invalidate()V

    .line 984
    return-void
.end method

.method public setPointerHaloColor(I)V
    .locals 2

    .prologue
    .line 999
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    .line 1000
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->x:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1001
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->invalidate()V

    .line 1002
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->J:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 597
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->J:F

    .line 602
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->b()V

    .line 603
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/ProgressView;->invalidate()V

    .line 605
    :cond_0
    return-void
.end method
