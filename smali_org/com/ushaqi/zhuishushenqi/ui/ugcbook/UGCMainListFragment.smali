.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Lcom/ushaqi/zhuishushenqi/adapter/X;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

.field private h:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i:Ljava/util/List;

    .line 323
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->k:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v2, "sort"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "duration"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->k:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/adapter/X;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/X;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/X;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/X;->a(Ljava/util/Collection;)V

    .line 110
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->j:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0501c1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, ""

    .line 127
    :goto_0
    return-object v0

    .line 123
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->j:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 74
    const v0, 0x7f0300b4

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b:Landroid/widget/ListView;

    .line 78
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->e:Landroid/view/View;

    .line 82
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->f:Landroid/widget/TextView;

    .line 1140
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1141
    const v2, 0x7f03011d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->c:Landroid/view/View;

    .line 1142
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1145
    :cond_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1146
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)V

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1167
    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/X;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/X;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/X;

    .line 1168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/X;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
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
    .line 173
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 174
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const-string v2, "book_id"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->startActivity(Landroid/content/Intent;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->j:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a()V

    .line 104
    :cond_0
    return-void
.end method
