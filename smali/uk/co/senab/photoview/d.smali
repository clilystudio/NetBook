.class public final Luk/co/senab/photoview/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Luk/co/senab/photoview/a/f;
.implements Luk/co/senab/photoview/b;


# static fields
.field static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Landroid/widget/ImageView$ScaleType;

.field b:I

.field public c:F

.field public d:F

.field private final e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/GestureDetector;

.field private l:Luk/co/senab/photoview/a/e;

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/Matrix;

.field private final o:Landroid/graphics/Matrix;

.field private final p:Landroid/graphics/RectF;

.field private final q:[F

.field private r:Landroid/support/design/widget/K;

.field private s:Landroid/support/design/widget/K;

.field private t:Landroid/support/design/widget/K;

.field private u:Landroid/view/View$OnLongClickListener;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Luk/co/senab/photoview/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Luk/co/senab/photoview/d;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0xc8

    iput v0, p0, Luk/co/senab/photoview/d;->b:I

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Luk/co/senab/photoview/d;->f:F

    .line 70
    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Luk/co/senab/photoview/d;->g:F

    .line 71
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Luk/co/senab/photoview/d;->h:F

    .line 73
    iput-boolean v3, p0, Luk/co/senab/photoview/d;->i:Z

    .line 135
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    .line 136
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/d;->n:Landroid/graphics/Matrix;

    .line 137
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Luk/co/senab/photoview/d;->p:Landroid/graphics/RectF;

    .line 139
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Luk/co/senab/photoview/d;->q:[F

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Luk/co/senab/photoview/d;->A:I

    .line 152
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Luk/co/senab/photoview/d;->j:Ljava/lang/ref/WeakReference;

    .line 157
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 158
    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    iput v0, p0, Luk/co/senab/photoview/d;->e:F

    .line 161
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 162
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 169
    :cond_0
    invoke-static {p1}, Luk/co/senab/photoview/d;->a(Landroid/widget/ImageView;)V

    .line 171
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1026
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1029
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 1030
    new-instance v0, Luk/co/senab/photoview/a/a;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/a/a;-><init>(Landroid/content/Context;)V

    .line 1037
    :goto_1
    invoke-interface {v0, p0}, Luk/co/senab/photoview/a/e;->a(Luk/co/senab/photoview/a/f;)V

    .line 175
    iput-object v0, p0, Luk/co/senab/photoview/d;->l:Luk/co/senab/photoview/a/e;

    .line 178
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Luk/co/senab/photoview/e;

    invoke-direct {v2, p0}, Luk/co/senab/photoview/e;-><init>(Luk/co/senab/photoview/d;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/view/GestureDetector;

    .line 191
    iget-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/view/GestureDetector;

    new-instance v1, Luk/co/senab/photoview/a;

    invoke-direct {v1, p0}, Luk/co/senab/photoview/a;-><init>(Luk/co/senab/photoview/d;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 194
    invoke-virtual {p0, v3}, Luk/co/senab/photoview/d;->b(Z)V

    goto :goto_0

    .line 1031
    :cond_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_3

    .line 1032
    new-instance v0, Luk/co/senab/photoview/a/b;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/a/b;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1034
    :cond_3
    new-instance v0, Luk/co/senab/photoview/a/c;

    invoke-direct {v0, v1}, Luk/co/senab/photoview/a/c;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Luk/co/senab/photoview/d;->q:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 838
    iget-object v0, p0, Luk/co/senab/photoview/d;->q:[F

    aget v0, v0, p2

    return v0
.end method

.method private a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 798
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_0

    .line 803
    iget-object v1, p0, Luk/co/senab/photoview/d;->p:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 804
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 803
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 805
    iget-object v0, p0, Luk/co/senab/photoview/d;->p:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 806
    iget-object v0, p0, Luk/co/senab/photoview/d;->p:Landroid/graphics/RectF;

    .line 809
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Luk/co/senab/photoview/d;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Luk/co/senab/photoview/d;->u:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 873
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    invoke-static {v0}, Luk/co/senab/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 879
    invoke-static {v0}, Luk/co/senab/photoview/d;->c(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 880
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 881
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 883
    iget-object v4, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 885
    int-to-float v4, v2

    div-float v4, v1, v4

    .line 886
    int-to-float v5, v3

    div-float v5, v0, v5

    .line 888
    iget-object v6, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    .line 889
    iget-object v4, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 931
    :goto_1
    invoke-direct {p0}, Luk/co/senab/photoview/d;->p()V

    goto :goto_0

    .line 892
    :cond_2
    iget-object v6, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_3

    .line 893
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 894
    iget-object v5, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 895
    iget-object v5, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 898
    :cond_3
    iget-object v6, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_4

    .line 899
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 900
    iget-object v5, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 901
    iget-object v5, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 905
    :cond_4
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v9, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 906
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 908
    sget-object v0, Luk/co/senab/photoview/f;->a:[I

    iget-object v1, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 915
    :pswitch_0
    iget-object v0, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 910
    :pswitch_1
    iget-object v0, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 911
    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 919
    :pswitch_2
    iget-object v0, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 923
    :pswitch_3
    iget-object v0, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, v2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 908
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 121
    if-eqz p0, :cond_0

    instance-of v0, p0, Luk/co/senab/photoview/b;

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    :cond_0
    return-void
.end method

.method static synthetic a(Luk/co/senab/photoview/d;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Luk/co/senab/photoview/d;->b(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static b(Landroid/widget/ImageView;)I
    .locals 2

    .prologue
    .line 935
    if-nez p0, :cond_0

    .line 936
    const/4 v0, 0x0

    .line 937
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic b(Luk/co/senab/photoview/d;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private static b(FFF)V
    .locals 2

    .prologue
    .line 79
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/Matrix;)V
    .locals 3

    .prologue
    .line 851
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 852
    if-eqz v0, :cond_1

    .line 1695
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v1

    .line 1701
    if-eqz v1, :cond_0

    instance-of v2, v1, Luk/co/senab/photoview/b;

    if-nez v2, :cond_0

    .line 1702
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1703
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 858
    iget-object v0, p0, Luk/co/senab/photoview/d;->r:Landroid/support/design/widget/K;

    if-eqz v0, :cond_1

    .line 859
    invoke-direct {p0, p1}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 865
    :cond_1
    return-void
.end method

.method private static c(Landroid/widget/ImageView;)I
    .locals 2

    .prologue
    .line 941
    if-nez p0, :cond_0

    .line 942
    const/4 v0, 0x0

    .line 943
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic c(Luk/co/senab/photoview/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Luk/co/senab/photoview/d;->n()V

    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Luk/co/senab/photoview/d;->z:Luk/co/senab/photoview/h;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Luk/co/senab/photoview/d;->z:Luk/co/senab/photoview/h;

    invoke-virtual {v0}, Luk/co/senab/photoview/h;->a()V

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/photoview/d;->z:Luk/co/senab/photoview/h;

    .line 683
    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0}, Luk/co/senab/photoview/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->b(Landroid/graphics/Matrix;)V

    .line 692
    :cond_0
    return-void
.end method

.method private o()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 710
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v2

    .line 711
    if-nez v2, :cond_1

    .line 788
    :cond_0
    :goto_0
    return v0

    .line 715
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {p0, v3}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    .line 716
    if-eqz v3, :cond_0

    .line 720
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 723
    invoke-static {v2}, Luk/co/senab/photoview/d;->c(Landroid/widget/ImageView;)I

    move-result v6

    .line 724
    int-to-float v7, v6

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_4

    .line 725
    sget-object v4, Luk/co/senab/photoview/f;->a:[I

    iget-object v6, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 733
    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 750
    :cond_2
    :goto_1
    invoke-static {v2}, Luk/co/senab/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v2

    .line 751
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "rect = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 752
    int-to-float v4, v2

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_6

    .line 753
    sget-object v0, Luk/co/senab/photoview/f;->a:[I

    iget-object v2, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 761
    iget v0, v3, Landroid/graphics/RectF;->left:F

    .line 764
    :goto_2
    const/4 v0, 0x2

    iput v0, p0, Luk/co/senab/photoview/d;->A:I

    .line 785
    :cond_3
    :goto_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deltaX = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v0, v1

    .line 788
    goto :goto_0

    .line 727
    :pswitch_0
    iget v4, v3, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 730
    :pswitch_1
    iget v4, v3, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 736
    :cond_4
    iget v4, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    .line 738
    int-to-float v4, v6

    iget v6, p0, Luk/co/senab/photoview/d;->e:F

    sub-float/2addr v4, v6

    div-float/2addr v4, v9

    .line 739
    iget v6, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_2

    .line 740
    iget v4, v3, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 742
    :cond_5
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v6

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 744
    int-to-float v4, v6

    iget v7, p0, Luk/co/senab/photoview/d;->e:F

    sub-float/2addr v4, v7

    div-float/2addr v4, v9

    .line 745
    int-to-float v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    cmpl-float v4, v6, v4

    if-lez v4, :cond_2

    .line 746
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 755
    :pswitch_2
    iget v0, v3, Landroid/graphics/RectF;->left:F

    goto :goto_2

    .line 758
    :pswitch_3
    iget v0, v3, Landroid/graphics/RectF;->left:F

    goto :goto_2

    .line 765
    :cond_6
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_7

    .line 766
    iput v0, p0, Luk/co/senab/photoview/d;->A:I

    .line 767
    int-to-float v0, v2

    iget v2, p0, Luk/co/senab/photoview/d;->e:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v9

    .line 768
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rect = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 769
    iget v2, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 770
    iget v0, v3, Landroid/graphics/RectF;->left:F

    goto :goto_3

    .line 772
    :cond_7
    iget v0, v3, Landroid/graphics/RectF;->right:F

    int-to-float v4, v2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_9

    .line 773
    int-to-float v0, v2

    iget v4, p0, Luk/co/senab/photoview/d;->e:F

    sub-float/2addr v0, v4

    div-float/2addr v0, v9

    .line 774
    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    cmpl-float v0, v2, v0

    if-lez v0, :cond_8

    .line 775
    iget v0, v3, Landroid/graphics/RectF;->right:F

    .line 777
    :cond_8
    iput v1, p0, Luk/co/senab/photoview/d;->A:I

    goto/16 :goto_3

    .line 779
    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Luk/co/senab/photoview/d;->A:I

    goto/16 :goto_3

    .line 725
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 753
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private p()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 846
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->b(Landroid/graphics/Matrix;)V

    .line 847
    invoke-direct {p0}, Luk/co/senab/photoview/d;->o()Z

    .line 848
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Luk/co/senab/photoview/d;->j:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/d;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 232
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 235
    invoke-direct {p0}, Luk/co/senab/photoview/d;->m()V

    .line 238
    :cond_2
    iget-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 243
    :cond_3
    iput-object v3, p0, Luk/co/senab/photoview/d;->r:Landroid/support/design/widget/K;

    .line 244
    iput-object v3, p0, Luk/co/senab/photoview/d;->s:Landroid/support/design/widget/K;

    .line 245
    iput-object v3, p0, Luk/co/senab/photoview/d;->t:Landroid/support/design/widget/K;

    .line 248
    iput-object v3, p0, Luk/co/senab/photoview/d;->j:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 288
    invoke-direct {p0}, Luk/co/senab/photoview/d;->n()V

    .line 289
    return-void
.end method

.method public final a(FF)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 359
    iget-object v0, p0, Luk/co/senab/photoview/d;->l:Luk/co/senab/photoview/a/e;

    invoke-interface {v0}, Luk/co/senab/photoview/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-static {}, Luk/co/senab/photoview/b/a;->a()Luk/co/senab/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "onDrag: dx: %.2f. dy: %.2f"

    new-array v3, v7, [Ljava/lang/Object;

    .line 365
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {v0, v1, v2}, Luk/co/senab/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 369
    iget-object v1, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 370
    invoke-direct {p0}, Luk/co/senab/photoview/d;->n()V

    .line 381
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 382
    iget-boolean v1, p0, Luk/co/senab/photoview/d;->i:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Luk/co/senab/photoview/d;->l:Luk/co/senab/photoview/a/e;

    invoke-interface {v1}, Luk/co/senab/photoview/a/e;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 383
    iget v1, p0, Luk/co/senab/photoview/d;->A:I

    if-eq v1, v7, :cond_3

    iget v1, p0, Luk/co/senab/photoview/d;->A:I

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gez v1, :cond_3

    :cond_2
    iget v1, p0, Luk/co/senab/photoview/d;->A:I

    if-ne v1, v5, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 386
    :cond_3
    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 390
    :cond_4
    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public final a(FFF)V
    .locals 6

    .prologue
    .line 451
    invoke-static {}, Luk/co/senab/photoview/b/a;->a()Luk/co/senab/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 454
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 453
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-virtual {v0, v1, v2}, Luk/co/senab/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->g()F

    move-result v0

    iget v1, p0, Luk/co/senab/photoview/d;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 459
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 460
    invoke-direct {p0}, Luk/co/senab/photoview/d;->n()V

    .line 462
    :cond_1
    return-void
.end method

.method public final a(FFFF)V
    .locals 5

    .prologue
    .line 400
    invoke-static {}, Luk/co/senab/photoview/b/a;->a()Luk/co/senab/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFling. sX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Vx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Vy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Luk/co/senab/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 407
    new-instance v1, Luk/co/senab/photoview/h;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Luk/co/senab/photoview/h;-><init>(Luk/co/senab/photoview/d;Landroid/content/Context;)V

    iput-object v1, p0, Luk/co/senab/photoview/d;->z:Luk/co/senab/photoview/h;

    .line 408
    iget-object v1, p0, Luk/co/senab/photoview/d;->z:Luk/co/senab/photoview/h;

    invoke-static {v0}, Luk/co/senab/photoview/d;->b(Landroid/widget/ImageView;)I

    move-result v2

    .line 409
    invoke-static {v0}, Luk/co/senab/photoview/d;->c(Landroid/widget/ImageView;)I

    move-result v0

    float-to-int v3, p3

    float-to-int v4, p4

    .line 408
    invoke-virtual {v1, v2, v0, v3, v4}, Luk/co/senab/photoview/h;->a(IIII)V

    .line 411
    return-void
.end method

.method public final a(FFFZ)V
    .locals 7

    .prologue
    .line 612
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v6

    .line 614
    if-eqz v6, :cond_1

    .line 616
    iget v0, p0, Luk/co/senab/photoview/d;->f:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Luk/co/senab/photoview/d;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 618
    :cond_0
    invoke-static {}, Luk/co/senab/photoview/b/a;->a()Luk/co/senab/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "Scale must be within the range of minScale and maxScale"

    .line 619
    invoke-virtual {v0, v1, v2}, Luk/co/senab/photoview/b/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1
    :goto_0
    return-void

    .line 624
    :cond_2
    if-eqz p4, :cond_3

    .line 625
    new-instance v0, Luk/co/senab/photoview/g;

    invoke-virtual {p0}, Luk/co/senab/photoview/d;->g()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/g;-><init>(Luk/co/senab/photoview/d;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 628
    :cond_3
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 629
    invoke-direct {p0}, Luk/co/senab/photoview/d;->n()V

    goto :goto_0
.end method

.method public final a(FZ)V
    .locals 2

    .prologue
    .line 599
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 604
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 602
    invoke-virtual {p0, p1, v1, v0, p2}, Luk/co/senab/photoview/d;->a(FFFZ)V

    .line 607
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/design/widget/K;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Luk/co/senab/photoview/d;->r:Landroid/support/design/widget/K;

    .line 570
    return-void
.end method

.method public final a(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/d;->k:Landroid/view/GestureDetector;

    new-instance v1, Luk/co/senab/photoview/a;

    invoke-direct {v1, p0}, Luk/co/senab/photoview/a;-><init>(Luk/co/senab/photoview/d;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Luk/co/senab/photoview/d;->u:Landroid/view/View$OnLongClickListener;

    .line 565
    return-void
.end method

.method public final a(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .prologue
    .line 636
    .line 1099
    if-nez p1, :cond_1

    .line 1100
    const/4 v0, 0x0

    .line 636
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 637
    iput-object p1, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    .line 640
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->k()V

    .line 642
    :cond_0
    return-void

    .line 1103
    :cond_1
    sget-object v0, Luk/co/senab/photoview/f;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1109
    const/4 v0, 0x1

    goto :goto_0

    .line 1105
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 516
    iput-boolean p1, p0, Luk/co/senab/photoview/d;->i:Z

    .line 517
    return-void
.end method

.method public final b()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Luk/co/senab/photoview/d;->o()Z

    .line 254
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final b(F)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 294
    invoke-direct {p0}, Luk/co/senab/photoview/d;->n()V

    .line 295
    return-void
.end method

.method public final b(Landroid/support/design/widget/K;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Luk/co/senab/photoview/d;->s:Landroid/support/design/widget/K;

    .line 575
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 646
    iput-boolean p1, p0, Luk/co/senab/photoview/d;->B:Z

    .line 647
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->k()V

    .line 648
    return-void
.end method

.method public final c()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Luk/co/senab/photoview/d;->j:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, p0, Luk/co/senab/photoview/d;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 305
    :cond_0
    if-nez v0, :cond_1

    .line 306
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->a()V

    .line 307
    const-string v1, "PhotoViewAttacher"

    const-string v2, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    return-object v0
.end method

.method public final c(F)V
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Luk/co/senab/photoview/d;->g:F

    iget v1, p0, Luk/co/senab/photoview/d;->h:F

    invoke-static {p1, v0, v1}, Luk/co/senab/photoview/d;->b(FFF)V

    .line 528
    iput p1, p0, Luk/co/senab/photoview/d;->f:F

    .line 529
    return-void
.end method

.method public final c(Landroid/support/design/widget/K;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Luk/co/senab/photoview/d;->t:Landroid/support/design/widget/K;

    .line 585
    return-void
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Luk/co/senab/photoview/d;->f:F

    return v0
.end method

.method public final d(F)V
    .locals 1

    .prologue
    .line 532
    iput p1, p0, Luk/co/senab/photoview/d;->f:F

    .line 533
    const/high16 v0, 0x3fe00000    # 1.75f

    mul-float/2addr v0, p1

    iput v0, p0, Luk/co/senab/photoview/d;->g:F

    .line 534
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    iput v0, p0, Luk/co/senab/photoview/d;->h:F

    .line 535
    return-void
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Luk/co/senab/photoview/d;->g:F

    return v0
.end method

.method public final e(F)V
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Luk/co/senab/photoview/d;->f:F

    iget v1, p0, Luk/co/senab/photoview/d;->h:F

    invoke-static {v0, p1, v1}, Luk/co/senab/photoview/d;->b(FFF)V

    .line 547
    iput p1, p0, Luk/co/senab/photoview/d;->g:F

    .line 548
    return-void
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Luk/co/senab/photoview/d;->h:F

    return v0
.end method

.method public final f(F)V
    .locals 2

    .prologue
    .line 558
    iget v0, p0, Luk/co/senab/photoview/d;->f:F

    iget v1, p0, Luk/co/senab/photoview/d;->g:F

    invoke-static {v0, v1, p1}, Luk/co/senab/photoview/d;->b(FFF)V

    .line 559
    iput p1, p0, Luk/co/senab/photoview/d;->h:F

    .line 560
    return-void
.end method

.method public final g()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 349
    iget-object v0, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Luk/co/senab/photoview/d;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public final h()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Luk/co/senab/photoview/d;->C:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final i()Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Luk/co/senab/photoview/d;->s:Landroid/support/design/widget/K;

    return-object v0
.end method

.method public final j()Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Luk/co/senab/photoview/d;->t:Landroid/support/design/widget/K;

    return-object v0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 651
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_0

    .line 654
    iget-boolean v1, p0, Luk/co/senab/photoview/d;->B:Z

    if-eqz v1, :cond_1

    .line 656
    invoke-static {v0}, Luk/co/senab/photoview/d;->a(Landroid/widget/ImageView;)V

    .line 659
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-direct {p0}, Luk/co/senab/photoview/d;->p()V

    goto :goto_0
.end method

.method public final l()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Luk/co/senab/photoview/d;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/d;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 674
    iget-object v0, p0, Luk/co/senab/photoview/d;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/d;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 675
    iget-object v0, p0, Luk/co/senab/photoview/d;->n:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final onGlobalLayout()V
    .locals 6

    .prologue
    .line 415
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_1

    .line 418
    iget-boolean v1, p0, Luk/co/senab/photoview/d;->B:Z

    if-eqz v1, :cond_2

    .line 419
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 420
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 421
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 422
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 431
    iget v5, p0, Luk/co/senab/photoview/d;->v:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/d;->x:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/d;->y:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/d;->w:I

    if-eq v2, v5, :cond_1

    .line 434
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iput v1, p0, Luk/co/senab/photoview/d;->v:I

    .line 438
    iput v2, p0, Luk/co/senab/photoview/d;->w:I

    .line 439
    iput v3, p0, Luk/co/senab/photoview/d;->x:I

    .line 440
    iput v4, p0, Luk/co/senab/photoview/d;->y:I

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 443
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/d;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 466
    .line 468
    iget-boolean v0, p0, Luk/co/senab/photoview/d;->B:Z

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 1092
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v6

    .line 468
    :goto_0
    if-eqz v0, :cond_5

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 470
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 500
    :goto_1
    iget-object v1, p0, Luk/co/senab/photoview/d;->l:Luk/co/senab/photoview/a/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Luk/co/senab/photoview/d;->l:Luk/co/senab/photoview/a/e;

    .line 501
    invoke-interface {v1, p2}, Luk/co/senab/photoview/a/e;->c(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    .line 506
    :cond_1
    iget-object v1, p0, Luk/co/senab/photoview/d;->k:Landroid/view/GestureDetector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Luk/co/senab/photoview/d;->k:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    .line 511
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v1

    .line 1092
    goto :goto_0

    .line 474
    :pswitch_1
    if-eqz v0, :cond_4

    .line 475
    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 481
    :goto_3
    invoke-direct {p0}, Luk/co/senab/photoview/d;->m()V

    move v0, v1

    .line 482
    goto :goto_1

    .line 477
    :cond_4
    const-string v0, "PhotoViewAttacher"

    const-string v2, "onTouch getParent() returned null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 488
    :pswitch_2
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->g()F

    move-result v0

    iget v2, p0, Luk/co/senab/photoview/d;->f:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 489
    invoke-virtual {p0}, Luk/co/senab/photoview/d;->b()Landroid/graphics/RectF;

    move-result-object v5

    .line 490
    if-eqz v5, :cond_0

    .line 491
    new-instance v0, Luk/co/senab/photoview/g;

    invoke-virtual {p0}, Luk/co/senab/photoview/d;->g()F

    move-result v2

    iget v3, p0, Luk/co/senab/photoview/d;->f:F

    .line 492
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Luk/co/senab/photoview/g;-><init>(Luk/co/senab/photoview/d;FFFF)V

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v0, v6

    .line 493
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
