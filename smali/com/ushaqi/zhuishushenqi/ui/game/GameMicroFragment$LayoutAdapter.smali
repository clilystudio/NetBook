.class final Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;
.super Landroid/support/v7/widget/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/ah;-><init>()V

    .line 506
    return-void
.end method

.method private d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)[Lcom/ushaqi/zhuishushenqi/model/Game;

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
    .line 249
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    add-int/lit8 v0, v0, 0x1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)I
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getType()Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    move-result-object v1

    .line 130
    sget-object v2, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->GAME_GROUP:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    if-ne v1, v2, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getRowCount()I

    move-result v0

    .line 1012
    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->ACTIVITY:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    if-ne v1, v0, :cond_2

    .line 134
    const/4 v0, 0x2

    goto :goto_0

    .line 135
    :cond_2
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/ModuleType;->LOCAL:Lcom/ushaqi/zhuishushenqi/model/ModuleType;

    if-ne v1, v0, :cond_3

    .line 136
    const/4 v0, 0x3

    goto :goto_0

    .line 138
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ay;
    .locals 5

    .prologue
    const v4, 0x7f0300cf

    const/4 v3, 0x0

    .line 145
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->b(I)Lcom/ushaqi/zhuishushenqi/ui/game/N;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/N;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    const v1, 0x7f0300b9

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 152
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-virtual {v0, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;

    .line 155
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/N;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->a(I)V

    .line 156
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/ab;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/ab;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;)V

    move-object v0, v1

    goto :goto_0

    .line 158
    :pswitch_2
    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 159
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/Z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 161
    :pswitch_3
    invoke-virtual {v0, v4, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;

    .line 162
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->a()V

    .line 167
    :goto_1
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/ab;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/ab;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;)V

    move-object v0, v1

    goto :goto_0

    .line 165
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->a(I)V

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Landroid/support/v7/widget/ay;I)V
    .locals 3

    .prologue
    const v2, 0x7f0c0238

    .line 174
    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(I)Lcom/ushaqi/zhuishushenqi/ui/game/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/N;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 176
    :pswitch_0
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    .line 177
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->q()V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v1

    .line 206
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->a(Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V

    .line 207
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/X;

    invoke-direct {v2, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/X;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 219
    :pswitch_2
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->d(I)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v1

    .line 1513
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/Z;->a:Landroid/view/View;

    const v2, 0x7f0c00a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1514
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getActivity()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    move-result-object v1

    .line 1515
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->getBannerImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1516
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/aa;

    invoke-direct {v2, p1, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/aa;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/Z;Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 222
    :pswitch_3
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->setHasPlayed(Z)V

    .line 224
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroItemSection;->a(Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V

    .line 225
    iget-object v0, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/Y;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/Y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 236
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
