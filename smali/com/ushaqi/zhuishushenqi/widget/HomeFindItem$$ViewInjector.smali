.class public Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c00a4

    const-string v1, "field \'mIcon\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;

    .line 12
    const v0, 0x7f0c0048

    const-string v1, "field \'mTitle\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mTitle:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c0331

    const-string v1, "field \'mSubFlag\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mSubFlag:Landroid/widget/ImageView;

    .line 16
    const v0, 0x7f0c0333

    const-string v1, "field \'mSubText\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mSubText:Landroid/widget/TextView;

    .line 18
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;

    .line 22
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mTitle:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mSubFlag:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;->mSubText:Landroid/widget/TextView;

    .line 25
    return-void
.end method
