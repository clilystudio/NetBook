.class final Landroid/support/v7/internal/widget/N;
.super Landroid/support/v7/widget/P;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/R;

.field private synthetic b:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/R;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Landroid/support/v7/internal/widget/N;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    iput-object p3, p0, Landroid/support/v7/internal/widget/N;->a:Landroid/support/v7/internal/widget/R;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/P;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/L;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v7/internal/widget/N;->a:Landroid/support/v7/internal/widget/R;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/internal/widget/N;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/U;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/U;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/support/v7/internal/widget/N;->b:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/U;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/U;->c()V

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
