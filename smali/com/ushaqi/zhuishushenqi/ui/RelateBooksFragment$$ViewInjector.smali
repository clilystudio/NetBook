.class public Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0257

    const-string v1, "field \'mBookContainer\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mBookContainer:Landroid/widget/LinearLayout;

    .line 12
    const v0, 0x7f0c0256

    const-string v1, "field \'mRelateBookRoot\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mRelateBookRoot:Landroid/widget/LinearLayout;

    .line 14
    const v0, 0x7f0c0238

    const-string v1, "field \'mMore\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mMore:Landroid/widget/TextView;

    .line 16
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mBookContainer:Landroid/widget/LinearLayout;

    .line 20
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mRelateBookRoot:Landroid/widget/LinearLayout;

    .line 21
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->mMore:Landroid/widget/TextView;

    .line 22
    return-void
.end method
