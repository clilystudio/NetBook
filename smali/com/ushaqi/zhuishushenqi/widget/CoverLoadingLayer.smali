.class public Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private A:Lcom/c/a/b;

.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:Lcom/c/a/w;

.field private l:Lcom/c/a/w;

.field private m:Lcom/c/a/w;

.field private n:F

.field private o:I

.field private p:I

.field private q:Lcom/ushaqi/zhuishushenqi/widget/y;

.field private r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

.field private s:Lcom/c/a/w;

.field private t:F

.field private u:I

.field private v:F

.field private w:Lcom/c/a/D;

.field private x:Lcom/c/a/b;

.field private y:Lcom/c/a/D;

.field private z:Lcom/c/a/D;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v0, -0x4e000000

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a:I

    .line 38
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b:F

    .line 39
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c:F

    .line 40
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    .line 41
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->e:F

    .line 42
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    .line 398
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/t;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/t;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->w:Lcom/c/a/D;

    .line 406
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/u;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/u;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->x:Lcom/c/a/b;

    .line 424
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/v;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/v;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->y:Lcom/c/a/D;

    .line 432
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/w;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/w;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->z:Lcom/c/a/D;

    .line 441
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/x;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/x;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->A:Lcom/c/a/b;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/high16 v0, -0x4e000000

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a:I

    .line 38
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b:F

    .line 39
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c:F

    .line 40
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    .line 41
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->e:F

    .line 42
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    .line 398
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/t;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/t;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->w:Lcom/c/a/D;

    .line 406
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/u;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/u;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->x:Lcom/c/a/b;

    .line 424
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/v;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/v;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->y:Lcom/c/a/D;

    .line 432
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/w;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/w;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->z:Lcom/c/a/D;

    .line 441
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/x;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/x;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->A:Lcom/c/a/b;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;F)F
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b:F

    return p1
.end method

.method private static a(F)I
    .locals 2

    .prologue
    .line 154
    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p0, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->g:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;Lcom/c/a/w;)Lcom/c/a/w;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->s:Lcom/c/a/w;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;)Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 85
    if-eqz p2, :cond_0

    .line 86
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->CoverLoadingLayer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->v:F

    .line 93
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->n:F

    .line 94
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c:F

    .line 95
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->j:F

    .line 96
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i:F

    .line 97
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->h:F

    .line 98
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->t:F

    .line 99
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->u:I

    .line 100
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->e:F

    .line 102
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i()V

    .line 104
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->k:Lcom/c/a/w;

    .line 105
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->k:Lcom/c/a/w;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 107
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->k:Lcom/c/a/w;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->z:Lcom/c/a/D;

    invoke-virtual {v1, v2}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 108
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->k:Lcom/c/a/w;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->x:Lcom/c/a/b;

    invoke-virtual {v1, v2}, Lcom/c/a/w;->a(Lcom/c/a/b;)V

    .line 109
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->k:Lcom/c/a/w;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/c/a/w;->a(Landroid/view/animation/Interpolator;)V

    .line 111
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->l:Lcom/c/a/w;

    .line 112
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->l:Lcom/c/a/w;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->l:Lcom/c/a/w;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->w:Lcom/c/a/D;

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->l:Lcom/c/a/w;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->A:Lcom/c/a/b;

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Lcom/c/a/b;)V

    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->l:Lcom/c/a/w;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Landroid/view/animation/Interpolator;)V

    .line 116
    return-void

    .line 104
    :array_0
    .array-data 4
        0x3a83126f    # 0.001f
        0x3f800000    # 1.0f
    .end array-data

    .line 111
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3a83126f    # 0.001f
    .end array-data
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V
    .locals 2

    .prologue
    .line 31
    .line 3148
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->p:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->p:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    if-le v0, v1, :cond_0

    .line 3149
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->p:I

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->setProgress(I)V

    .line 31
    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 513
    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 520
    :goto_0
    return v0

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->m:Lcom/c/a/w;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->m:Lcom/c/a/w;

    invoke-virtual {v1}, Lcom/c/a/w;->d()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PAUSE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v1, v2, :cond_3

    .line 517
    :cond_2
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->p:I

    goto :goto_0

    .line 520
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)F
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;F)F
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)Lcom/c/a/w;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->h()Lcom/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)Lcom/c/a/w;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->s:Lcom/c/a/w;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->e:F

    return v0
.end method

