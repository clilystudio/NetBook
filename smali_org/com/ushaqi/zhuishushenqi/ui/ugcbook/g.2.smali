.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;->a:Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 75
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/h;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/h;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/FavUGCListFragment;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/g;->a:Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->get_id()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/h;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    :cond_0
    return-void
.end method
