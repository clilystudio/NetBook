.class final Landroid/support/design/widget/G;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/design/widget/F;


# direct methods
.method constructor <init>(Landroid/support/design/widget/F;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Landroid/support/design/widget/G;->a:Landroid/support/design/widget/F;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/widget/G;->a:Landroid/support/design/widget/F;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/F;->a(Landroid/support/design/widget/F;Z)Z

    .line 53
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/design/widget/G;->a:Landroid/support/design/widget/F;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/F;->a(Landroid/support/design/widget/F;Z)Z

    .line 58
    iget-object v0, p0, Landroid/support/design/widget/G;->a:Landroid/support/design/widget/F;

    iget-object v0, v0, Landroid/support/design/widget/F;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/design/widget/G;->a:Landroid/support/design/widget/F;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/design/widget/F;->a(Landroid/support/design/widget/F;Z)Z

    .line 48
    return-void
.end method
