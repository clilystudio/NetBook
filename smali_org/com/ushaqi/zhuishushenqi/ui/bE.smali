.class final Lcom/ushaqi/zhuishushenqi/ui/bE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bE;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

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
    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bE;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 176
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bE;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/adapter/E;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/adapter/E;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bE;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/adapter/E;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/E;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getPromLink()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bE;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bE;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/j;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bE;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getPromLink()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/widget/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/j;->a()V

    goto :goto_0
.end method
