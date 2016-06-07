.class public Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/user/z;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/user/A;

.field private c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/ushaqi/zhuishushenqi/adapter/F;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/TopicPost;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->i:Ljava/util/List;

    .line 307
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/x;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/x;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->l:Lcom/handmark/pulltorefresh/library/j;

    .line 330
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->j:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;Lcom/ushaqi/zhuishushenqi/ui/user/A;)Lcom/ushaqi/zhuishushenqi/ui/user/A;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/user/A;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;Lcom/ushaqi/zhuishushenqi/ui/user/z;)Lcom/ushaqi/zhuishushenqi/ui/user/z;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/user/z;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;I)V
    .locals 2

    .prologue
    .line 53
    .line 1301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    const-string v1, "\u5171\u6536\u85cf\u4e86%d\u6761\u8bdd\u9898"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setCountText(Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/z;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/user/z;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/A;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/user/A;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->l:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->j:I

    return v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/adapter/F;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/F;

    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 383
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 385
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    .line 387
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/y;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f05006a

    invoke-direct {v1, p0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;Landroid/app/Activity;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->get_id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/y;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 390
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 370
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 371
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    .line 372
    const-string v1, "\u63d0\u793a"

    .line 373
    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 377
    const v0, 0x7f0500ff

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 379
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 73
    const v0, 0x7f0300b5

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->f:Landroid/view/View;

    .line 75
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->g:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 80
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03011d

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    .line 82
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/u;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/u;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 117
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/w;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/w;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/F;

    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/F;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/F;

    .line 144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/F;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 147
    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->g:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u767b\u5f55\u540e\u67e5\u770b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    return-object v1

    .line 152
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->k:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/A;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/user/A;

    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/user/A;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->k:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/A;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
