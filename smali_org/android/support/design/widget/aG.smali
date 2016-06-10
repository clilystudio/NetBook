.class final Landroid/support/design/widget/aG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Landroid/support/design/widget/aC;


# direct methods
.method constructor <init>(Landroid/support/design/widget/aF;Landroid/support/design/widget/aC;)V
    .locals 0

    .prologue
    .line 49
    iput-object p2, p0, Landroid/support/design/widget/aG;->a:Landroid/support/design/widget/aC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/widget/aG;->a:Landroid/support/design/widget/aC;

    invoke-interface {v0}, Landroid/support/design/widget/aC;->a()V

    .line 53
    return-void
.end method
