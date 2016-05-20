.class public Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;
.super Landroid/widget/TableLayout;
.source "SourceFile"


# instance fields
.field mContainer:Landroid/widget/TableLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02c9
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 79
    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030156

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->mContainer:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->mContainer:Landroid/widget/TableLayout;

    invoke-virtual {v3, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 39
    const v0, 0x7f0c02c8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getGames()Ljava/util/List;

    move-result-object v6

    move v3, v4

    .line 41
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 42
    add-int/lit8 v0, v3, 0x3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v6, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->mContainer:Landroid/widget/TableLayout;

    div-int/lit8 v1, v3, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v5, v4

    .line 1057
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    .line 1058
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;

    .line 1059
    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->setVisibility(I)V

    .line 1060
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 2049
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2050
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getCat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2051
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v8, v2}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 2052
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getDownloadStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a(I)V

    .line 2053
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mImage:Lcom/ushaqi/zhuishushenqi/widget/GameImageView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->setImageUrl(Ljava/lang/String;)V

    .line 2054
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mImage:Lcom/ushaqi/zhuishushenqi/widget/GameImageView;

    invoke-virtual {v8, v2}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->a(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 2056
    new-instance v8, Lcom/ushaqi/zhuishushenqi/widget/M;

    invoke-direct {v8, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/M;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    invoke-virtual {v1, v8}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 1062
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 1063
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 41
    :cond_1
    add-int/lit8 v0, v3, 0x3

    move v3, v0

    goto/16 :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->requestLayout()V

    .line 45
    return-void
.end method

.method public final b(Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 48
    const v0, 0x7f0c02c8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getGames()Ljava/util/List;

    move-result-object v6

    move v3, v4

    .line 50
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 51
    add-int/lit8 v0, v3, 0x3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v6, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->mContainer:Landroid/widget/TableLayout;

    div-int/lit8 v1, v3, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v5, v4

    .line 2068
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    .line 2069
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;

    .line 2070
    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->setVisibility(I)V

    .line 2071
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 3065
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3066
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mSubTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3067
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setH5View()V

    .line 3068
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mImage:Lcom/ushaqi/zhuishushenqi/widget/GameImageView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIconId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->setImageResource(I)V

    .line 3070
    new-instance v8, Lcom/ushaqi/zhuishushenqi/widget/N;

    invoke-direct {v8, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/N;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    invoke-virtual {v1, v8}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3076
    iget-object v8, v1, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    new-instance v9, Lcom/ushaqi/zhuishushenqi/widget/O;

    invoke-direct {v9, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/O;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    invoke-virtual {v8, v9}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2068
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 2073
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 2074
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2073
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_1
    add-int/lit8 v0, v3, 0x3

    move v3, v0

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->requestLayout()V

    .line 54
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/TableLayout;->onFinishInflate()V

    .line 35
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 36
    return-void
.end method
