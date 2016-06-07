.class public final Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/adapter/u",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/ushaqi/zhuishushenqi/model/Account;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/adapter/u;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->a:Landroid/view/LayoutInflater;

    .line 37
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->b:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V
    .locals 8

    .prologue
    const/4 v2, 0x3

    .line 30
    .line 2096
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->f()Ljava/util/List;

    move-result-object v4

    .line 2097
    if-eqz v4, :cond_0

    .line 2100
    iget-object v5, p1, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->gifts:[Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    .line 2101
    if-eqz v5, :cond_0

    array-length v0, v5

    if-gt v0, v2, :cond_1

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2104
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->get_id()Ljava/lang/String;

    move-result-object v6

    .line 2105
    const/4 v3, -0x1

    .line 2107
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2108
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    .line 2109
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getType()I

    move-result v7

    if-nez v7, :cond_2

    .line 2112
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v0

    .line 2113
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2118
    :goto_2
    if-ltz v1, :cond_0

    .line 2122
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    move v0, v2

    .line 2123
    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_3

    .line 2124
    add-int/lit8 v1, v1, 0x1

    .line 2125
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;-><init>()V

    .line 2126
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setType(I)V

    .line 2127
    aget-object v3, v5, v0

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setGift(Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;)V

    .line 2128
    invoke-virtual {v2, p1}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 2129
    invoke-interface {v4, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2123
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2107
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2132
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .line 2133
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2134
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getType()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;

    .line 43
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getType()I

    move-result v1

    .line 1139
    if-nez p2, :cond_0

    .line 1140
    packed-switch v1, :pswitch_data_0

    .line 45
    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 56
    :goto_1
    return-object p2

    .line 1142
    :pswitch_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f0300f0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1145
    :pswitch_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f0300f1

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1148
    :pswitch_2
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f0300f2

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 2060
    :pswitch_3
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v0

    .line 2061
    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GameHolder;

    invoke-direct {v1, p2}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GameHolder;-><init>(Landroid/view/View;)V

    .line 2062
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GameHolder;->icon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iget-object v3, v0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->icon:Ljava/lang/String;

    const v4, 0x7f020106

    invoke-virtual {v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 2063
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GameHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GameHolder;->desc:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6709 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->followers:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a\u5c0f\u4f19\u4f34\u5728\u73a9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2065
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GameHolder;->button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 2066
    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GameHolder;->button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getDownloadStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a(I)V

    goto :goto_1

    .line 2070
    :pswitch_4
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGift()Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    move-result-object v1

    .line 2071
    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;

    invoke-direct {v2, p2}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;-><init>(Landroid/view/View;)V

    .line 2072
    iget-object v3, v2, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->title:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    iget-object v3, v2, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->desc:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2074
    iget-object v3, v2, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v3, v1}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setGift(Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;)V

    .line 2075
    iget-object v1, v2, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 2076
    iget-object v1, v2, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;->b:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setAccount(Lcom/ushaqi/zhuishushenqi/model/Account;)V

    .line 2077
    iget-object v1, v2, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;->button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getDownloadStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a(I)V

    goto/16 :goto_1

    .line 2081
    :pswitch_5
    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$MoreHolder;

    invoke-direct {v1, p2}, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$MoreHolder;-><init>(Landroid/view/View;)V

    .line 2082
    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$MoreHolder;->title:Landroid/widget/TextView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/n;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/adapter/n;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter;Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 45
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x3

    return v0
.end method
