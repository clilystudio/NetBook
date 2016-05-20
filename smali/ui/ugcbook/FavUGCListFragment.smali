.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private k:Landroid/widget/ListView;

.field private l:Lcom/ushaqi/zhuishushenqi/util/W;

.field private m:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->m:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/ushaqi/zhuishushenqi/model/Account;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u5355\uff0c\u53bb\u6536\u85cf\u4e00\u4e2a\u5427"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->m:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->m:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->k:Landroid/widget/ListView;

    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->b()Lcom/ushaqi/zhuishushenqi/util/W;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->l:Lcom/ushaqi/zhuishushenqi/util/W;

    .line 44
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 60
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->l:Lcom/ushaqi/zhuishushenqi/util/W;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/util/W;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    :cond_0
    move v0, v1

    .line 80
    :goto_0
    return v0

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->l:Lcom/ushaqi/zhuishushenqi/util/W;

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/util/W;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 64
    if-nez v0, :cond_2

    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 68
    new-instance v4, Luk/me/lewisdeane/ldialogs/h;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1036
    iput-object v3, v4, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 68
    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "\u5220\u9664"

    aput-object v5, v3, v1

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;)V

    .line 69
    invoke-virtual {v4, v3, v1}, Luk/me/lewisdeane/ldialogs/h;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v2

    .line 80
    goto :goto_0
.end method
