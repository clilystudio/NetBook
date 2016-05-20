.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

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
    .line 174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 175
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Lcom/ushaqi/zhuishushenqi/adapter/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/adapter/W;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;)Lcom/ushaqi/zhuishushenqi/adapter/W;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/W;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    .line 177
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getBook()Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string v2, "book_id"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;->getBook()Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/m;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    :cond_0
    return-void
.end method
