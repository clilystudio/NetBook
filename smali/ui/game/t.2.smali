.class final Lcom/ushaqi/zhuishushenqi/ui/game/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/t;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/t;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 62
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/t;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/t;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    .line 64
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/t;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/t;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getDownloadStatus()I

    move-result v1

    .line 69
    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/t;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v2

    .line 1084
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f03009a

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1085
    const v0, 0x7f0c0212

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1086
    iget-object v4, v2, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->icon:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1087
    const v0, 0x7f0c0215

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6709 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->followers:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u4e2a\u5c0f\u4f19\u4f34\u6b63\u5728\u73a9"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    const v0, 0x7f0c0213

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    const v0, 0x7f0c0214

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v4, v2, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->androidSize:I

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    new-instance v4, Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/ushaqi/zhuishushenqi/view/a;-><init>(Landroid/content/Context;)V

    .line 1092
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->a(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 1094
    const v0, 0x7f0c0216

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;

    .line 1095
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 1096
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->a(I)V

    .line 1097
    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setBottomDialog(Lcom/ushaqi/zhuishushenqi/view/a;)V

    .line 1099
    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/view/a;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->show()V

    goto/16 :goto_0
.end method
