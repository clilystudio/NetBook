.class final Landroid/support/v7/internal/widget/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/ActionMenuItem;

.field private synthetic b:Landroid/support/v7/internal/widget/aa;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/aa;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 184
    iput-object p1, p0, Landroid/support/v7/internal/widget/ab;->b:Landroid/support/v7/internal/widget/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuItem;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ab;->b:Landroid/support/v7/internal/widget/aa;

    invoke-static {v1}, Landroid/support/v7/internal/widget/aa;->a(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Landroid/support/v7/internal/widget/ab;->b:Landroid/support/v7/internal/widget/aa;

    invoke-static {v4}, Landroid/support/v7/internal/widget/aa;->b(Landroid/support/v7/internal/widget/aa;)Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/view/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->b:Landroid/support/v7/internal/widget/aa;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aa;->c(Landroid/support/v7/internal/widget/aa;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->b:Landroid/support/v7/internal/widget/aa;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aa;->d(Landroid/support/v7/internal/widget/aa;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/support/v7/internal/widget/ab;->b:Landroid/support/v7/internal/widget/aa;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aa;->c(Landroid/support/v7/internal/widget/aa;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ab;->a:Landroid/support/v7/internal/view/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 192
    :cond_0
    return-void
.end method
