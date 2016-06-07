.class final Landroid/support/v7/widget/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/L;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/L;)V
    .locals 0

    .prologue
    .line 1751
    iput-object p1, p0, Landroid/support/v7/widget/U;->a:Landroid/support/v7/widget/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/L;B)V
    .locals 0

    .prologue
    .line 1751
    invoke-direct {p0, p1}, Landroid/support/v7/widget/U;-><init>(Landroid/support/v7/widget/L;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1755
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1758
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/U;->a:Landroid/support/v7/widget/L;

    invoke-virtual {v0}, Landroid/support/v7/widget/L;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/U;->a:Landroid/support/v7/widget/L;

    invoke-static {v0}, Landroid/support/v7/widget/L;->b(Landroid/support/v7/widget/L;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Landroid/support/v7/widget/U;->a:Landroid/support/v7/widget/L;

    invoke-static {v0}, Landroid/support/v7/widget/L;->d(Landroid/support/v7/widget/L;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/U;->a:Landroid/support/v7/widget/L;

    invoke-static {v1}, Landroid/support/v7/widget/L;->c(Landroid/support/v7/widget/L;)Landroid/support/v7/widget/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1761
    iget-object v0, p0, Landroid/support/v7/widget/U;->a:Landroid/support/v7/widget/L;

    invoke-static {v0}, Landroid/support/v7/widget/L;->c(Landroid/support/v7/widget/L;)Landroid/support/v7/widget/W;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/W;->run()V

    .line 1763
    :cond_0
    return-void
.end method
