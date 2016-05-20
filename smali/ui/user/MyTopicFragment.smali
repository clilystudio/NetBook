.class public Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/user/F;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/user/G;

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

.field private j:Ljava/lang/String;

.field private k:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->i:Ljava/util/List;

    .line 269
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/E;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/E;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->k:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;Lcom/ushaqi/zhuishushenqi/ui/user/F;)Lcom/ushaqi/zhuishushenqi/ui/user/F;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/user/F;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;Lcom/ushaqi/zhuishushenqi/ui/user/G;)Lcom/ushaqi/zhuishushenqi/ui/user/G;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/user/G;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;I)V
    .locals 2

    .prologue
    .line 45
    .line 1263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    const-string v1, "\u5171\u53d1\u5e03\u4e86%d\u6761\u8bdd\u9898"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setCountText(Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/F;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a:Lcom/ushaqi/zhuishushenqi/ui/user/F;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/G;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/user/G;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->k:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/adapter/F;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/F;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 64
    const v0, 0x7f0300b5

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->f:Landroid/view/View;

    .line 66
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->g:Landroid/widget/TextView;

    .line 1072
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1073
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    .line 1074
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1076
    const v0, 0x7f03011d

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e:Landroid/view/View;

    .line 1077
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d:Landroid/widget/ListView;

    .line 1078
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1082
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/user/B;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/B;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)V

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d:Landroid/widget/ListView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/user/D;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/D;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1135
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/F;

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/F;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/F;

    .line 1136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h:Lcom/ushaqi/zhuishushenqi/adapter/F;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1138
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 1140
    if-nez v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->g:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u767b\u5f55\u540e\u67e5\u770b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    return-object v1

    .line 1145
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->j:Ljava/lang/String;

    .line 1146
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/G;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/G;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/user/G;

    .line 1147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->b:Lcom/ushaqi/zhuishushenqi/ui/user/G;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->j:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/G;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
