.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private final b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Lcom/ushaqi/zhuishushenqi/ui/game/an;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;-><init>()V

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "recommend"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "rank"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "micro"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->b:[Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->c:Ljava/util/List;

    .line 175
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 138
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f050066

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->b(I)V

    .line 53
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    .line 54
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/an;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/an;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/game/an;

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/game/an;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/game/an;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/an;->getCount()I

    move-result v5

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "tab"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 1120
    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 1122
    const v0, 0x7f0300bd

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1123
    const v0, 0x7f0c0285

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1130
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/game/an;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/an;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1123
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 1125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1118
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 66
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(II)V

    .line 159
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 150
    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 151
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 153
    const-string v0, "game_center_tab_click"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 1167
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->f:Lcom/ushaqi/zhuishushenqi/ui/game/an;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/an;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 144
    :cond_0
    return-void
.end method
