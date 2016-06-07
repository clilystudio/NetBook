.class final Lcom/ushaqi/zhuishushenqi/ui/aS;
.super Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 153
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aS;->b:Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;

    .line 154
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 151
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "weekly"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "monthly"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "all"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aS;->a:[Ljava/lang/String;

    move v1, v0

    .line 156
    :goto_0
    if-ge v1, v6, :cond_0

    .line 157
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/aS;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/aS;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {p1, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    move v1, v0

    .line 162
    :goto_1
    if-ge v1, v6, :cond_2

    .line 163
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 164
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 165
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/aS;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 162
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 170
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 173
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aS;->b:Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aS;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x3

    return v0
.end method
