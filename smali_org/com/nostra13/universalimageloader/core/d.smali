.class public final Lcom/nostra13/universalimageloader/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final k:Landroid/graphics/BitmapFactory$Options;

.field private final l:I

.field private final m:Z

.field private final n:Ljava/lang/Object;

.field private final o:Landroid/support/design/widget/K;

.field private final p:Landroid/support/design/widget/K;

.field private final q:Lcom/nostra13/universalimageloader/core/b/a;

.field private final r:Landroid/os/Handler;

.field private final s:Z


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/e;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->a(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:I

    .line 89
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->b(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->b:I

    .line 90
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->c(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->c:I

    .line 91
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->d(Lcom/nostra13/universalimageloader/core/e;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->d:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->e(Lcom/nostra13/universalimageloader/core/e;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->e:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->f(Lcom/nostra13/universalimageloader/core/e;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->f:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->g(Lcom/nostra13/universalimageloader/core/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->g:Z

    .line 95
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->h(Lcom/nostra13/universalimageloader/core/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->h:Z

    .line 96
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->i(Lcom/nostra13/universalimageloader/core/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Z

    .line 97
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->j(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 98
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->k(Lcom/nostra13/universalimageloader/core/e;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->k:Landroid/graphics/BitmapFactory$Options;

    .line 99
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->l(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->l:I

    .line 100
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->m(Lcom/nostra13/universalimageloader/core/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->m:Z

    .line 101
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->n(Lcom/nostra13/universalimageloader/core/e;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->n:Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->o(Lcom/nostra13/universalimageloader/core/e;)Landroid/support/design/widget/K;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->o:Landroid/support/design/widget/K;

    .line 103
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->p(Lcom/nostra13/universalimageloader/core/e;)Landroid/support/design/widget/K;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->p:Landroid/support/design/widget/K;

    .line 104
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->q(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->q:Lcom/nostra13/universalimageloader/core/b/a;

    .line 105
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->r(Lcom/nostra13/universalimageloader/core/e;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->r:Landroid/os/Handler;

    .line 106
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->s(Lcom/nostra13/universalimageloader/core/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->s:Z

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/e;B)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/d;-><init>(Lcom/nostra13/universalimageloader/core/e;)V

    return-void
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/core/d;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:I

    return v0
.end method

.method static synthetic b(Lcom/nostra13/universalimageloader/core/d;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->b:I

    return v0
.end method

.method static synthetic c(Lcom/nostra13/universalimageloader/core/d;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->c:I

    return v0
.end method

.method static synthetic d(Lcom/nostra13/universalimageloader/core/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lcom/nostra13/universalimageloader/core/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic f(Lcom/nostra13/universalimageloader/core/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/nostra13/universalimageloader/core/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/nostra13/universalimageloader/core/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/nostra13/universalimageloader/core/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/nostra13/universalimageloader/core/d;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic k(Lcom/nostra13/universalimageloader/core/d;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic l(Lcom/nostra13/universalimageloader/core/d;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->l:I

    return v0
.end method

.method static synthetic m(Lcom/nostra13/universalimageloader/core/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->m:Z

    return v0
.end method

.method static synthetic n(Lcom/nostra13/universalimageloader/core/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->n:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/nostra13/universalimageloader/core/d;)Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->o:Landroid/support/design/widget/K;

    return-object v0
.end method

.method static synthetic p(Lcom/nostra13/universalimageloader/core/d;)Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->p:Landroid/support/design/widget/K;

    return-object v0
.end method

.method static synthetic q(Lcom/nostra13/universalimageloader/core/d;)Lcom/nostra13/universalimageloader/core/b/a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->q:Lcom/nostra13/universalimageloader/core/b/a;

    return-object v0
.end method

.method static synthetic r(Lcom/nostra13/universalimageloader/core/d;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/nostra13/universalimageloader/core/d;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->s:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->c:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->o:Landroid/support/design/widget/K;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->p:Landroid/support/design/widget/K;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->l:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->g:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->h:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Z

    return v0
.end method

.method public final j()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public final k()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->k:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->l:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->m:Z

    return v0
.end method

.method public final n()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final o()Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->o:Landroid/support/design/widget/K;

    return-object v0
.end method

.method public final p()Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->p:Landroid/support/design/widget/K;

    return-object v0
.end method

.method public final q()Lcom/nostra13/universalimageloader/core/b/a;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->q:Lcom/nostra13/universalimageloader/core/b/a;

    return-object v0
.end method

.method public final r()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->r:Landroid/os/Handler;

    return-object v0
.end method

.method final s()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->s:Z

    return v0
.end method
