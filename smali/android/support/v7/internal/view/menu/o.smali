.class final Landroid/support/v7/internal/view/menu/o;
.super Landroid/support/v7/internal/view/menu/e;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/view/menu/e",
        "<",
        "Landroid/view/MenuItem$OnActionExpandListener;",
        ">;",
        "Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/support/v7/internal/view/menu/l;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/l;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/l;

    .line 329
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/e;-><init>(Ljava/lang/Object;)V

    .line 330
    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/l;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/o;->a:Landroid/support/v7/internal/view/menu/l;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
