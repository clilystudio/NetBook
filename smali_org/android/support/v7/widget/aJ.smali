.class final Landroid/support/v7/widget/aJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->e(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 942
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->f(Landroid/support/v7/widget/SearchView;)V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->g(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 944
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->h(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 945
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->i(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 946
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->j(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 947
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->k(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 948
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->l(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0

    .line 949
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 950
    iget-object v0, p0, Landroid/support/v7/widget/aJ;->a:Landroid/support/v7/widget/SearchView;

    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->n(Landroid/support/v7/widget/SearchView;)V

    goto :goto_0
.end method