.method private h()Lcom/c/a/w;
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->n:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->n:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 160
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Landroid/view/animation/Interpolator;)V

    .line 161
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/r;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/r;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 169
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/s;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/s;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Lcom/c/a/b;)V

    .line 187
    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->NONE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 192
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    .line 193
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->p:I

    .line 195
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->n:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b:F

    .line 196
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    .line 197
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->l:Lcom/c/a/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->l:Lcom/c/a/w;

    invoke-virtual {v0}, Lcom/c/a/w;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 528
    .line 2524
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    .line 528
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 540
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PAUSE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 541
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->e:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    .line 542
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 543
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i()V

    .line 547
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 548
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PENDING:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 552
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 553
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 556
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PREPARE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 557
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 558
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->DOWNLOADED:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 562
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 563
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->s:Lcom/c/a/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->s:Lcom/c/a/w;

    invoke-virtual {v0}, Lcom/c/a/w;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 209
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getHeight()I

    .line 1200
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 1201
    const v1, 0x3dcccccd    # 0.1f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->NONE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v0, v1, :cond_2

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->DOWNLOADED:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v0, v1, :cond_3

    .line 1311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1312
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->t:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1314
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/p;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/p;-><init>(F)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1315
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->t:F

    float-to-int v3, v3

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->t:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 1316
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->u:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1317
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 219
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 220
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 223
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 226
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 227
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 231
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v1

    .line 236
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getHeight()I

    move-result v2

    .line 237
    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a:I

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 238
    div-int/lit8 v8, v1, 0x2

    .line 239
    div-int/lit8 v9, v2, 0x2

    .line 240
    int-to-float v1, v8

    int-to-float v2, v9

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b:F

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 242
    new-instance v5, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v8

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c:F

    sub-float/2addr v2, v3

    int-to-float v3, v9

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c:F

    sub-float/2addr v3, v4

    int-to-float v4, v8

    iget v10, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c:F

    add-float/2addr v4, v10

    int-to-float v10, v9

    iget v11, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->c:F

    add-float/2addr v10, v11

    invoke-direct {v1, v2, v3, v4, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 247
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PROGRESS:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v2, v3, :cond_4

    .line 248
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->g:I

    rsub-int v3, v3, 0x10e

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 251
    :cond_4
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 252
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 253
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v2, v3, v4, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 254
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 260
    :cond_5
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PENDING:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PREPARE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v1, v2, :cond_7

    .line 261
    :cond_6
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->n:F

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 264
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1322
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->n:F

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->e:F

    sub-float/2addr v2, v3

    .line 1323
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1324
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1325
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v10, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->e:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    add-float/2addr v2, v10

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1327
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1329
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1333
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 1334
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v4, v2, v10, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1335
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {p0, v10}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(F)F

    move-result v10

    float-to-int v10, v10

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-direct {p0, v11}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v3, v2, v4, v10, v11}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 1336
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1337
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1339
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 1340
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v4, v2, v10, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1341
    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-direct {p0, v10}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(F)F

    move-result v10

    float-to-int v10, v10

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-direct {p0, v11}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v3, v2, v4, v10, v11}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 1342
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1343
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1345
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 268
    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PAUSE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 274
    int-to-float v1, v8

    int-to-float v2, v9

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 276
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 279
    int-to-float v2, v8

    int-to-float v3, v9

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 281
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 282
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    int-to-float v3, v8

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->j:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 288
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 289
    int-to-float v5, v3

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 290
    int-to-float v3, v3

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->right:F

    .line 291
    int-to-float v3, v9

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->h:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->top:F

    .line 292
    int-to-float v3, v9

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->h:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 293
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 296
    int-to-float v3, v8

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->j:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 299
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 300
    int-to-float v5, v3

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 301
    int-to-float v3, v3

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->i:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->right:F

    .line 302
    int-to-float v3, v9

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->h:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->top:F

    .line 303
    int-to-float v3, v9

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->h:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 304
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 306
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1333
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 1339
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1377
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1381
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->m:Lcom/c/a/w;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->m:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/w;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    .line 1377
    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 354
    :cond_1
    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PROGRESS:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v0, v2, :cond_4

    .line 356
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b()V

    .line 357
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->q:Lcom/ushaqi/zhuishushenqi/widget/y;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->q:Lcom/ushaqi/zhuishushenqi/widget/y;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/widget/y;->a()V

    .line 373
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v2, v0

    .line 1381
    goto :goto_0

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PAUSE:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v0, v2, :cond_5

    .line 1393
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    .line 1394
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PROGRESS:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 1395
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 362
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->q:Lcom/ushaqi/zhuishushenqi/widget/y;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->q:Lcom/ushaqi/zhuishushenqi/widget/y;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/widget/y;->b()V

    goto :goto_1

    .line 365
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PENDING:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    if-ne v0, v2, :cond_2

    .line 366
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b()V

    .line 367
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->q:Lcom/ushaqi/zhuishushenqi/widget/y;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->q:Lcom/ushaqi/zhuishushenqi/widget/y;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/widget/y;->c()V

    goto :goto_1
.end method

.method public setCornerRadius(F)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->f:F

    .line 73
    return-void
.end method

.method public setCoverListener(Lcom/ushaqi/zhuishushenqi/widget/y;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->q:Lcom/ushaqi/zhuishushenqi/widget/y;

    .line 537
    return-void
.end method

.method public setProgress(I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 481
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    if-ge p1, v2, :cond_2

    .line 1461
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->clearAnimation()V

    .line 1462
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1465
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    .line 1477
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a(F)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->g:I

    .line 1467
    sget-object v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PROGRESS:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 1469
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 1471
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->h()Lcom/c/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/w;->a()V

    goto :goto_0

    .line 489
    :cond_2
    sget-object v2, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;->PROGRESS:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->r:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer$Status;

    .line 490
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    .line 491
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->o:I

    .line 493
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->m:Lcom/c/a/w;

    if-eqz v3, :cond_3

    .line 494
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->m:Lcom/c/a/w;

    invoke-virtual {v3}, Lcom/c/a/w;->b()V

    .line 497
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d:F

    .line 2119
    const/4 v3, 0x2

    new-array v3, v3, [I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a(F)I

    move-result v2

    aput v2, v3, v1

    int-to-float v2, p1

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a(F)I

    move-result v2

    aput v2, v3, v0

    invoke-static {v3}, Lcom/c/a/w;->a([I)Lcom/c/a/w;

    move-result-object v2

    .line 2120
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 2121
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->y:Lcom/c/a/D;

    invoke-virtual {v2, v3}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 2122
    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/q;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/widget/q;-><init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V

    invoke-virtual {v2, v3}, Lcom/c/a/w;->a(Lcom/c/a/b;)V

    .line 498
    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->m:Lcom/c/a/w;

    .line 2509
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->k:Lcom/c/a/w;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->k:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/w;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 499
    :goto_1
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->m:Lcom/c/a/w;

    invoke-virtual {v0}, Lcom/c/a/w;->a()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 2509
    goto :goto_1
.end method
