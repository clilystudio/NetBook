.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0339

    const-string v1, "field \'mContainer\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mContainer:Landroid/view/View;

    .line 12
    const v0, 0x7f0c033a

    const-string v1, "field \'mIcon\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 14
    const v0, 0x7f0c033c

    const-string v1, "field \'mName\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mName:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0c033e

    const-string v1, "field \'mCount\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mCount:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c033d

    const-string v1, "field \'mIntro\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mIntro:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0c033b

    const-string v1, "field \'mPlay\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mPlay:Landroid/widget/Button;

    .line 22
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mContainer:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mName:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mCount:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mIntro:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mPlay:Landroid/widget/Button;

    .line 31
    return-void
.end method
