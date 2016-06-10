.class final Lcom/ushaqi/zhuishushenqi/ui/user/aa;
.super Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 92
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aa;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;

    .line 93
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 95
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(I)Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 96
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(I)Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 97
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(I)Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    move v1, v0

    .line 101
    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    .line 102
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 103
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p1, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->b:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 109
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aa;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aa;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x3

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aa;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
