.class public abstract Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/api/b;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/bw;

.field private c:Lcom/ushaqi/zhuishushenqi/ui/bx;

.field private d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private n:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k:Ljava/util/List;

    .line 342
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bv;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/bv;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->n:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->l:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;Lcom/ushaqi/zhuishushenqi/ui/bw;)Lcom/ushaqi/zhuishushenqi/ui/bw;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/bw;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;Z)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->h:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u767b\u5f55\u540e\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(Ljava/util/List;)V

    .line 189
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->m:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/api/b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->n:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->l:I

    return v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V
    .locals 2

    .prologue
    .line 45
    .line 1336
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bw;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/bw;

    return-object v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bx;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/bx;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;
.end method

.method protected a(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method protected abstract b()Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;
.end method

.method protected final c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bx;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/bx;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/bx;

    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/bx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->m:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bx;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->m:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 102
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->f:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e:Landroid/widget/ListView;

    .line 104
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bs;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bs;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bu;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bu;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->b()Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Landroid/widget/ListView;)V

    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->m:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Z)V

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bx;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/bx;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/bx;

    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/bx;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->m:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bx;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 79
    const v0, 0x7f030125

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 82
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 83
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->g:Landroid/view/View;

    .line 84
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->h:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0c00de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->i:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->i:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/br;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/br;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-object v1
.end method

.method public onNewMsgClickEvent$154ad029(Lcom/arcsoft/hpay100/a/a;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->l:I

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 75
    :cond_0
    return-void
.end method
