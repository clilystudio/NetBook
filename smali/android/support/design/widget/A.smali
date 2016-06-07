.class Landroid/support/design/widget/A;
.super Landroid/support/design/widget/H;
.source "SourceFile"


# instance fields
.field a:Landroid/support/design/widget/M;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:F

.field private k:F

.field private l:I

.field private m:Landroid/support/design/widget/aa;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/N;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/H;-><init>(Landroid/view/View;Landroid/support/design/widget/N;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/A;->l:I

    .line 53
    new-instance v0, Landroid/support/design/widget/aa;

    invoke-direct {v0}, Landroid/support/design/widget/aa;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/A;->m:Landroid/support/design/widget/aa;

    .line 54
    iget-object v0, p0, Landroid/support/design/widget/A;->m:Landroid/support/design/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/aa;->a(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Landroid/support/design/widget/A;->m:Landroid/support/design/widget/aa;

    sget-object v1, Landroid/support/design/widget/A;->b:[I

    new-instance v2, Landroid/support/design/widget/D;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/D;-><init>(Landroid/support/design/widget/A;B)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/A;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/aa;->a([ILandroid/view/animation/Animation;)V

    .line 59
    iget-object v0, p0, Landroid/support/design/widget/A;->m:Landroid/support/design/widget/aa;

    sget-object v1, Landroid/support/design/widget/A;->c:[I

    new-instance v2, Landroid/support/design/widget/D;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/D;-><init>(Landroid/support/design/widget/A;B)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/A;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/aa;->a([ILandroid/view/animation/Animation;)V

    .line 62
    iget-object v0, p0, Landroid/support/design/widget/A;->m:Landroid/support/design/widget/aa;

    sget-object v1, Landroid/support/design/widget/A;->d:[I

    new-instance v2, Landroid/support/design/widget/E;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/E;-><init>(Landroid/support/design/widget/A;B)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/A;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/aa;->a([ILandroid/view/animation/Animation;)V

    .line 64
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/A;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Landroid/support/design/widget/A;->j:F

    return v0
.end method

.method private a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 202
    iget v0, p0, Landroid/support/design/widget/A;->l:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 203
    return-object p1
.end method

.method static synthetic a(Landroid/support/design/widget/A;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Landroid/support/design/widget/A;->n:Z

    return p1
.end method

.method static synthetic b(Landroid/support/design/widget/A;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Landroid/support/design/widget/A;->k:F

    return v0
.end method

.method private static b(I)Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 244
    new-array v0, v1, [[I

    .line 245
    new-array v1, v1, [I

    .line 248
    sget-object v2, Landroid/support/design/widget/A;->c:[I

    aput-object v2, v0, v3

    .line 249
    aput p0, v1, v3

    .line 252
    sget-object v2, Landroid/support/design/widget/A;->b:[I

    aput-object v2, v0, v4

    .line 253
    aput p0, v1, v4

    .line 257
    new-array v2, v3, [I

    aput-object v2, v0, v5

    .line 258
    aput v3, v1, v5

    .line 261
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private e()V
    .locals 5

    .prologue
    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 196
    iget-object v1, p0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/M;->getPadding(Landroid/graphics/Rect;)Z

    .line 197
    iget-object v1, p0, Landroid/support/design/widget/A;->f:Landroid/support/design/widget/N;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/N;->a(IIII)V

    .line 198
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/design/widget/A;->m:Landroid/support/design/widget/aa;

    invoke-virtual {v0}, Landroid/support/design/widget/aa;->a()V

    .line 157
    return-void
.end method

.method a(F)V
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Landroid/support/design/widget/A;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    iget v1, p0, Landroid/support/design/widget/A;->k:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/M;->a(FF)V

    .line 135
    iput p1, p0, Landroid/support/design/widget/A;->j:F

    .line 136
    invoke-direct {p0}, Landroid/support/design/widget/A;->e()V

    .line 138
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/design/widget/A;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/A;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 129
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/design/widget/A;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v0, p0, Landroid/support/design/widget/A;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/design/widget/A;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 119
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/design/widget/A;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 124
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/A;->g:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v0, p0, Landroid/support/design/widget/A;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 73
    if-eqz p3, :cond_0

    .line 74
    iget-object v0, p0, Landroid/support/design/widget/A;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 80
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 81
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 82
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 83
    iget-object v1, p0, Landroid/support/design/widget/A;->f:Landroid/support/design/widget/N;

    invoke-interface {v1}, Landroid/support/design/widget/N;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 87
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/A;->h:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Landroid/support/design/widget/A;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p4}, Landroid/support/design/widget/A;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 89
    iget-object v0, p0, Landroid/support/design/widget/A;->h:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    if-lez p5, :cond_1

    .line 93
    invoke-virtual {p0, p5, p2}, Landroid/support/design/widget/A;->a(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/A;->i:Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/A;->i:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/A;->g:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/A;->h:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    move-object v3, v0

    .line 100
    :goto_0
    new-instance v0, Landroid/support/design/widget/M;

    iget-object v1, p0, Landroid/support/design/widget/A;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/support/design/widget/A;->f:Landroid/support/design/widget/N;

    invoke-interface {v3}, Landroid/support/design/widget/N;->a()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/A;->j:F

    iget v5, p0, Landroid/support/design/widget/A;->j:F

    iget v6, p0, Landroid/support/design/widget/A;->k:F

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/M;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    .line 106
    iget-object v0, p0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/M;->a(Z)V

    .line 108
    iget-object v0, p0, Landroid/support/design/widget/A;->f:Landroid/support/design/widget/N;

    iget-object v1, p0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    invoke-interface {v0, v1}, Landroid/support/design/widget/N;->a(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-direct {p0}, Landroid/support/design/widget/A;->e()V

    .line 111
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/A;->i:Landroid/graphics/drawable/Drawable;

    .line 97
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/A;->g:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/A;->h:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    move-object v3, v0

    goto :goto_0
.end method

.method a([I)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/design/widget/A;->m:Landroid/support/design/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/aa;->a([I)V

    .line 152
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 161
    iget-boolean v0, p0, Landroid/support/design/widget/A;->n:Z

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/A;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$anim;->fab_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 168
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    new-instance v1, Landroid/support/design/widget/B;

    invoke-direct {v1, p0}, Landroid/support/design/widget/B;-><init>(Landroid/support/design/widget/A;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    iget-object v1, p0, Landroid/support/design/widget/A;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method b(F)V
    .locals 3

    .prologue
    .line 142
    iget v0, p0, Landroid/support/design/widget/A;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    if-eqz v0, :cond_0

    .line 143
    iput p1, p0, Landroid/support/design/widget/A;->k:F

    .line 144
    iget-object v0, p0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    iget v1, p0, Landroid/support/design/widget/A;->j:F

    add-float/2addr v1, p1

    .line 1329
    iget v2, v0, Landroid/support/design/widget/M;->b:F

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/M;->a(FF)V

    .line 145
    invoke-direct {p0}, Landroid/support/design/widget/A;->e()V

    .line 147
    :cond_0
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/design/widget/A;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/R$anim;->fab_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 189
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 190
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 191
    iget-object v1, p0, Landroid/support/design/widget/A;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    return-void
.end method
