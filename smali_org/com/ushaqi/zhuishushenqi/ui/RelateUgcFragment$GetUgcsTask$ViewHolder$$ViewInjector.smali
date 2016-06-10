.class public Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c02e4

    const-string v1, "field \'mCover\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mCover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 12
    const v0, 0x7f0c0048

    const-string v1, "field \'mTitle\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c0177

    const-string v1, "field \'mCount\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mCount:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0c01c5

    const-string v1, "field \'mAuthor\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mAuthor:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c0269

    const-string v1, "field \'mDesc\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mDesc:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0c0397

    const-string v1, "field \'mUpdated\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mUpdated:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0c02c9

    const-string v1, "field \'mContainer\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mContainer:Landroid/view/View;

    .line 24
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mCover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 28
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mCount:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mAuthor:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mDesc:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mUpdated:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mContainer:Landroid/view/View;

    .line 34
    return-void
.end method
