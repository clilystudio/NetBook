.class final Landroid/support/v7/widget/B;
.super Landroid/support/v7/widget/E;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/C;

.field private synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private synthetic c:Landroid/view/View;

.field private synthetic d:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Landroid/support/v7/widget/C;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Landroid/support/v7/widget/B;->d:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/B;->a:Landroid/support/v7/widget/C;

    iput-object p3, p0, Landroid/support/v7/widget/B;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Landroid/support/v7/widget/B;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/E;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/B;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/B;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/B;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/B;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/B;->d:Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/widget/B;->a:Landroid/support/v7/widget/C;

    iget-object v1, v1, Landroid/support/v7/widget/C;->b:Landroid/support/v7/widget/ay;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/t;->a(Landroid/support/v7/widget/ay;Z)V

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/B;->d:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->h(Landroid/support/v7/widget/t;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/B;->a:Landroid/support/v7/widget/C;

    iget-object v1, v1, Landroid/support/v7/widget/C;->b:Landroid/support/v7/widget/ay;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/B;->d:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->e(Landroid/support/v7/widget/t;)V

    .line 380
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method
