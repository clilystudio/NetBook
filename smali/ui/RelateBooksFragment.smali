.class public Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cQ;


# instance fields
.field private a:Z

.field mBookContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0257
    .end annotation
.end field

.field mMore:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0238
    .end annotation
.end field

.field mRelateBookRoot:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0256
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->a:Z

    .line 167
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v2, "book_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->a:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;[Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    return-void

    .line 94
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->getBooks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->getBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mRelateBookRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->a:Z

    if-eqz v0, :cond_6

    .line 98
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->getBooks()Ljava/util/List;

    move-result-object v5

    .line 1127
    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x14

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1128
    array-length v6, p2

    move v2, v4

    :goto_0
    if-ge v2, v6, :cond_4

    aget-object v7, p2, v2

    .line 1129
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 1130
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1131
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1128
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 99
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {p1, v1}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->setBooks(Ljava/util/List;)V

    .line 2072
    :goto_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2106
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2107
    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2108
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2072
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060101

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v5, 0x40000000

    mul-float/2addr v2, v5

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 2073
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/E;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-direct {v2, v5, v0, v6}, Lcom/ushaqi/zhuishushenqi/util/E;-><init>(Landroid/content/Context;FF)V

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/E;->a()Lcom/ushaqi/zhuishushenqi/util/F;

    move-result-object v2

    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/F;->b()I

    move-result v5

    if-le v0, v5, :cond_7

    move v0, v3

    .line 111
    :goto_3
    if-eqz v0, :cond_5

    .line 3077
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mMore:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3078
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mMore:Landroid/widget/TextView;

    new-instance v5, Lcom/ushaqi/zhuishushenqi/ui/bA;

    invoke-direct {v5, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bA;-><init>(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/F;->b()I

    move-result v0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 117
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 118
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/F;->a()F

    move-result v0

    float-to-int v7, v0

    move v5, v4

    .line 119
    :goto_4
    if-ge v5, v6, :cond_0

    .line 120
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 121
    add-int/lit8 v2, v6, -0x1

    if-eq v5, v2, :cond_8

    move v2, v3

    .line 3139
    :goto_5
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030153

    iget-object v10, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mBookContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 3140
    if-eqz v2, :cond_9

    .line 3141
    invoke-virtual {v8, v4, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3145
    :goto_6
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment$ViewHolder;

    invoke-direct {v2, p0, v8}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment$ViewHolder;-><init>(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;Landroid/view/View;)V

    .line 3146
    iget-object v9, v2, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3147
    iget-object v9, v2, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment$ViewHolder;->mBook:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getFullCoverLarge()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f020106

    invoke-virtual {v9, v10, v11}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 3148
    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment$ViewHolder;->mContainer:Landroid/view/View;

    new-instance v9, Lcom/ushaqi/zhuishushenqi/ui/bB;

    invoke-direct {v9, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/bB;-><init>(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;Lcom/ushaqi/zhuishushenqi/model/BookSummary;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mBookContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 105
    :cond_6
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;->getBooks()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_7
    move v0, v4

    .line 110
    goto :goto_3

    :cond_8
    move v2, v4

    .line 121
    goto :goto_5

    .line 3143
    :cond_9
    invoke-virtual {v8, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f0300b1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 67
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cM;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cM;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/reader/cQ;)V

    .line 68
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "book_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cM;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->a:Z

    .line 69
    return-void
.end method
