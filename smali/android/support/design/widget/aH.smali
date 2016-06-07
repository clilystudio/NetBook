.class final Landroid/support/design/widget/aH;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/design/widget/aB;


# direct methods
.method constructor <init>(Landroid/support/design/widget/aF;Landroid/support/design/widget/aB;)V
    .locals 0

    .prologue
    .line 59
    iput-object p2, p0, Landroid/support/design/widget/aH;->a:Landroid/support/design/widget/aB;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/design/widget/aH;->a:Landroid/support/design/widget/aB;

    invoke-interface {v0}, Landroid/support/design/widget/aB;->b()V

    .line 73
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/aH;->a:Landroid/support/design/widget/aB;

    invoke-interface {v0}, Landroid/support/design/widget/aB;->a()V

    .line 68
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
