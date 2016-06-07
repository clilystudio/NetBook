.class final Landroid/support/v7/internal/view/menu/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/k;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->a:Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->a(Landroid/support/v7/internal/view/menu/MenuItemImpl;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->h()V

    .line 667
    return-void
.end method
