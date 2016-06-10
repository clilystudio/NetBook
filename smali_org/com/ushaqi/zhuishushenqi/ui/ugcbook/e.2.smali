.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;B)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 3

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/model/Account;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a()Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 164
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    .line 2181
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2183
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2185
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 2187
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 2189
    if-eqz p1, :cond_4

    .line 2191
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2195
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->getBookLists()[Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    move-result-object v0

    .line 2196
    array-length v1, v0

    .line 2197
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 2200
    if-eqz v0, :cond_0

    .line 2201
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2204
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->i:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(Ljava/util/Collection;)V

    .line 2205
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;I)V

    .line 2207
    const/16 v0, 0xa

    if-ge v1, v0, :cond_2

    .line 2208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 2209
    if-nez v1, :cond_2

    .line 2210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2217
    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u4e0b\u62c9\u5237\u65b0\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 2222
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u4e0b\u62c9\u5237\u65b0\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
