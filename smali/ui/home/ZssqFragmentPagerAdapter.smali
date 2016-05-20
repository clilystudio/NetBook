.class public abstract Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/FragmentManager;

.field private b:Landroid/support/v4/app/FragmentTransaction;

.field private c:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    .line 20
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->c:Landroid/support/v4/app/Fragment;

    .line 23
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->a:Landroid/support/v4/app/FragmentManager;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(I)Landroid/support/v4/app/Fragment;
.end method

.method protected abstract b(I)Ljava/lang/String;
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 98
    :cond_0
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    .line 45
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->a:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->c:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_1

    .line 60
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 61
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 64
    :cond_1
    return-object v0

    .line 50
    :cond_2
    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 56
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->b:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 102
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->c:Landroid/support/v4/app/Fragment;

    if-eq p3, v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 83
    :cond_0
    if-eqz p3, :cond_1

    .line 84
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 85
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 87
    :cond_1
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;->c:Landroid/support/v4/app/Fragment;

    .line 89
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
