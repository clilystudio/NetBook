.class public Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;
.source "SourceFile"


# instance fields
.field private h:Lcom/ushaqi/zhuishushenqi/ui/post/aI;

.field private i:Lcom/ushaqi/zhuishushenqi/ui/post/aH;

.field private j:Lcom/ushaqi/zhuishushenqi/adapter/h;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookReview;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->k:Ljava/util/List;

    .line 356
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/aF;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aF;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->l:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Lcom/ushaqi/zhuishushenqi/ui/post/aH;)Lcom/ushaqi/zhuishushenqi/ui/post/aH;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->i:Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    .line 2228
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

    .line 2229
    new-instance v1, Landroid/support/v7/app/k;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;)V

    .line 2230
    const-string v2, "\u6392\u5e8f"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    .line 2231
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->g:I

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/aE;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aE;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/app/k;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    .line 2243
    const-string v0, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    .line 2244
    invoke-virtual {v1}, Landroid/support/v7/app/k;->b()Landroid/support/v7/app/j;

    move-result-object v0

    .line 2245
    invoke-virtual {v0, v4}, Landroid/support/v7/app/j;->setCanceledOnTouchOutside(Z)V

    .line 2246
    invoke-virtual {v0}, Landroid/support/v7/app/j;->show()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Lcom/ushaqi/zhuishushenqi/model/Review;)V
    .locals 3

    .prologue
    .line 46
    .line 3215
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "saveToLocalReviewTitle"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "saveToLocalReviewDesc"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3218
    const-string v1, "bookReviewBookId"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3219
    const-string v1, "isFromBookReviewList"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3220
    const-string v1, "AddBookReviewRating"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Review;->getRating()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3221
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aH;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->i:Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Lcom/ushaqi/zhuishushenqi/model/Review;)V
    .locals 3

    .prologue
    .line 46
    .line 4159
    new-instance v0, Landroid/support/v7/app/k;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;)V

    .line 4160
    const-string v1, "\u518d\u6b21\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    .line 4161
    const-string v1, "\u5373\u5c06\u8f7d\u5165\u4e4b\u524d\u53d1\u5e03\u7684\u4e66\u8bc4"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    .line 4162
    const v1, 0x7f050138

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/aD;

    invoke-direct {v2, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/aD;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Lcom/ushaqi/zhuishushenqi/model/Review;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/k;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    .line 4168
    invoke-virtual {v0}, Landroid/support/v7/app/k;->c()Landroid/support/v7/app/j;

    .line 46
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->e()V

    return-void
.end method

.method public static d()Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;-><init>()V

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->k:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/aI;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/aI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/post/aI;

    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/post/aI;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/aI;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 5

    .prologue
    .line 46
    .line 3150
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 3151
    if-eqz v0, :cond_0

    .line 3152
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aG;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/aG;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Landroid/app/Activity;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/aG;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    .line 3154
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v1, "bookReviewBookId"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "isFromBookReviewList"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->f()V

    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V
    .locals 2

    .prologue
    .line 46
    .line 5136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 5138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f02017b

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 5139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aC;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aC;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->e:Landroid/support/design/widget/FloatingActionButton;

    const-string v1, "\u5199\u4e66\u8bc4"

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/adapter/h;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/h;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->l:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aI;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/post/aI;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 374
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->b()V

    .line 375
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->d:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u8bc4\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/az;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/az;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 89
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aB;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aB;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/h;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/h;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/h;

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->j:Lcom/ushaqi/zhuishushenqi/adapter/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1055
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 106
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->f:Ljava/lang/String;

    .line 2055
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->g:I

    .line 108
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->e()V

    .line 109
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;

    .line 62
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ay;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ay;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/ax;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostListFragment;->onDestroy()V

    .line 120
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public onRefreshEvent(Lcom/ushaqi/zhuishushenqi/event/f;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 128
    :cond_0
    return-void
.end method
