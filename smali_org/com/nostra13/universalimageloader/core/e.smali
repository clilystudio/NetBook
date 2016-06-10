.class public final Lcom/nostra13/universalimageloader/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private k:Landroid/graphics/BitmapFactory$Options;

.field private l:I

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Landroid/support/design/widget/K;

.field private p:Landroid/support/design/widget/K;

.field private q:Lcom/nostra13/universalimageloader/core/b/a;

.field private r:Landroid/os/Handler;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput v1, p0, Lcom/nostra13/universalimageloader/core/e;->a:I

    .line 204
    iput v1, p0, Lcom/nostra13/universalimageloader/core/e;->b:I

    .line 205
    iput v1, p0, Lcom/nostra13/universalimageloader/core/e;->c:I

    .line 206
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->d:Landroid/graphics/drawable/Drawable;

    .line 207
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->e:Landroid/graphics/drawable/Drawable;

    .line 208
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->f:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/e;->g:Z

    .line 210
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/e;->h:Z

    .line 211
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/e;->i:Z

    .line 212
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 213
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->k:Landroid/graphics/BitmapFactory$Options;

    .line 214
    iput v1, p0, Lcom/nostra13/universalimageloader/core/e;->l:I

    .line 215
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/e;->m:Z

    .line 216
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->n:Ljava/lang/Object;

    .line 217
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->o:Landroid/support/design/widget/K;

    .line 218
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->p:Landroid/support/design/widget/K;

    .line 1125
    new-instance v0, Lcom/nostra13/universalimageloader/core/b/d;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/b/d;-><init>()V

    .line 219
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->q:Lcom/nostra13/universalimageloader/core/b/a;

    .line 220
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->r:Landroid/os/Handler;

    .line 221
    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/e;->s:Z

    .line 224
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->k:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 225
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->k:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 226
    return-void
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->a:I

    return v0
.end method

.method static synthetic b(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->b:I

    return v0
.end method

.method static synthetic c(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->c:I

    return v0
.end method

.method static synthetic d(Lcom/nostra13/universalimageloader/core/e;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/nostra13/universalimageloader/core/e;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/nostra13/universalimageloader/core/e;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/nostra13/universalimageloader/core/e;)Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/nostra13/universalimageloader/core/e;)Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/nostra13/universalimageloader/core/e;)Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic k(Lcom/nostra13/universalimageloader/core/e;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic l(Lcom/nostra13/universalimageloader/core/e;)I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/nostra13/universalimageloader/core/e;->l:I

    return v0
.end method

.method static synthetic m(Lcom/nostra13/universalimageloader/core/e;)Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->m:Z

    return v0
.end method

.method static synthetic n(Lcom/nostra13/universalimageloader/core/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/nostra13/universalimageloader/core/e;)Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->o:Landroid/support/design/widget/K;

    return-object v0
.end method

.method static synthetic p(Lcom/nostra13/universalimageloader/core/e;)Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->p:Landroid/support/design/widget/K;

    return-object v0
.end method

.method static synthetic q(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/b/a;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->q:Lcom/nostra13/universalimageloader/core/b/a;

    return-object v0
.end method

.method static synthetic r(Lcom/nostra13/universalimageloader/core/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/nostra13/universalimageloader/core/e;)Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->s:Z

    return v0
.end method


# virtual methods
.method public final a()Lcom/nostra13/universalimageloader/core/d;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Lcom/nostra13/universalimageloader/core/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/d;-><init>(Lcom/nostra13/universalimageloader/core/e;B)V

    return-object v0
.end method

.method public final a(I)Lcom/nostra13/universalimageloader/core/e;
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lcom/nostra13/universalimageloader/core/e;->a:I

    .line 249
    return-object p0
.end method

.method public final a(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/e;
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/e;->j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 377
    return-object p0
.end method

.method public final a(Lcom/nostra13/universalimageloader/core/b/a;)Lcom/nostra13/universalimageloader/core/e;
    .locals 2

    .prologue
    .line 444
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/e;->q:Lcom/nostra13/universalimageloader/core/b/a;

    .line 446
    return-object p0
.end method

.method public final a(Lcom/nostra13/universalimageloader/core/d;)Lcom/nostra13/universalimageloader/core/e;
    .locals 1

    .prologue
    .line 465
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->a(Lcom/nostra13/universalimageloader/core/d;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->a:I

    .line 466
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->b(Lcom/nostra13/universalimageloader/core/d;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->b:I

    .line 467
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->c(Lcom/nostra13/universalimageloader/core/d;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->c:I

    .line 468
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->d(Lcom/nostra13/universalimageloader/core/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->d:Landroid/graphics/drawable/Drawable;

    .line 469
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->e(Lcom/nostra13/universalimageloader/core/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->e:Landroid/graphics/drawable/Drawable;

    .line 470
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->f(Lcom/nostra13/universalimageloader/core/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->f:Landroid/graphics/drawable/Drawable;

    .line 471
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->g(Lcom/nostra13/universalimageloader/core/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->g:Z

    .line 472
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->h(Lcom/nostra13/universalimageloader/core/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->h:Z

    .line 473
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->i(Lcom/nostra13/universalimageloader/core/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->i:Z

    .line 474
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->j(Lcom/nostra13/universalimageloader/core/d;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 475
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->k(Lcom/nostra13/universalimageloader/core/d;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->k:Landroid/graphics/BitmapFactory$Options;

    .line 476
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->l(Lcom/nostra13/universalimageloader/core/d;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/e;->l:I

    .line 477
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->m(Lcom/nostra13/universalimageloader/core/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->m:Z

    .line 478
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->n(Lcom/nostra13/universalimageloader/core/d;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->n:Ljava/lang/Object;

    .line 479
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->o(Lcom/nostra13/universalimageloader/core/d;)Landroid/support/design/widget/K;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->o:Landroid/support/design/widget/K;

    .line 480
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->p(Lcom/nostra13/universalimageloader/core/d;)Landroid/support/design/widget/K;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->p:Landroid/support/design/widget/K;

    .line 481
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->q(Lcom/nostra13/universalimageloader/core/d;)Lcom/nostra13/universalimageloader/core/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->q:Lcom/nostra13/universalimageloader/core/b/a;

    .line 482
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->r(Lcom/nostra13/universalimageloader/core/d;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->r:Landroid/os/Handler;

    .line 483
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/d;->s(Lcom/nostra13/universalimageloader/core/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->s:Z

    .line 484
    return-object p0
.end method

.method public final a(Z)Lcom/nostra13/universalimageloader/core/e;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->h:Z

    .line 342
    return-object p0
.end method

.method public final b(Z)Lcom/nostra13/universalimageloader/core/e;
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/e;->i:Z

    .line 368
    return-object p0
.end method
