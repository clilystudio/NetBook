.class public abstract Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field protected b:Landroid/widget/ListView;

.field protected c:Lcom/ushaqi/zhuishushenqi/adapter/X;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:Landroid/os/Handler;

.field protected g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

.field protected h:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->f:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->i:Ljava/util/List;

    .line 52
    const-string v0, "\u5171%d\u4e2a\u4e66\u5355"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->l:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->m:Lcom/handmark/pulltorefresh/library/j;

    .line 239
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->m:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    .line 1228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->l:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    if-nez p1, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lcom/ushaqi/zhuishushenqi/model/Account;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    return-void
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/util/W;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    return-object v0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a()V

    .line 85
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 57
    const v0, 0x7f0300a7

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1074
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 1075
    const v0, 0x7f030122

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1076
    const v0, 0x7f0c0029

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->k:Landroid/widget/TextView;

    .line 1077
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1078
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v5, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 65
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->d:Landroid/view/View;

    .line 66
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->j:Landroid/widget/TextView;

    .line 1112
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03011d

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->e:Landroid/view/View;

    .line 1113
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1117
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)V

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1141
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/X;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/X;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    .line 1142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->c:Lcom/ushaqi/zhuishushenqi/adapter/X;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 148
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 150
    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v2, "book_id"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    :cond_0
    return-void
.end method
