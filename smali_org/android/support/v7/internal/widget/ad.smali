.class final Landroid/support/v7/internal/widget/ad;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/aa;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/aa;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/internal/widget/aa;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->a:Landroid/support/v7/internal/widget/aa;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aa;->a(Landroid/support/v7/internal/widget/aa;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 624
    return-void
.end method
