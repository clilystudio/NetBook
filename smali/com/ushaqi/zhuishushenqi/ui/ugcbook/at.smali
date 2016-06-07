.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;B)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 6

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    .line 193
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sort"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a()Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 187
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    .line 1202
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1207
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1209
    if-eqz p1, :cond_2

    .line 1211
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1215
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->getBookLists()[Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    move-result-object v0

    .line 1216
    array-length v1, v0

    .line 1217
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1218
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/adapter/X;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(Ljava/util/Collection;)V

    .line 1221
    const/16 v0, 0x14

    if-ge v1, v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1223
    if-nez v1, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u5355\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u4e0b\u62c9\u5237\u65b0\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
