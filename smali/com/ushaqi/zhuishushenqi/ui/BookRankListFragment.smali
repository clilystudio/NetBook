.class public Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field protected a:Lcom/ushaqi/zhuishushenqi/adapter/g;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ushaqi/zhuishushenqi/ui/aR;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->f:Ljava/util/List;

    .line 109
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "book_list_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 49
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aR;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/aR;

    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/aR;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aR;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a()V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    .prologue
    .line 103
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/g;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;

    .line 105
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->startActivity(Landroid/content/Intent;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected final b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 137
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "book_list_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->b(I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 56
    const v0, 0x7f0300aa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 58
    const v0, 0x7f0c00d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->c:Landroid/view/View;

    .line 59
    const v0, 0x7f0c00d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->e:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c00da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->d:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->d:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/aP;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/aP;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/g;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    .line 69
    const v0, 0x7f0c010f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 71
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/aQ;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/aQ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    const v2, 0x7f03011d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->b:Landroid/view/View;

    .line 80
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-object v1
.end method
