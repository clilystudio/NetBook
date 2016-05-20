.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;
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
    .line 239
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;B)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_0

    .line 249
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/adapter/X;->getCount()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/model/Account;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 254
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 256
    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a()Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/16 v1, 0x8

    .line 239
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    .line 2261
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 2263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2264
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2265
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 2268
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2270
    if-eqz p1, :cond_4

    .line 2272
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2273
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;->getBookLists()[Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    move-result-object v0

    .line 2274
    array-length v1, v0

    .line 2275
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2277
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2278
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->i:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(Ljava/util/Collection;)V

    .line 2280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;I)V

    .line 2281
    if-lez v1, :cond_1

    .line 2283
    if-lt v1, v3, :cond_2

    .line 2287
    if-ne v1, v3, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 2305
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/X;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 2295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2296
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2299
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 2304
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 2305
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u4e0a\u62c9\u53ef\u91cd\u65b0\u52a0\u8f7d"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2310
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 2311
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
