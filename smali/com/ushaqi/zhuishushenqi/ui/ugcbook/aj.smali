.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;
.super Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 202
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    .line 203
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 200
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "ugcTag0"

    aput-object v2, v1, v0

    const-string v2, "ugcTag1"

    aput-object v2, v1, v5

    const-string v2, "ugcTag2"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->a:[Ljava/lang/String;

    .line 205
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "collectorCount"

    const-string v4, "last-seven-days"

    invoke-virtual {p1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 206
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->a:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, "created"

    const-string v4, "all"

    invoke-virtual {p1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 207
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->a:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string v3, "collectorCount"

    const-string v4, "all"

    invoke-virtual {p1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 209
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    move v1, v0

    .line 211
    :goto_0
    if-ge v1, v7, :cond_1

    .line 212
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 213
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 211
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 219
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 221
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x3

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 231
    aget-object v0, v0, p1

    return-object v0
.end method
