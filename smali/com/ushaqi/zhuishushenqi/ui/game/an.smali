.class final Lcom/ushaqi/zhuishushenqi/ui/game/an;
.super Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 179
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;

    .line 180
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 177
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "tabTag0"

    aput-object v2, v0, v1

    const-string v2, "tabTag1"

    aput-object v2, v0, v4

    const-string v2, "tabTag2"

    aput-object v2, v0, v5

    const-string v2, "tabTag3"

    aput-object v2, v0, v6

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->a:[Ljava/lang/String;

    .line 182
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 1069
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    .line 1070
    if-nez v0, :cond_0

    .line 1071
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;-><init>()V

    .line 182
    :cond_0
    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 183
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 1077
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    .line 1078
    if-nez v0, :cond_1

    .line 1079
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;-><init>()V

    .line 183
    :cond_1
    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 184
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->a:[Ljava/lang/String;

    aget-object v0, v0, v5

    .line 1086
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    .line 1087
    if-nez v0, :cond_2

    .line 1088
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameCatListFragment;-><init>()V

    .line 184
    :cond_2
    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 186
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->a:[Ljava/lang/String;

    aget-object v0, v0, v6

    .line 1102
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    .line 1103
    if-nez v0, :cond_3

    .line 1104
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;-><init>()V

    .line 186
    :cond_3
    invoke-interface {v2, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 188
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 189
    :goto_0
    if-ge v1, v7, :cond_5

    .line 190
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 191
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 192
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 189
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_5
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 196
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 197
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 199
    :cond_6
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x4

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/an;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 209
    aget-object v0, v0, p1

    return-object v0
.end method
