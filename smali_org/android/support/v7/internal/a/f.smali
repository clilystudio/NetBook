.class final Landroid/support/v7/internal/a/f;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/internal/a/e;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/e;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->a(Landroid/support/v7/internal/a/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->b(Landroid/support/v7/internal/a/e;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->b(Landroid/support/v7/internal/a/e;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->c(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->d(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->e(Landroid/support/v7/internal/a/e;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->d(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 145
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->c(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->c(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0, v3}, Landroid/support/v7/internal/a/e;->a(Landroid/support/v7/internal/a/e;Landroid/support/v7/internal/view/h;)Landroid/support/v7/internal/view/h;

    .line 148
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    .line 1320
    iget-object v1, v0, Landroid/support/v7/internal/a/e;->c:Landroid/support/v7/b/b;

    if-eqz v1, :cond_2

    .line 1321
    iget-object v1, v0, Landroid/support/v7/internal/a/e;->c:Landroid/support/v7/b/b;

    iget-object v2, v0, Landroid/support/v7/internal/a/e;->b:Landroid/support/v7/b/a;

    invoke-interface {v1, v2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;)V

    .line 1322
    iput-object v3, v0, Landroid/support/v7/internal/a/e;->b:Landroid/support/v7/b/a;

    .line 1323
    iput-object v3, v0, Landroid/support/v7/internal/a/e;->c:Landroid/support/v7/b/b;

    .line 149
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->f(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/e;

    invoke-static {v0}, Landroid/support/v7/internal/a/e;->f(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 152
    :cond_3
    return-void
.end method
