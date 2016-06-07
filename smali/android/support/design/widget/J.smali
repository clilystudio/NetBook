.class final Landroid/support/design/widget/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/h;


# instance fields
.field private synthetic a:Landroid/support/design/widget/NavigationView;


# direct methods
.method constructor <init>(Landroid/support/design/widget/NavigationView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/design/widget/J;->a:Landroid/support/design/widget/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/design/widget/J;->a:Landroid/support/design/widget/NavigationView;

    invoke-static {v0}, Landroid/support/design/widget/NavigationView;->a(Landroid/support/design/widget/NavigationView;)Landroid/support/design/widget/K;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/J;->a:Landroid/support/design/widget/NavigationView;

    invoke-static {v0}, Landroid/support/design/widget/NavigationView;->a(Landroid/support/design/widget/NavigationView;)Landroid/support/design/widget/K;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/design/widget/K;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
