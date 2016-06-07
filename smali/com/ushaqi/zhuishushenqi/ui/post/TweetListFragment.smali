.class public Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/post/dO;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/post/dN;

.field private c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/ushaqi/zhuishushenqi/adapter/j;

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

.field private j:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->i:Ljava/util/List;

    .line 226
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dM;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dM;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->j:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;Lcom/ushaqi/zhuishushenqi/ui/post/dN;)Lcom/ushaqi/zhuishushenqi/ui/post/dN;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dO;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/dO;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dO;

    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dO;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "50bff3ec209793513100001c"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "updated"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dO;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dN;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->a()V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 40
    .line 1248
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1249
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 40
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/adapter/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/j;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->j:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V
    .locals 2

    .prologue
    .line 40
    .line 2243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2244
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->g:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dO;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dO;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->a()V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    const v0, 0x7f0300ab

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 64
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->f:Landroid/view/View;

    .line 65
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->g:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->d:Landroid/widget/ListView;

    .line 70
    const v0, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->e:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 73
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dJ;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dL;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dL;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/j;

    invoke-direct {v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/j;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/j;

    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/j;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    return-object v1
.end method
