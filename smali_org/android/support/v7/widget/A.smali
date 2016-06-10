.class final Landroid/support/v7/widget/A;
.super Landroid/support/v7/widget/E;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/C;

.field private synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private synthetic c:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Landroid/support/v7/widget/C;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/A;->a:Landroid/support/v7/widget/C;

    iput-object p3, p0, Landroid/support/v7/widget/A;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/E;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Landroid/support/v7/widget/A;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 353
    const/high16 v0, 0x3f800000

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 354
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 355
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/widget/A;->a:Landroid/support/v7/widget/C;

    iget-object v1, v1, Landroid/support/v7/widget/C;->a:Landroid/support/v7/widget/ay;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/t;->a(Landroid/support/v7/widget/ay;Z)V

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->h(Landroid/support/v7/widget/t;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/A;->a:Landroid/support/v7/widget/C;

    iget-object v1, v1, Landroid/support/v7/widget/C;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Landroid/support/v7/widget/A;->c:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->e(Landroid/support/v7/widget/t;)V

    .line 359
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method
