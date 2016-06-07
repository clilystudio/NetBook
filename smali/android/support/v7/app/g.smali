.class final Landroid/support/v7/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/d;

.field private synthetic b:Landroid/support/v7/app/f;


# direct methods
.method constructor <init>(Landroid/support/v7/app/f;Landroid/support/v7/app/d;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Landroid/support/v7/app/g;->b:Landroid/support/v7/app/f;

    iput-object p2, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 807
    iget-object v0, p0, Landroid/support/v7/app/g;->b:Landroid/support/v7/app/f;

    iget-object v0, v0, Landroid/support/v7/app/f;->o:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/d;

    invoke-static {v1}, Landroid/support/v7/app/d;->g(Landroid/support/v7/app/d;)Landroid/support/v7/app/B;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 808
    iget-object v0, p0, Landroid/support/v7/app/g;->b:Landroid/support/v7/app/f;

    iget-boolean v0, v0, Landroid/support/v7/app/f;->p:Z

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->g(Landroid/support/v7/app/d;)Landroid/support/v7/app/B;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/B;->dismiss()V

    .line 811
    :cond_0
    return-void
.end method
