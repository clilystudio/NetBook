.class public abstract Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field protected b:I

.field protected c:[Ljava/lang/String;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Lcom/ushaqi/zhuishushenqi/ui/ch;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 27
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;-><init>()V

    .line 30
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b:I

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fragmentTag0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fragmentTag1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->c:[Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->g:Ljava/util/List;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 89
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b:I

    if-lt p1, v0, :cond_1

    .line 90
    :cond_0
    const/4 p1, 0x0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 93
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 149
    return-object v0
.end method

.method public final e(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->c:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->i()[Landroid/support/v4/app/Fragment;

    move-result-object v0

    aget-object v0, v0, p1

    .line 108
    :cond_0
    return-object v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 96
    const-string v0, "tab0"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract h()[Ljava/lang/String;
.end method

.method public abstract i()[Landroid/support/v4/app/Fragment;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b()V

    .line 43
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    .line 44
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;

    .line 45
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b:I

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->setItemCount(Landroid/content/Context;I)V

    .line 46
    const v1, 0x7f0c00e9

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 48
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ch;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ch;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/ch;

    .line 49
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->e:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b:I

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 50
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/ch;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 51
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 53
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 54
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1068
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1070
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1072
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1073
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/ch;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/ch;->getCount()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_1

    .line 1074
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tab"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 1075
    invoke-virtual {v5, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 1077
    const v1, 0x7f0300bd

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1078
    const v1, 0x7f0c0285

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->h()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 1080
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1073
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1082
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->f()V

    .line 58
    if-eqz p1, :cond_2

    .line 59
    const-string v1, "extra_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->setIndex(I)V

    .line 61
    :cond_2
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 113
    invoke-virtual {p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a(II)V

    .line 114
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 120
    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 121
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 123
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    const-string v0, "extra_index"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 139
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/ch;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/ch;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 142
    :cond_0
    return-void
.end method
