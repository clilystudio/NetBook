.class public Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Lcom/ushaqi/zhuishushenqi/ui/user/aa;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->c:Ljava/util/List;

    .line 90
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "token_key"

    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    .line 136
    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    move-result-object v0

    .line 139
    :cond_0
    return-object v0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 171
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "token_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->g:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->b:[Ljava/lang/String;

    .line 53
    const-string v0, "\u8ffd\u4e66\u5238"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->b(Ljava/lang/String;)V

    .line 55
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    .line 56
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 58
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/aa;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/aa;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/user/aa;

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/user/aa;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1070
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1072
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1074
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1075
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/user/aa;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/aa;->getCount()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "tab"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 1077
    invoke-virtual {v5, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 1079
    const v0, 0x7f0300bd

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1080
    const v0, 0x7f0c0285

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1087
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/user/aa;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/aa;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1080
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 1082
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1075
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(II)V

    .line 145
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 151
    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 152
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 154
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 1175
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/user/aa;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/aa;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 164
    :cond_0
    return-void
.end method
