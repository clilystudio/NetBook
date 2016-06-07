.class public Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c00a4

    const-string v1, "field \'mIcon\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mIcon:Landroid/widget/ImageView;

    .line 12
    const v0, 0x7f0c028b

    const-string v1, "field \'mLabel\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mLabel:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c03bf

    const-string v1, "field \'mBalance\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mBalance:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0c014f

    const-string v1, "field \'mArrow\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mArrow:Landroid/widget/ImageView;

    .line 18
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mIcon:Landroid/widget/ImageView;

    .line 22
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mLabel:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mBalance:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mArrow:Landroid/widget/ImageView;

    .line 25
    return-void
.end method
