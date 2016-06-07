.class public final Lcom/c/b/a/a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/c/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/graphics/Camera;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/c/b/a/a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/c/b/a/a;->c:Landroid/graphics/Camera;

    .line 48
    iput v1, p0, Lcom/c/b/a/a;->d:F

    .line 54
    iput v1, p0, Lcom/c/b/a/a;->h:F

    .line 55
    iput v1, p0, Lcom/c/b/a/a;->i:F

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/c/b/a/a;->l:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/c/b/a/a;->m:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/c/b/a/a;->n:Landroid/graphics/Matrix;

    .line 64
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/c/b/a/a;->setDuration(J)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/b/a/a;->setFillAfter(Z)V

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method

.method public static a(Landroid/view/View;)Lcom/c/b/a/a;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/c/b/a/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/b/a/a;

    .line 37
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 38
    :cond_0
    new-instance v0, Lcom/c/b/a/a;

    invoke-direct {v0, p0}, Lcom/c/b/a/a;-><init>(Landroid/view/View;)V

    .line 39
    sget-object v1, Lcom/c/b/a/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    return-object v0
.end method

.method private a(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 10

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 281
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 282
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 284
    div-float v2, v0, v3

    .line 285
    div-float v3, v1, v3

    .line 287
    iget v4, p0, Lcom/c/b/a/a;->e:F

    .line 288
    iget v5, p0, Lcom/c/b/a/a;->f:F

    .line 289
    iget v6, p0, Lcom/c/b/a/a;->g:F

    .line 290
    cmpl-float v7, v4, v8

    if-nez v7, :cond_0

    cmpl-float v7, v5, v8

    if-nez v7, :cond_0

    cmpl-float v7, v6, v8

    if-eqz v7, :cond_1

    .line 291
    :cond_0
    iget-object v7, p0, Lcom/c/b/a/a;->c:Landroid/graphics/Camera;

    .line 292
    invoke-virtual {v7}, Landroid/graphics/Camera;->save()V

    .line 293
    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 294
    invoke-virtual {v7, v5}, Landroid/graphics/Camera;->rotateY(F)V

    .line 295
    neg-float v4, v6

    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 296
    invoke-virtual {v7, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 297
    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    .line 298
    neg-float v4, v2

    neg-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 299
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 302
    :cond_1
    iget v4, p0, Lcom/c/b/a/a;->h:F

    .line 303
    iget v5, p0, Lcom/c/b/a/a;->i:F

    .line 304
    cmpl-float v6, v4, v9

    if-nez v6, :cond_2

    cmpl-float v6, v5, v9

    if-eqz v6, :cond_3

    .line 305
    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 306
    div-float/2addr v2, v0

    neg-float v2, v2

    mul-float/2addr v4, v0

    sub-float v0, v4, v0

    mul-float/2addr v0, v2

    .line 307
    div-float v2, v3, v1

    neg-float v2, v2

    mul-float v3, v5, v1

    sub-float v1, v3, v1

    mul-float/2addr v1, v2

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 311
    :cond_3
    iget v0, p0, Lcom/c/b/a/a;->j:F

    iget v1, p0, Lcom/c/b/a/a;->k:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 312
    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 255
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 258
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 260
    iget-object v0, p0, Lcom/c/b/a/a;->n:Landroid/graphics/Matrix;

    .line 261
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 262
    invoke-direct {p0, v0, p2}, Lcom/c/b/a/a;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 263
    iget-object v0, p0, Lcom/c/b/a/a;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 268
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 269
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 270
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 271
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 273
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 274
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 275
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 276
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 278
    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 231
    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/c/b/a/a;->l:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/c/b/a/a;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 234
    :cond_0
    return-void
.end method

.method private l()V
    .locals 8

    .prologue
    .line 236
    iget-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 237
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/c/b/a/a;->m:Landroid/graphics/RectF;

    .line 242
    invoke-direct {p0, v1, v0}, Lcom/c/b/a/a;->a(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 243
    iget-object v2, p0, Lcom/c/b/a/a;->l:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/c/b/a/a;->d:F

    return v0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/c/b/a/a;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 75
    iput p1, p0, Lcom/c/b/a/a;->d:F

    .line 76
    iget-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 81
    :cond_0
    return-void
.end method

.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 317
    if-eqz v0, :cond_0

    .line 318
    iget v1, p0, Lcom/c/b/a/a;->d:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 319
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/c/b/a/a;->a(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 321
    :cond_0
    return-void
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/c/b/a/a;->g:F

    return v0
.end method

.method public final b(F)V
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/c/b/a/a;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/c/b/a/a;->k()V

    .line 110
    iput p1, p0, Lcom/c/b/a/a;->g:F

    .line 111
    invoke-direct {p0}, Lcom/c/b/a/a;->l()V

    .line 113
    :cond_0
    return-void
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/c/b/a/a;->e:F

    return v0
.end method

.method public final c(F)V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/c/b/a/a;->e:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/c/b/a/a;->k()V

    .line 120
    iput p1, p0, Lcom/c/b/a/a;->e:F

    .line 121
    invoke-direct {p0}, Lcom/c/b/a/a;->l()V

    .line 123
    :cond_0
    return-void
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/c/b/a/a;->f:F

    return v0
.end method

.method public final d(F)V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/c/b/a/a;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/c/b/a/a;->k()V

    .line 131
    iput p1, p0, Lcom/c/b/a/a;->f:F

    .line 132
    invoke-direct {p0}, Lcom/c/b/a/a;->l()V

    .line 134
    :cond_0
    return-void
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/c/b/a/a;->h:F

    return v0
.end method

.method public final e(F)V
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/c/b/a/a;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/c/b/a/a;->k()V

    .line 141
    iput p1, p0, Lcom/c/b/a/a;->h:F

    .line 142
    invoke-direct {p0}, Lcom/c/b/a/a;->l()V

    .line 144
    :cond_0
    return-void
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/c/b/a/a;->i:F

    return v0
.end method

.method public final f(F)V
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/c/b/a/a;->i:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/c/b/a/a;->k()V

    .line 151
    iput p1, p0, Lcom/c/b/a/a;->i:F

    .line 152
    invoke-direct {p0}, Lcom/c/b/a/a;->l()V

    .line 154
    :cond_0
    return-void
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/c/b/a/a;->j:F

    return v0
.end method

.method public final g(F)V
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/c/b/a/a;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/c/b/a/a;->k()V

    .line 188
    iput p1, p0, Lcom/c/b/a/a;->j:F

    .line 189
    invoke-direct {p0}, Lcom/c/b/a/a;->l()V

    .line 191
    :cond_0
    return-void
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/c/b/a/a;->k:F

    return v0
.end method

.method public final h(F)V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/c/b/a/a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/c/b/a/a;->k()V

    .line 198
    iput p1, p0, Lcom/c/b/a/a;->k:F

    .line 199
    invoke-direct {p0}, Lcom/c/b/a/a;->l()V

    .line 201
    :cond_0
    return-void
.end method

.method public final i()F
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 204
    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/c/b/a/a;->j:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public final i(F)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/c/b/a/a;->g(F)V

    .line 214
    :cond_0
    return-void
.end method

.method public final j()F
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 217
    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/c/b/a/a;->k:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public final j(F)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/c/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/c/b/a/a;->h(F)V

    .line 227
    :cond_0
    return-void
.end method
