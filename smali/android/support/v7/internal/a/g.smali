.class final Landroid/support/v7/internal/a/g;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/internal/a/e;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/e;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/e;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/a/e;->a(Landroid/support/v7/internal/a/e;Landroid/support/v7/internal/view/h;)Landroid/support/v7/internal/view/h;

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/a/g;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->c(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    .line 160
    return-void
.end method
