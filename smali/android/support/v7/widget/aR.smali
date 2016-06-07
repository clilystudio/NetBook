.class final Landroid/support/v7/widget/aR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:I

.field final synthetic e:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private c()V
    .locals 2

    .prologue
    .line 2111
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    .line 2113
    iget-object v1, p0, Landroid/support/v7/widget/aR;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/aR;->a:I

    .line 2121
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2145
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 4261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    .line 2147
    iget-object v1, p0, Landroid/support/v7/widget/aR;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/aR;->b:I

    .line 2155
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 2125
    iget v0, p0, Landroid/support/v7/widget/aR;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2126
    iget v0, p0, Landroid/support/v7/widget/aR;->a:I

    .line 2129
    :goto_0
    return v0

    .line 2128
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/aR;->c()V

    .line 2129
    iget v0, p0, Landroid/support/v7/widget/aR;->a:I

    goto :goto_0
.end method

.method final a(I)I
    .locals 2

    .prologue
    .line 2100
    iget v0, p0, Landroid/support/v7/widget/aR;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2101
    iget p1, p0, Landroid/support/v7/widget/aR;->a:I

    .line 2107
    :cond_0
    :goto_0
    return p1

    .line 2103
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    invoke-direct {p0}, Landroid/support/v7/widget/aR;->c()V

    .line 2107
    iget p1, p0, Landroid/support/v7/widget/aR;->a:I

    goto :goto_0
.end method

.method final b()I
    .locals 2

    .prologue
    .line 2159
    iget v0, p0, Landroid/support/v7/widget/aR;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2160
    iget v0, p0, Landroid/support/v7/widget/aR;->b:I

    .line 2163
    :goto_0
    return v0

    .line 2162
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/aR;->d()V

    .line 2163
    iget v0, p0, Landroid/support/v7/widget/aR;->b:I

    goto :goto_0
.end method

.method final b(I)I
    .locals 2

    .prologue
    .line 2133
    iget v0, p0, Landroid/support/v7/widget/aR;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2134
    iget p1, p0, Landroid/support/v7/widget/aR;->b:I

    .line 2141
    :cond_0
    :goto_0
    return p1

    .line 2136
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2137
    if-eqz v0, :cond_0

    .line 2140
    invoke-direct {p0}, Landroid/support/v7/widget/aR;->d()V

    .line 2141
    iget p1, p0, Landroid/support/v7/widget/aR;->b:I

    goto :goto_0
.end method
