.class public final Landroid/support/v7/internal/a/b;
.super Landroid/support/v7/app/a;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/lang/Runnable;


# direct methods
.method private a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-interface {v3}, Landroid/support/v7/internal/widget/D;->n()I

    move-result v0

    .line 255
    and-int v1, p1, p2

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/support/v7/internal/widget/D;->c(I)V

    .line 256
    return-void
.end method

.method private f()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 566
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->a:Z

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Landroid/support/v7/internal/a/c;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/internal/a/c;-><init>(Landroid/support/v7/internal/a/b;B)V

    new-instance v1, Landroid/support/v7/internal/a/d;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/a/d;-><init>(Landroid/support/v7/internal/a/b;B)V

    invoke-interface {v3, v0, v1}, Landroid/support/v7/internal/widget/D;->a(Landroid/support/v7/internal/view/menu/v;Landroid/support/v7/internal/view/menu/h;)V

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/a/b;->a:Z

    .line 571
    :cond_0
    invoke-interface {v3}, Landroid/support/v7/internal/widget/D;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->p()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-interface {v2}, Landroid/support/v7/internal/widget/D;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    const v1, 0x7f0300ba

    invoke-interface {v2}, Landroid/support/v7/internal/widget/D;->a()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/b;->a(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/support/v7/app/a;->a(Landroid/content/res/Configuration;)V

    .line 193
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/D;->b(Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 90
    new-instance v0, Landroid/support/v7/app/b;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/app/b;-><init>(II)V

    .line 1095
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1096
    const/4 v0, 0x0

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/D;->a(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/D;->b(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/a/b;->a(II)V

    .line 266
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-direct {p0}, Landroid/support/v7/internal/a/b;->f()Landroid/view/Menu;

    move-result-object v1

    .line 467
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->n()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/D;->a(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 270
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/a/b;->a(II)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/a/b;->a(II)V

    .line 276
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 280
    invoke-direct {p0, v0, v0}, Landroid/support/v7/internal/a/b;->a(II)V

    .line 281
    return-void
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    invoke-interface {v2}, Landroid/support/v7/internal/widget/D;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 424
    invoke-interface {v2}, Landroid/support/v7/internal/widget/D;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/a/b;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-interface {v1}, Landroid/support/v7/internal/widget/D;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v1}, Landroid/support/v7/internal/widget/D;->d()V

    .line 432
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Z)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final g(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 479
    iget-boolean v0, p0, Landroid/support/v7/internal/a/b;->b:Z

    if-ne p1, v0, :cond_1

    .line 488
    :cond_0
    return-void

    .line 482
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/internal/a/b;->b:Z

    .line 484
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 485
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 486
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
