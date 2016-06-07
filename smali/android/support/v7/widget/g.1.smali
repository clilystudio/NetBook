.class final Landroid/support/v7/widget/g;
.super Landroid/support/v7/internal/view/menu/s;
.source "SourceFile"


# instance fields
.field private synthetic c:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 673
    iput-object p1, p0, Landroid/support/v7/widget/g;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 674
    const/4 v4, 0x1

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 675
    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->a(I)V

    .line 676
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->e:Landroid/support/v7/widget/a;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/g;->a(Landroid/support/v7/internal/view/menu/v;)V

    .line 677
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 681
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/s;->onDismiss()V

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/g;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close()V

    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/g;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/g;)Landroid/support/v7/widget/g;

    .line 684
    return-void
.end method
