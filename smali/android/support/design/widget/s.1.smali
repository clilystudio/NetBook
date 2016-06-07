.class final Landroid/support/design/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private synthetic a:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .prologue
    .line 2498
    iput-object p1, p0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2501
    iget-object v0, p0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2504
    :cond_0
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 2508
    iget-object v2, p0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/CoordinatorLayout;

    .line 3122
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .line 3123
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 3124
    invoke-virtual {v2, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3125
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/t;

    .line 3256
    iget-object v0, v0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    .line 3128
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v4, p2}, Lcom/xiaomi/mistatistic/sdk/a/r;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3129
    invoke-virtual {v0, v2, v4, p2}, Lcom/xiaomi/mistatistic/sdk/a/r;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 3123
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2510
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2511
    iget-object v0, p0, Landroid/support/design/widget/s;->a:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2513
    :cond_2
    return-void
.end method
