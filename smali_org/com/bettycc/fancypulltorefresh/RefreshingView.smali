.class public Lcom/bettycc/fancypulltorefresh/RefreshingView;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0, v2}, Lcom/bettycc/fancypulltorefresh/RefreshingView;->setIndeterminate(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/bettycc/fancypulltorefresh/RefreshingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 20
    sget v1, Lcom/bettycc/fancypulltorefresh/R$drawable;->fancy_spinner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bettycc/fancypulltorefresh/RefreshingView;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-virtual {p0, v2}, Lcom/bettycc/fancypulltorefresh/RefreshingView;->setIndeterminate(Z)V

    .line 22
    return-void
.end method
