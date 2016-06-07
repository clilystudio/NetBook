.class final Lcom/ushaqi/zhuishushenqi/ui/home/i;
.super Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 602
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    .line 603
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 600
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "homeTag0"

    aput-object v2, v0, v1

    const-string v2, "homeTag1"

    aput-object v2, v0, v3

    const-string v2, "homeTag2"

    aput-object v2, v0, v4

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->a:[Ljava/lang/String;

    .line 604
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->a:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    .line 1575
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    .line 1576
    if-nez v0, :cond_0

    .line 1577
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    move-result-object v0

    .line 605
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->a:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 609
    :goto_0
    if-ge v1, v5, :cond_2

    .line 610
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 611
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 612
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 609
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 616
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 617
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 619
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x3

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/i;->b:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 629
    aget-object v0, v0, p1

    return-object v0
.end method
