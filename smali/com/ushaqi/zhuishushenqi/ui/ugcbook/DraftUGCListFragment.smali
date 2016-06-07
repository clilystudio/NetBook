.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/model/Account;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->h(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "\u8349\u7a3f\u7bb1\u91cc\u6ca1\u6709\u4e66\u5355"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->onDestroy()V

    .line 51
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x1

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 58
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 60
    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v2, "book_id"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v0, "my_list"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const-string v0, "is_draft"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->startActivity(Landroid/content/Intent;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onUpdateUgcList(Lcom/ushaqi/zhuishushenqi/event/J;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 76
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/J;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/J;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->setCover(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/J;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->setTitle(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/J;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->setDesc(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/J;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->setBookCount(I)V

    .line 81
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->setUpdated(Ljava/util/Date;)V

    goto :goto_1

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->i:Ljava/util/List;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/f;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/f;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/DraftUGCListFragment;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method
