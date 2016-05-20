.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;
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
            "Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/view/ViewPager;

.field private e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;

.field private f:Landroid/widget/PopupWindow;

.field private g:Landroid/widget/PopupWindow;

.field private h:Landroid/widget/PopupWindow;

.field private i:Ljava/lang/String;

.field private j:Landroid/support/v7/widget/RecyclerView;

.field private k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->b:Ljava/util/List;

    .line 407
    return-void
.end method

.method private a(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 297
    if-nez p1, :cond_0

    .line 298
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, p2, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 299
    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 300
    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 301
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 304
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 305
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/af;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/af;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 316
    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V
    .locals 2

    .prologue
    .line 45
    .line 2393
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3347
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    .line 2394
    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2395
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 2397
    :cond_0
    const-string v0, "\u6536\u8d77"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    .line 5381
    const-string v0, "ugc_filter"

    invoke-static {p0, v0, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5382
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5383
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->i:Ljava/lang/String;

    .line 5384
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->d(Ljava/lang/String;)V

    .line 5385
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->b()V

    .line 5386
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a()V

    .line 5387
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a(Ljava/lang/String;)V

    .line 5389
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h()V

    .line 45
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    .line 4320
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4339
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4340
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 4342
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->L(Landroid/content/Context;)I

    move-result v1

    .line 4343
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f:Landroid/widget/PopupWindow;

    .line 4344
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f:Landroid/widget/PopupWindow;

    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5347
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    .line 4322
    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4323
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    const v2, 0x7f0701bc

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 4324
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 45
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->j:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g()V

    .line 336
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 353
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g()V

    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 404
    :cond_0
    const-string v0, "\u7b5b\u9009"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f()V

    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h()V

    return-void
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    .line 103
    if-nez v0, :cond_0

    .line 104
    invoke-static {p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    move-result-object v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a(Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 139
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v4, 0x7f0c01fd

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->setContentView(I)V

    .line 1258
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030172

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1259
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    invoke-direct {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    .line 1260
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->g:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ab;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ab;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1266
    const v1, 0x7f0c0482

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ac;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1277
    const v1, 0x7f0c0483

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ad;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ad;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1288
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ae;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ae;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1356
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016d

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1357
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    invoke-direct {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(Landroid/widget/PopupWindow;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    .line 1359
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1360
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ag;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ag;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1366
    const v1, 0x7f0501c1

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->i:Ljava/lang/String;

    .line 1367
    const v1, 0x7f0c047e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->j:Landroid/support/v7/widget/RecyclerView;

    .line 1368
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->j:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/D;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/D;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/ao;)V

    .line 1369
    new-array v0, v3, [Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;

    .line 1370
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    invoke-direct {v1, p0, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Landroid/content/Context;[Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot$FilterGroup;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    .line 1371
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->j:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/ah;)V

    .line 1372
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->h:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ah;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ah;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 60
    const v0, 0x7f0501c5

    const-string v1, "\u7b5b\u9009"

    const v2, 0x7f02016f

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aa;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aa;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;)V

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(ILjava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/ab;)V

    .line 72
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    .line 73
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c:Landroid/support/v4/view/ViewPager;

    .line 75
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;

    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2118
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 2119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->getCount()I

    move-result v5

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    .line 2120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "tab"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 2121
    invoke-virtual {v6, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 2123
    const v0, 0x7f0300bd

    invoke-virtual {v4, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2124
    const v0, 0x7f0c0285

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2131
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2125
    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 2126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2119
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;B)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ai;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
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
    invoke-virtual {p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(II)V

    .line 159
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 151
    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 152
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 154
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onPause()V

    .line 90
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->f()V

    .line 91
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2167
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aj;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2168
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->c:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 145
    :cond_0
    return-void
.end method
