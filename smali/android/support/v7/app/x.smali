.class final Landroid/support/v7/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/b/b;


# instance fields
.field private a:Landroid/support/v7/b/b;

.field private synthetic b:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/b/b;)V
    .locals 0

    .prologue
    .line 1497
    iput-object p1, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    iput-object p2, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/b/b;

    .line 1499
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/b/a;)V
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/b/b;

    invoke-interface {v0, p1}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;)V

    .line 1515
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1516
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1517
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1524
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1525
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 1530
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->j:Landroid/support/v7/b/a;

    .line 1531
    return-void

    .line 1518
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1520
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Landroid/support/v7/app/x;->b:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/b/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/b/a;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/b/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/b/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/b/b;->b(Landroid/support/v7/b/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
