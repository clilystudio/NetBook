.class final Landroid/support/v7/widget/aY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/u;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

.field private b:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1881
    iput-object p1, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;B)V
    .locals 0

    .prologue
    .line 1881
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aY;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Landroid/support/v7/widget/aY;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aY;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Landroid/support/v7/widget/aY;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/aY;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->b(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    .line 1891
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/aY;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 1892
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 2000
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .prologue
    .line 1934
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1902
    iget-object v1, p0, Landroid/support/v7/widget/aY;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    .line 1905
    iget-object v1, p0, Landroid/support/v7/widget/aY;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 1906
    iget-object v1, p0, Landroid/support/v7/widget/aY;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    move v1, v0

    .line 1907
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1908
    iget-object v3, p0, Landroid/support/v7/widget/aY;->b:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1909
    iget-object v4, p0, Landroid/support/v7/widget/aY;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1910
    const/4 v0, 0x1

    .line 1916
    :cond_0
    if-nez v0, :cond_1

    .line 1918
    iget-object v0, p0, Landroid/support/v7/widget/aY;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aY;->b(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z

    .line 1921
    :cond_1
    return-void

    .line 1907
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1938
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1943
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)V

    .line 1944
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 1945
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1947
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 1948
    iput-object p1, p0, Landroid/support/v7/widget/aY;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 1949
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 1950
    invoke-static {}, Landroid/support/v7/widget/Toolbar;->n()Landroid/support/v7/widget/aZ;

    move-result-object v0

    .line 1951
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/aZ;->a:I

    .line 1952
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/aZ;->b:I

    .line 1953
    iget-object v1, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1954
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1957
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 1958
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1959
    invoke-virtual {p1, v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->e(Z)V

    .line 1961
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/b/c;

    if-eqz v0, :cond_2

    .line 1962
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/b/c;

    invoke-interface {v0}, Landroid/support/v7/b/c;->a()V

    .line 1965
    :cond_2
    return v3
.end method

.method public final a(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .locals 1

    .prologue
    .line 1929
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 1990
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1972
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/b/c;

    if-eqz v0, :cond_0

    .line 1973
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/b/c;

    invoke-interface {v0}, Landroid/support/v7/b/c;->b()V

    .line 1976
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1977
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1978
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v3, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 1980
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 1981
    iput-object v3, p0, Landroid/support/v7/widget/aY;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 1982
    iget-object v0, p0, Landroid/support/v7/widget/aY;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1983
    invoke-virtual {p1, v2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->e(Z)V

    .line 1985
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1995
    const/4 v0, 0x0

    return-object v0
.end method
