.class final Landroid/support/design/widget/V;
.super Landroid/support/design/widget/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/ad",
        "<",
        "Landroid/support/design/widget/Snackbar$SnackbarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Landroid/support/design/widget/V;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Landroid/support/design/widget/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 649
    check-cast p2, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 1655
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1667
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/ad;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 649
    return v0

    .line 1658
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/X;->a()Landroid/support/design/widget/X;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/V;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/X;->d(Landroid/support/design/widget/K;)V

    goto :goto_0

    .line 1662
    :pswitch_2
    invoke-static {}, Landroid/support/design/widget/X;->a()Landroid/support/design/widget/X;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/V;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/X;->e(Landroid/support/design/widget/K;)V

    goto :goto_0

    .line 1656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
