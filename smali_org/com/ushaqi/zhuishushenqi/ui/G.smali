.class final Lcom/ushaqi/zhuishushenqi/ui/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/G;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

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
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/G;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 51
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/G;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)Lcom/ushaqi/zhuishushenqi/adapter/E;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/adapter/E;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/G;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)Lcom/ushaqi/zhuishushenqi/adapter/E;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/E;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/G;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/G;->a:Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method
