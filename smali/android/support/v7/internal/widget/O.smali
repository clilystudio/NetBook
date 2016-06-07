.class final Landroid/support/v7/internal/widget/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/U;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/U;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/U;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/U;->c()V

    .line 707
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/O;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 711
    :cond_1
    return-void
.end method
