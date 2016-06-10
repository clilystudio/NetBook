.class final Lcom/ushaqi/zhuishushenqi/ui/post/dV;
.super Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 209
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->b:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    .line 210
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 207
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "tabTag0"

    aput-object v2, v0, v1

    const-string v2, "tabTag1"

    aput-object v2, v0, v4

    const-string v2, "tabTag2"

    aput-object v2, v0, v5

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->a:[Ljava/lang/String;

    .line 212
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 1111
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    .line 1112
    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;-><init>()V

    .line 212
    :cond_0
    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 1119
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    .line 1120
    if-nez v0, :cond_1

    .line 1121
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;-><init>()V

    .line 213
    :cond_1
    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->a:[Ljava/lang/String;

    aget-object v0, v0, v5

    .line 1127
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    .line 1128
    if-nez v0, :cond_2

    .line 1129
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;-><init>()V

    .line 214
    :cond_2
    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 217
    :goto_0
    if-ge v1, v6, :cond_4

    .line 218
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 219
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 220
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 217
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 224
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 225
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 227
    :cond_5
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->b:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x3

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->b:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 237
    aget-object v0, v0, p1

    return-object v0
.end method
