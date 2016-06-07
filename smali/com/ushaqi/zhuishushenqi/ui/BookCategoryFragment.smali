.class public Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Lcom/ushaqi/zhuishushenqi/adapter/c;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Lcom/ushaqi/zhuishushenqi/ui/aq;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/CategoryBook;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->i:Ljava/util/List;

    .line 227
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ap;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/ap;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->j:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;-><init>()V

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 74
    const-string v2, "bookcategory_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;Lcom/ushaqi/zhuishushenqi/ui/aq;)Lcom/ushaqi/zhuishushenqi/ui/aq;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/aq;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;Lcom/ushaqi/zhuishushenqi/model/CategoryBook;)V
    .locals 2

    .prologue
    .line 36
    .line 2080
    if-eqz p1, :cond_0

    .line 2081
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/ui/aq;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/aq;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/adapter/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/c;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->j:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/c;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(Ljava/util/Collection;)V

    .line 109
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aq;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/aq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/aq;

    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/aq;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aq;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->g:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a()V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    const v0, 0x7f0300a9

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->g:Ljava/lang/String;

    .line 59
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b:Landroid/widget/ListView;

    .line 61
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b:Landroid/widget/ListView;

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 63
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->e:Landroid/view/View;

    .line 64
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->f:Landroid/widget/TextView;

    .line 1114
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1115
    const v2, 0x7f03011d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->c:Landroid/view/View;

    .line 1116
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1119
    :cond_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1120
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b:Landroid/widget/ListView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/am;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/am;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1132
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/an;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/an;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)V

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1151
    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/c;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/c;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/c;

    .line 1152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->d:Lcom/ushaqi/zhuishushenqi/adapter/c;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-object v1
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->g()Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->g:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a()V

    .line 99
    :cond_0
    return-void
.end method
