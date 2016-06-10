.class final Landroid/support/design/widget/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/af;


# instance fields
.field private synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Landroid/support/design/widget/P;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/design/widget/P;->a:Landroid/support/design/widget/Snackbar;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    .line 352
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 360
    :pswitch_0
    invoke-static {}, Landroid/support/design/widget/X;->a()Landroid/support/design/widget/X;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/P;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/X;->d(Landroid/support/design/widget/K;)V

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-static {}, Landroid/support/design/widget/X;->a()Landroid/support/design/widget/X;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/P;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/K;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/X;->e(Landroid/support/design/widget/K;)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
