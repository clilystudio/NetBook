.class public Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0048

    const-string v1, "field \'title\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->title:Landroid/widget/TextView;

    .line 12
    const v0, 0x7f0c0269

    const-string v1, "field \'desc\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->desc:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c032f

    const-string v1, "field \'button\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    .line 16
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->title:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->desc:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    .line 22
    return-void
.end method
