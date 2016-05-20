.class public Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c028b

    const-string v1, "field \'mLabel\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mLabel:Landroid/widget/TextView;

    .line 12
    const v0, 0x7f0c014f

    const-string v1, "field \'mArrow\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mArrow:Landroid/widget/ImageView;

    .line 14
    const v0, 0x7f0c02ca

    const-string v1, "field \'mItemContainer\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    .line 16
    const v0, 0x7f0c02e3

    const-string v1, "field \'mBottomDivdier\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mBottomDivdier:Landroid/view/View;

    .line 18
    const v0, 0x7f0c02e2

    const-string v1, "field \'mTopDivdier\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mTopDivdier:Landroid/view/View;

    .line 20
    const v0, 0x7f0c02e1

    const-string v1, "field \'mLabelContainer\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mLabelContainer:Landroid/widget/RelativeLayout;

    .line 22
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mLabel:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mArrow:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mBottomDivdier:Landroid/view/View;

    .line 29
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mTopDivdier:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mLabelContainer:Landroid/widget/RelativeLayout;

    .line 31
    return-void
.end method
