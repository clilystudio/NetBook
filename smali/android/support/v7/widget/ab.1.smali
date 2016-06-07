.class final Landroid/support/v7/widget/ab;
.super Landroid/support/v7/widget/Z;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ao;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Z;-><init>(Landroid/support/v7/widget/ao;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 318
    iget-object v1, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    .line 8826
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {p1}, Landroid/support/v7/widget/ao;->e(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 318
    iget v0, v0, Landroid/support/v7/widget/ap;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ao;->d(I)V

    .line 284
    return-void
.end method

.method public final b(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 311
    iget-object v1, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    .line 7850
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {p1}, Landroid/support/v7/widget/ao;->f(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 311
    iget v0, v0, Landroid/support/v7/widget/ap;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->l()I

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 295
    invoke-static {p1}, Landroid/support/v7/widget/ao;->d(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/ap;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/ap;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->j()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->n()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 303
    invoke-static {p1}, Landroid/support/v7/widget/ao;->c(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/ap;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/ap;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->j()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->j()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->l()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->n()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/ab;->a:Landroid/support/v7/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->n()I

    move-result v0

    return v0
.end method
