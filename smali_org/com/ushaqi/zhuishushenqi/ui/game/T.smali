.class final Lcom/ushaqi/zhuishushenqi/ui/game/T;
.super Landroid/support/v7/widget/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/ah",
        "<",
        "Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/ah;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->b:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ay;
    .locals 3

    .prologue
    .line 52
    .line 2061
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2062
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    invoke-direct {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;Landroid/view/View;)V

    .line 52
    return-object v1
.end method

.method public final synthetic a(Landroid/support/v7/widget/ay;I)V
    .locals 4

    .prologue
    .line 52
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;

    .line 1067
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 1071
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020106

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 1072
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mIntro:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getShortIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getFollowers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba\u5728\u73a9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mPlay:Landroid/widget/Button;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/U;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/U;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/T;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;->mContainer:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/V;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/V;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/T;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_0
    return-void
.end method
