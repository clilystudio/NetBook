.class final Landroid/support/design/widget/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Z

.field private synthetic c:Landroid/support/design/widget/ad;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ad;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Landroid/support/design/widget/ag;->c:Landroid/support/design/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p2, p0, Landroid/support/design/widget/ag;->a:Landroid/view/View;

    .line 337
    iput-boolean p3, p0, Landroid/support/design/widget/ag;->b:Z

    .line 338
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/design/widget/ag;->c:Landroid/support/design/widget/ad;

    invoke-static {v0}, Landroid/support/design/widget/ad;->b(Landroid/support/design/widget/ad;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/ag;->c:Landroid/support/design/widget/ad;

    invoke-static {v0}, Landroid/support/design/widget/ad;->b(Landroid/support/design/widget/ad;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Landroid/support/design/widget/ag;->a:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/ag;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ag;->c:Landroid/support/design/widget/ad;

    invoke-static {v0}, Landroid/support/design/widget/ad;->a(Landroid/support/design/widget/ad;)Landroid/support/design/widget/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/support/design/widget/ag;->c:Landroid/support/design/widget/ad;

    invoke-static {v0}, Landroid/support/design/widget/ad;->a(Landroid/support/design/widget/ad;)Landroid/support/design/widget/af;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/design/widget/af;->a()V

    goto :goto_0
.end method
