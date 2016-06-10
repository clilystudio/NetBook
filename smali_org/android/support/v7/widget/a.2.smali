.class Landroid/support/v7/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/v;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 1723
    iput-object p1, p0, Landroid/support/v7/widget/a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V
    .locals 0

    .prologue
    .line 2723
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method

.method static a(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;Z)I
    .locals 2

    .prologue
    .line 3063
    invoke-virtual {p4}, Landroid/support/v7/widget/ao;->h()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->d()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3065
    :cond_0
    const/4 v0, 0x0

    .line 3072
    :goto_0
    return v0

    .line 3067
    :cond_1
    if-nez p5, :cond_2

    .line 3068
    invoke-static {p2}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v0

    invoke-static {p3}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3070
    :cond_2
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3072
    invoke-virtual {p1}, Landroid/support/v7/widget/Z;->f()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method static a(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;ZZ)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3032
    invoke-virtual {p4}, Landroid/support/v7/widget/ao;->h()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->d()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3052
    :cond_0
    :goto_0
    return v0

    .line 3036
    :cond_1
    invoke-static {p2}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3038
    invoke-static {p2}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v2

    invoke-static {p3}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3040
    if-eqz p6, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->d()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3043
    :goto_1
    if-eqz p5, :cond_0

    .line 3046
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3048
    invoke-static {p2}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v2

    invoke-static {p3}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 3050
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3052
    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/Z;->c()I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 3040
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method static b(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;Z)I
    .locals 3

    .prologue
    .line 3082
    invoke-virtual {p4}, Landroid/support/v7/widget/ao;->h()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->d()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3084
    :cond_0
    const/4 v0, 0x0

    .line 3096
    :goto_0
    return v0

    .line 3086
    :cond_1
    if-nez p5, :cond_2

    .line 3087
    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->d()I

    move-result v0

    goto :goto_0

    .line 3090
    :cond_2
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3092
    invoke-static {p2}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3096
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/aw;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 2

    .prologue
    .line 1736
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1737
    check-cast v0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->n()Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->a(Z)V

    .line 1739
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Landroid/support/v7/internal/view/menu/v;

    move-result-object v0

    .line 1740
    if-eqz v0, :cond_1

    .line 1741
    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/v;->a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 1743
    :cond_1
    return-void
.end method

.method public a_(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1727
    if-nez p1, :cond_0

    move v0, v1

    .line 1731
    :goto_0
    return v0

    .line 1729
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/ActionMenuPresenter;->f:I

    .line 1730
    iget-object v0, p0, Landroid/support/v7/widget/a;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Landroid/support/v7/internal/view/menu/v;

    move-result-object v0

    .line 1731
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/v;->a_(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
