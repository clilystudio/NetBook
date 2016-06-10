.class final Landroid/support/design/widget/R;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Landroid/support/design/widget/R;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 405
    invoke-static {}, Landroid/support/design/widget/X;->a()Landroid/support/design/widget/X;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/R;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/X;->c(Landroid/support/design/widget/K;)V

    .line 406
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/design/widget/R;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v0}, Landroid/support/design/widget/Snackbar;->c(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(II)V

    .line 401
    return-void
.end method
