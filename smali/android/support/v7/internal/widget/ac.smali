.class final Landroid/support/v7/internal/widget/ac;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private a:Z

.field private synthetic b:Landroid/support/v7/internal/widget/aa;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/aa;)V
    .locals 1

    .prologue
    .line 604
    iput-object p1, p0, Landroid/support/v7/internal/widget/ac;->b:Landroid/support/v7/internal/widget/aa;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ac;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ac;->a:Z

    .line 616
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 608
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ac;->a:Z

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Landroid/support/v7/internal/widget/ac;->b:Landroid/support/v7/internal/widget/aa;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aa;->a(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 611
    :cond_0
    return-void
.end method
