.class final Lcom/ushaqi/zhuishushenqi/ui/ch;
.super Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 154
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;

    .line 155
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/ZssqFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    move v0, v1

    .line 157
    :goto_0
    iget v2, p1, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b:I

    if-ge v0, v2, :cond_0

    .line 158
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 163
    :goto_1
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b:I

    if-ge v1, v0, :cond_2

    .line 164
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 165
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    iget-object v4, p1, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 163
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 170
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 171
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 173
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method protected final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->b:I

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SimpleTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 183
    aget-object v0, v0, p1

    return-object v0
.end method
