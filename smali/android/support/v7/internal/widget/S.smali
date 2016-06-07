.class final Landroid/support/v7/internal/widget/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/R;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/R;Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Landroid/support/v7/internal/widget/S;->a:Landroid/support/v7/internal/widget/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Landroid/support/v7/internal/widget/S;->a:Landroid/support/v7/internal/widget/R;

    iget-object v0, v0, Landroid/support/v7/internal/widget/R;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 994
    iget-object v0, p0, Landroid/support/v7/internal/widget/S;->a:Landroid/support/v7/internal/widget/R;

    iget-object v0, v0, Landroid/support/v7/internal/widget/R;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->l:Landroid/support/v7/internal/widget/y;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Landroid/support/v7/internal/widget/S;->a:Landroid/support/v7/internal/widget/R;

    iget-object v0, v0, Landroid/support/v7/internal/widget/R;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/S;->a:Landroid/support/v7/internal/widget/R;

    invoke-static {v1}, Landroid/support/v7/internal/widget/R;->a(Landroid/support/v7/internal/widget/R;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;IJ)Z

    .line 998
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/S;->a:Landroid/support/v7/internal/widget/R;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/R;->a()V

    .line 999
    return-void
.end method
