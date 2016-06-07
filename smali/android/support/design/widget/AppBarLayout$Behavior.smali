.class public final Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/aN;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/aN",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/Runnable;

.field private d:Landroid/support/v4/widget/ScrollerCompat;

.field private e:Landroid/support/design/widget/au;

.field private f:I

.field private g:Z

.field private h:F


# direct methods
.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 6

    .prologue
    .line 795
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->g()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout$Behavior;)Landroid/support/v4/widget/ScrollerCompat;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/ScrollerCompat;

    return-object v0
.end method

.method private a(Landroid/support/design/widget/AppBarLayout;)V
    .locals 5

    .prologue
    .line 844
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;

    move-result-object v2

    .line 848
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 849
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 850
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/h;

    .line 852
    :goto_1
    if-eqz v0, :cond_0

    .line 4583
    invoke-super {p0}, Landroid/support/design/widget/aN;->a()I

    move-result v4

    .line 853
    invoke-interface {v0, p1, v4}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/AppBarLayout;I)V

    .line 848
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 850
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 856
    :cond_2
    return-void
.end method

.method private b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 807
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->g()I

    move-result v4

    .line 810
    if-eqz p4, :cond_2

    if-lt v4, p4, :cond_2

    if-gt v4, p5, :cond_2

    .line 813
    invoke-static {p3, p4, p5}, Landroid/support/design/widget/d;->a(III)I

    move-result v1

    .line 815
    if-eq v4, v1, :cond_2

    .line 1252
    iget-boolean v0, p2, Landroid/support/design/widget/AppBarLayout;->a:Z

    .line 816
    if-eqz v0, :cond_5

    .line 1859
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1861
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_4

    .line 1862
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1863
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/g;

    .line 2575
    iget-object v8, v0, Landroid/support/design/widget/g;->b:Landroid/view/animation/Interpolator;

    .line 1866
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v5, v9, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v5, v9, :cond_3

    .line 1867
    if-eqz v8, :cond_4

    .line 3551
    iget v0, v0, Landroid/support/design/widget/g;->a:I

    .line 1870
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 1872
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    .line 1873
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1875
    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v2, v0

    .line 1879
    :cond_0
    if-lez v2, :cond_4

    .line 1880
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v5, v0

    .line 1881
    int-to-float v3, v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-interface {v8, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1885
    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3583
    :goto_1
    invoke-super {p0, v0}, Landroid/support/design/widget/aN;->a(I)Z

    move-result v3

    .line 823
    sub-int v2, v4, v1

    .line 825
    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:I

    .line 827
    if-nez v3, :cond_1

    .line 4252
    iget-boolean v0, p2, Landroid/support/design/widget/AppBarLayout;->a:Z

    .line 827
    if-eqz v0, :cond_1

    .line 832
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)V

    .line 836
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;)V

    :cond_2
    move v0, v2

    .line 840
    return v0

    .line 1861
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 816
    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private g()I
    .locals 2

    .prologue
    .line 899
    .line 5583
    invoke-super {p0}, Landroid/support/design/widget/aN;->a()I

    move-result v0

    .line 899
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->a:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final bridge synthetic a()I
    .locals 1

    .prologue
    .line 583
    invoke-super {p0}, Landroid/support/design/widget/aN;->a()I

    move-result v0

    return v0
.end method

