.class public Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/view/ViewPager;

.field private e:Lcom/ushaqi/zhuishushenqi/ui/aS;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->b:Ljava/util/List;

    .line 149
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "book_list_ids"

    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "book_list_title"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "rank_gender"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;
    .locals 1

    .prologue
    .line 28
    .line 2192
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    .line 2193
    if-nez v0, :cond_0

    .line 2194
    invoke-static {p1, p3}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    move-result-object v0

    .line 28
    :cond_0
    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    packed-switch p0, :pswitch_data_0

    .line 97
    const-string v0, "\u603b\u699c"

    .line 99
    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    const-string v0, "\u5468\u699c"

    goto :goto_0

    .line 94
    :pswitch_1
    const-string v0, "\u6708\u699c"

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 140
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 48
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_list_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->b(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_list_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->f:[Ljava/lang/String;

    .line 55
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    .line 56
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->c:Landroid/support/v4/view/ViewPager;

    .line 57
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aS;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aS;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/aS;

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/aS;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1072
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 1075
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1076
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tab"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 1078
    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 1080
    const v0, 0x7f0300bd

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1081
    const v0, 0x7f0c0285

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 1083
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1076
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
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
    .line 104
    invoke-virtual {p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a(II)V

    .line 105
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 111
    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 112
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 1118
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1119
    const-string v1, "book_list_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1121
    const-string v2, "rank_gender"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    const-string v2, "book_rank_tab_click"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2144
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/aS;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/aS;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2145
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookRankMainActivity;->c:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 133
    :cond_0
    return-void
.end method
