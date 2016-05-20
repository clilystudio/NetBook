.class public Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/PopupWindow;

.field private g:Lcom/ushaqi/zhuishushenqi/ui/aw;

.field private h:Z

.field private i:[Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/support/v4/view/ViewPager;

.field private l:Lcom/ushaqi/zhuishushenqi/ui/av;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->j:Ljava/util/List;

    .line 340
    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "CATEGORY_GENDER"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "CATEGORY_KEY"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)V
    .locals 2

    .prologue
    .line 41
    .line 3185
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3186
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->i()V

    :goto_0
    return-void

    .line 3286
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3347
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    .line 3287
    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3288
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 3559
    :cond_1
    const-string v0, "book_category_filter_click"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 3291
    const-string v0, "\u6536\u8d77"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    .line 4256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4257
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e:Ljava/lang/String;

    .line 4258
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->d(Ljava/lang/String;)V

    .line 4259
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/aw;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/aw;->notifyDataSetChanged()V

    .line 4260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a()V

    .line 4261
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b(Ljava/lang/String;)V

    .line 4263
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "\u7537\u751f - "

    .line 4264
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->p(Landroid/content/Context;Ljava/lang/String;)V

    .line 4270
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->i()V

    .line 41
    return-void

    .line 4263
    :cond_1
    const-string v0, "\u5973\u751f - "

    goto :goto_0

    .line 4267
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4551
    const-string v1, "book_category_minor_click"

    invoke-static {p0, v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->getMale()[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;

    move-result-object v0

    .line 199
    :goto_0
    array-length v3, v0

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 200
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;->getMajor()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;->getMins()[Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_2
    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;->getFemale()[Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot$CategoryLevel;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_2
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->k:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->i:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->i()V

    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 103
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 106
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/av;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/av;->getCount()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "tab"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 108
    invoke-virtual {v5, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 110
    const v0, 0x7f0300bd

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 111
    const v0, 0x7f0c0285

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2118
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/av;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/av;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 106
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 298
    :cond_0
    const-string v0, "\u7b5b\u9009"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e(Ljava/lang/String;)V

    .line 299
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    .line 170
    if-nez v0, :cond_0

    .line 171
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    move-result-object v0

    .line 173
    :cond_0
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "male"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "female"

    goto :goto_0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 327
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 330
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CATEGORY_GENDER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b:Z

    .line 69
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CATEGORY_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->e:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->i:[Ljava/lang/String;

    .line 1208
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1242
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v4, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 1243
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1244
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1246
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/au;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/au;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1209
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f:Landroid/widget/PopupWindow;

    .line 1211
    new-array v1, v2, [Ljava/lang/String;

    .line 1212
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->f:Ljava/lang/String;

    const-string v5, "category_level.txt"

    invoke-static {v0, v5}, Lcom/arcsoft/hpay100/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;

    .line 1213
    if-eqz v0, :cond_3

    .line 1214
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;)[Ljava/lang/String;

    move-result-object v0

    .line 1216
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 1217
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    aput-object v1, v5, v2

    move v1, v2

    .line 1218
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 1219
    add-int/lit8 v6, v1, 0x1

    aget-object v7, v0, v1

    aput-object v7, v5, v6

    .line 1218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1221
    :cond_0
    array-length v0, v5

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->h:Z

    .line 1223
    const v0, 0x7f0c01fd

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1224
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/as;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/as;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    const v0, 0x7f0c01fe

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1231
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aw;

    invoke-direct {v1, p0, p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/aw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/aw;

    .line 1232
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/aw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1233
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/at;

    invoke-direct {v1, p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/at;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->h:Z

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b(Ljava/lang/String;)V

    .line 86
    :goto_2
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    .line 87
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->k:Landroid/support/v4/view/ViewPager;

    .line 89
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/av;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/av;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/av;

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->k:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->k:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/av;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 95
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 97
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->h()V

    .line 98
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->c:Ljava/lang/String;

    const-string v1, "\u7b5b\u9009"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ar;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ar;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a(II)V

    .line 304
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 310
    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 311
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 313
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onPause()V

    .line 179
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->h:Z

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->i()V

    .line 182
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2334
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/av;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/av;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2335
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->k:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2336
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->i:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 2555
    const-string v1, "book_category_tab_click"

    invoke-static {p0, v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method
