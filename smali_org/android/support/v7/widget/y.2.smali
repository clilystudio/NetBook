.class final Landroid/support/v7/widget/y;
.super Landroid/support/v7/widget/E;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/ay;

.field private synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private synthetic c:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Landroid/support/v7/widget/ay;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/y;->a:Landroid/support/v7/widget/ay;

    iput-object p3, p0, Landroid/support/v7/widget/y;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/E;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    const/high16 v0, 0x3f800000

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 235
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/y;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/widget/y;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/t;->f(Landroid/support/v7/widget/ay;)V

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->f(Landroid/support/v7/widget/t;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/y;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/y;->c:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->e(Landroid/support/v7/widget/t;)V

    .line 243
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method
