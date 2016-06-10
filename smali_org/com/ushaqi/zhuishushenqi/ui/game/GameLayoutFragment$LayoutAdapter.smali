.class final Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;
.super Landroid/support/v7/widget/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/ah;-><init>()V

    .line 248
    return-void
.end method

.method private d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    add-int/lit8 v0, v0, 0x1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getType()Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->GAME_GROUP:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    if-ne v1, v2, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getRowCount()I

    move-result v0

    .line 1012
    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->ACTIVITY:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    if-ne v1, v0, :cond_2

    .line 130
    const/4 v0, 0x2

    goto :goto_0

    .line 131
    :cond_2
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->AOYOU:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    if-ne v1, v0, :cond_3

    .line 132
    const/4 v0, 0x3

    goto :goto_0

    .line 134
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ay;
    .locals 5

    .prologue
    const v4, 0x7f0300ce

    const/4 v3, 0x0

    .line 141
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->b(I)Lcom/ushaqi/zhuishushenqi/ui/game/N;

    move-result-object v1

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 143
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/N;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 159
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    const v1, 0x7f0300b8

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 146
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {v0, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;

    .line 149
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/N;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->a(I)V

    .line 150
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/M;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/M;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;)V

    move-object v0, v1

    goto :goto_0

    .line 152
    :pswitch_2
    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 153
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/K;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/K;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 155
    :pswitch_3
    invoke-virtual {v0, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;

    .line 156
    sget v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->a:I

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->a(I)V

    .line 157
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/M;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/M;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;)V

    move-object v0, v1

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/support/v7/widget/ay;I)V
    .locals 5

    .prologue
    const v2, 0x7f0c0238

    .line 164
    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(I)Lcom/ushaqi/zhuishushenqi/ui/game/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/N;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 166
    :pswitch_0
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;

    .line 167
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;->mDownload:Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 169
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;->mDownload:Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->a(I)V

    .line 170
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;->mPlayingCount:Landroid/widget/TextView;

    const-string v1, "%d\u4eba\u5728\u73a9"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Game;->getMainPromoInfo()Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;->getPlayingCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;->mDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getMainPromoInfo()Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 173
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/I;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/I;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v1

    .line 183
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->a(Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V

    .line 184
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/J;

    invoke-direct {v2, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/J;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 195
    :pswitch_2
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/game/K;

    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v1

    .line 1255
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/K;->a:Landroid/view/View;

    const v2, 0x7f0c00a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1256
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getActivity()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    move-result-object v1

    .line 1257
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->getBannerImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1258
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/L;

    invoke-direct {v2, p1, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/L;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/K;Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 198
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v1

    .line 199
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameItemSection;->b(Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V

    .line 200
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
