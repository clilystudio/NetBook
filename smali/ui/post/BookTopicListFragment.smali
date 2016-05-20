.class public Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;
.source "SourceFile"


# instance fields
.field private h:Lcom/ushaqi/zhuishushenqi/ui/post/aR;

.field private i:Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

.field private j:Lcom/ushaqi/zhuishushenqi/adapter/j;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/TopicPost;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->k:Ljava/util/List;

    .line 276
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/aP;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aP;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->l:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;Lcom/ushaqi/zhuishushenqi/ui/post/aQ;)Lcom/ushaqi/zhuishushenqi/ui/post/aQ;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->i:Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    .line 2152
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u9ed8\u8ba4\u6392\u5e8f"

    aput-object v2, v0, v1

    const-string v1, "\u6700\u65b0\u53d1\u5e03"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "\u6700\u591a\u8bc4\u8bba"

    aput-object v2, v0, v1

    .line 2153
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2154
    const-string v2, "\u6392\u5e8f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2155
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->g:I

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/aO;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aO;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2167
    const-string v0, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2168
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2169
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2170
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 40
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aQ;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->i:Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->e()V

    return-void
.end method

.method public static d()Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;-><init>()V

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->k:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/aR;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/aR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/post/aR;

    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/post/aR;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/aR;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 128
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V
    .locals 1

    .prologue
    .line 40
    .line 4055
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 3131
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->k()V

    .line 40
    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V
    .locals 2

    .prologue
    .line 40
    .line 4135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 4137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f02017d

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 4138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aN;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aN;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    const-string v1, "\u53d1\u5e03\u8ba8\u8bba"

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/adapter/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/j;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->l:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aR;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/post/aR;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->b()V

    .line 295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->d:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aK;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aK;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aM;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aM;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/j;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/j;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/j;

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1055
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 100
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->f:Ljava/lang/String;

    .line 2055
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->g:I

    .line 102
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->e()V

    .line 103
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/aJ;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/ax;)V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->onDestroy()V

    .line 114
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onRefreshEvent(Lcom/ushaqi/zhuishushenqi/event/f;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 123
    :cond_0
    return-void
.end method
