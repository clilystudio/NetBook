.class final Lcom/ushaqi/zhuishushenqi/ui/av;
.super Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 125
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    .line 126
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 123
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "new"

    aput-object v2, v1, v0

    const-string v2, "hot"

    aput-object v2, v1, v3

    const-string v2, "reputation"

    aput-object v2, v1, v4

    const-string v2, "over"

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->a:[Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 129
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 130
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->a:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->a:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 133
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    move v1, v0

    .line 135
    :goto_0
    if-ge v1, v6, :cond_1

    .line 136
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 137
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 135
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 143
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 145
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x4

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/av;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method
