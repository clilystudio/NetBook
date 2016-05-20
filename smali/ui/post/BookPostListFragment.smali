.class public Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field protected a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field protected b:Landroid/widget/ListView;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/support/design/widget/FloatingActionButton;

.field protected f:Ljava/lang/String;

.field protected g:I

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    .line 1055
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 60
    if-eqz v0, :cond_0

    .line 2055
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 61
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->j()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    const v0, 0x7f0300ab

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->h:Landroid/view/View;

    .line 41
    const v0, 0x7f0c00ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->d:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->c:Landroid/view/View;

    .line 43
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->b:Landroid/widget/ListView;

    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 47
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 50
    :cond_0
    const v0, 0x7f0c023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    .line 51
    return-object v1
.end method