.method final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)I
    .locals 6

    .prologue
    .line 801
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 583
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 6904
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/aN;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v2

    .line 7583
    invoke-super {p0}, Landroid/support/design/widget/aN;->a()I

    move-result v4

    .line 6908
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 6909
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6910
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v7, v1, v4

    .line 6912
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    if-ltz v7, :cond_1

    .line 6913
    new-instance v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 6914
    iput v3, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    .line 6915
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    .line 6917
    int-to-float v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    move-object v0, v1

    .line 6918
    :goto_1
    return-object v0

    .line 6908
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 583
    goto :goto_1
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 583
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 7929
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    .line 7930
    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 7931
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/aN;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 7932
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    .line 7933
    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:F

    .line 7934
    iget-boolean v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->g:Z

    .line 7935
    :goto_0
    return-void

    .line 7936
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/aN;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 7937
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    goto :goto_0
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 583
    .line 10660
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    .line 583
    return-void
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 583
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 10643
    if-gez p7, :cond_0

    .line 10646
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->e()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move v3, p7

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    .line 10649
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    :goto_0
    return-void

    .line 10652
    :cond_0
    iput-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .prologue
    .line 583
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    .line 10624
    if-eqz p5, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->b:Z

    if-nez v0, :cond_0

    .line 10626
    if-gez p5, :cond_1

    .line 10628
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    neg-int v4, v0

    .line 10629
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->d()I

    move-result v0

    add-int v5, v4, v0

    .line 10635
    :goto_0
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result v0

    aput v0, p6, v6

    .line 583
    :cond_0
    return-void

    .line 10632
    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->c()I

    move-result v0

    neg-int v4, v0

    .line 10633
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(I)Z
    .locals 1

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/support/design/widget/aN;->a(I)Z

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 583
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 5773
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/aN;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    .line 5775
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    if-ltz v0, :cond_0

    .line 5776
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5777
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    neg-int v2, v2

    .line 5778
    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->g:Z

    if-eqz v3, :cond_1

    .line 5779
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 6583
    :goto_0
    invoke-super {p0, v0}, Landroid/support/design/widget/aN;->a(I)Z

    .line 5784
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->f:I

    .line 5788
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/AppBarLayout;)V

    .line 583
    return v1

    .line 5781
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->h:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    .line 583
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 8667
    if-nez p6, :cond_3

    .line 8669
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    neg-int v7, v0

    neg-float v4, p5

    .line 8726
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 8727
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8730
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/ScrollerCompat;

    if-nez v0, :cond_1

    .line 8731
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/ScrollerCompat;

    .line 8734
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->g()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 8740
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->d:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8741
    new-instance v0, Landroid/support/design/widget/e;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/design/widget/e;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    .line 8742
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 8743
    const/4 v0, 0x1

    .line 8697
    :goto_0
    return v0

    .line 8745
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->c:Ljava/lang/Runnable;

    .line 8746
    const/4 v0, 0x0

    .line 8669
    goto :goto_0

    .line 8674
    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-gez v0, :cond_5

    .line 8676
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 8679
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->g()I

    move-result v1

    if-le v1, v0, :cond_6

    .line 8701
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 8686
    :cond_5
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->c()I

    move-result v0

    neg-int v0, v0

    .line 8688
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->g()I

    move-result v1

    if-lt v1, v0, :cond_4

    .line 8695
    :cond_6
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->g()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 9706
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    if-nez v1, :cond_7

    .line 9707
    invoke-static {}, Landroid/support/design/widget/aP;->a()Landroid/support/design/widget/au;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    .line 9708
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    sget-object v2, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/au;->a(Landroid/view/animation/Interpolator;)V

    .line 9709
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    new-instance v2, Landroid/support/design/widget/d;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/d;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/support/design/widget/au;->a(Landroid/support/design/widget/ay;)V

    .line 9720
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->g()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/au;->a(II)V

    .line 9721
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    invoke-virtual {v0}, Landroid/support/design/widget/au;->a()V

    .line 8697
    const/4 v0, 0x1

    goto :goto_0

    .line 9717
    :cond_7
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    invoke-virtual {v1}, Landroid/support/design/widget/au;->e()V

    goto :goto_1
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 583
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    .line 11609
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 11613
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    if-eqz v1, :cond_0

    .line 11615
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->e:Landroid/support/design/widget/au;

    invoke-virtual {v1}, Landroid/support/design/widget/au;->e()V

    .line 583
    :cond_0
    return v0

    .line 11609
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
