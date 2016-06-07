.class final Landroid/support/design/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/h;


# instance fields
.field private synthetic a:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;B)V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0, p1}, Landroid/support/design/widget/o;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0, p2}, Landroid/support/design/widget/CollapsingToolbarLayout;->b(Landroid/support/design/widget/CollapsingToolbarLayout;I)I

    .line 731
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    move v1, v0

    .line 732
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v3

    .line 734
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_2

    .line 735
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 736
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/n;

    .line 737
    invoke-static {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/view/View;)Landroid/support/design/widget/aO;

    move-result-object v6

    .line 739
    iget v7, v0, Landroid/support/design/widget/n;->a:I

    packed-switch v7, :pswitch_data_0

    .line 734
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 731
    goto :goto_0

    .line 741
    :pswitch_0
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 742
    neg-int v0, p2

    invoke-virtual {v6, v0}, Landroid/support/design/widget/aO;->a(I)Z

    goto :goto_2

    .line 746
    :pswitch_1
    neg-int v5, p2

    int-to-float v5, v5

    iget v0, v0, Landroid/support/design/widget/n;->b:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/support/design/widget/aO;->a(I)Z

    goto :goto_2

    .line 753
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 754
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v2, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1591
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 754
    add-int/2addr v2, v1

    if-ge v0, v2, :cond_6

    .line 755
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->d(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    .line 761
    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    if-lez v1, :cond_5

    .line 762
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 766
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 768
    iget-object v1, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->f(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/k;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/k;->b(F)V

    .line 771
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 774
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->g()F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 779
    :goto_4
    return-void

    .line 757
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/o;->a:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->e(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    goto :goto_3

    .line 777
    :cond_7
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_4

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
