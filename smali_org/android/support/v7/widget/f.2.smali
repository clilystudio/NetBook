.class final Landroid/support/v7/widget/f;
.super Landroid/support/v7/widget/P;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/e;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/e;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/P;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/L;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 602
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/g;->e()Landroid/support/v7/widget/L;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 621
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    .line 621
    const/4 v0, 0x1

    goto :goto_0
.end method
