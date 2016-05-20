.class public Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;
.super Landroid/widget/TableLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field mContainer:Landroid/widget/TableLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02c9
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->a:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030157

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->mContainer:Landroid/widget/TableLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->mContainer:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public final a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 73
    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030158

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->mContainer:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->mContainer:Landroid/widget/TableLayout;

    invoke-virtual {v3, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 45
    const v0, 0x7f0c02c8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getGames()Ljava/util/List;

    move-result-object v6

    .line 47
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v5, v4

    .line 48
    :goto_0
    if-ge v5, v7, :cond_4

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->mContainer:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    div-int/lit8 v1, v5, 0x3

    if-le v0, v1, :cond_4

    .line 52
    add-int/lit8 v0, v5, 0x3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v6, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->mContainer:Landroid/widget/TableLayout;

    div-int/lit8 v1, v5, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1058
    if-eqz v8, :cond_0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    add-int/lit8 v0, v5, 0x3

    move v5, v0

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1061
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 1062
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;

    .line 1063
    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->setVisibility(I)V

    .line 1064
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->a:Z

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->setHasPlayed(Z)V

    .line 1065
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 2053
    iget-object v9, v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2054
    iget-object v9, v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->mSubTitle:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2055
    iget-boolean v9, v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->a:Z

    if-eqz v9, :cond_2

    .line 2056
    iget-object v9, v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setPlayedView()V

    .line 2060
    :goto_2
    iget-object v9, v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->mImage:Lcom/ushaqi/zhuishushenqi/widget/GameImageView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->setImageUrl(Ljava/lang/String;)V

    .line 2061
    iget-object v9, v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->mImage:Lcom/ushaqi/zhuishushenqi/widget/GameImageView;

    invoke-virtual {v9, v2}, Lcom/ushaqi/zhuishushenqi/widget/GameImageView;->a(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 2063
    new-instance v9, Lcom/ushaqi/zhuishushenqi/widget/P;

    invoke-direct {v9, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/P;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    invoke-virtual {v1, v9}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2069
    iget-object v9, v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    new-instance v10, Lcom/ushaqi/zhuishushenqi/widget/Q;

    invoke-direct {v10, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/Q;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    invoke-virtual {v9, v10}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 2058
    :cond_2
    iget-object v9, v1, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v9}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setH5View()V

    goto :goto_2

    .line 1067
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 1068
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->requestLayout()V

    .line 55
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/TableLayout;->onFinishInflate()V

    .line 41
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public setHasPlayed(Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->a:Z

    .line 29
    return-void
.end method
