.class public Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Lcom/ushaqi/zhuishushenqi/ui/user/ag;

.field private d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/ushaqi/zhuishushenqi/ui/user/af;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord$Voucher;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->j:Ljava/util/List;

    .line 203
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/ae;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ae;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->k:Lcom/handmark/pulltorefresh/library/j;

    .line 216
    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v2, "token_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "tag_index_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;Lcom/ushaqi/zhuishushenqi/ui/user/af;)Lcom/ushaqi/zhuishushenqi/ui/user/af;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->i:Lcom/ushaqi/zhuishushenqi/ui/user/af;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->i:Lcom/ushaqi/zhuishushenqi/ui/user/af;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/ag;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/user/ag;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->k:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2091
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2092
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2093
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/user/ag;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ag;->a(Ljava/util/List;)V

    .line 2094
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/af;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/af;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->i:Lcom/ushaqi/zhuishushenqi/ui/user/af;

    .line 2095
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->i:Lcom/ushaqi/zhuishushenqi/ui/user/af;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 67
    const v0, 0x7f0300af

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a:[Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->b:[Ljava/lang/String;

    .line 72
    const v0, 0x7f0c00eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->e:Landroid/widget/ListView;

    .line 75
    const v0, 0x7f0c00dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->g:Landroid/view/View;

    .line 76
    const v0, 0x7f0c0244

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->h:Landroid/view/View;

    .line 77
    const v0, 0x7f0c0245

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->b:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "tag_index_key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1100
    const v2, 0x7f03011d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->f:Landroid/view/View;

    .line 1101
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1104
    :cond_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->e:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->f:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1105
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->f:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->e:Landroid/widget/ListView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/user/ab;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ab;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1115
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ac;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)V

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1133
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/ag;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ag;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/user/ag;

    .line 1134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c:Lcom/ushaqi/zhuishushenqi/ui/user/ag;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-object v1
.end method
