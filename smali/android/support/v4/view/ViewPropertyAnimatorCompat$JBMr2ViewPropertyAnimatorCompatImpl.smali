.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;
.super Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolator(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 610
    invoke-static {p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompatJellybeanMr2;->getInterpolator(Landroid/view/View;)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method
