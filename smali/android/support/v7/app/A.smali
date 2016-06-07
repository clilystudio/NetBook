.class final Landroid/support/v7/app/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/v;


# instance fields
.field private synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 1534
    iput-object p1, p0, Landroid/support/v7/app/A;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;B)V
    .locals 0

    .prologue
    .line 1534
    invoke-direct {p0, p1}, Landroid/support/v7/app/A;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1537
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->n()Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v2

    .line 1538
    if-eq v2, p1, :cond_2

    move v0, v1

    .line 1539
    :goto_0
    iget-object v3, p0, Landroid/support/v7/app/A;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v3

    .line 1540
    if-eqz v3, :cond_1

    .line 1541
    if-eqz v0, :cond_3

    .line 1542
    iget-object v0, p0, Landroid/support/v7/app/A;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->a:I

    invoke-static {v0, v4, v3, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1543
    iget-object v0, p0, Landroid/support/v7/app/A;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0, v3, v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1550
    :cond_1
    :goto_1
    return-void

    .line 1538
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1547
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/A;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-static {v0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->a(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public final a_(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 2

    .prologue
    .line 1554
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/A;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-boolean v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV7;->e:Z

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Landroid/support/v7/app/A;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    .line 2233
    iget-object v0, v0, Landroid/support/v7/app/n;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1556
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/A;->a:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1557
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1560
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
