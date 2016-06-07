.class final Lcom/cocosw/bottomsheet/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/cocosw/bottomsheet/a;


# direct methods
.method constructor <init>(Lcom/cocosw/bottomsheet/a;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 325
    iget-object v0, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->c(Lcom/cocosw/bottomsheet/a;)Lcom/cocosw/bottomsheet/g;

    move-result-object v0

    invoke-static {v0}, Lcom/cocosw/bottomsheet/g;->d(Lcom/cocosw/bottomsheet/g;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->c(Lcom/cocosw/bottomsheet/a;)Lcom/cocosw/bottomsheet/g;

    move-result-object v0

    invoke-static {v0}, Lcom/cocosw/bottomsheet/g;->d(Lcom/cocosw/bottomsheet/g;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/a;

    iget-object v0, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/a;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/a;->d(Lcom/cocosw/bottomsheet/a;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocosw/bottomsheet/h;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/h;->c(Lcom/cocosw/bottomsheet/h;)I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/e;->a:Lcom/cocosw/bottomsheet/a;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/a;->dismiss()V

    .line 329
    return-void
.end method
