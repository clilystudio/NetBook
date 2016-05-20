.class public Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

.field private b:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

.field private c:Lcom/ushaqi/zhuishushenqi/model/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)V
    .locals 4

    .prologue
    .line 32
    .line 2171
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2172
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-nez v1, :cond_0

    .line 2173
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    :goto_0
    return-void

    .line 2175
    :cond_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/Y;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/Y;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Landroid/app/Activity;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->_id:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/Y;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setVisibility(I)V

    .line 103
    const-string v0, "\u67e5\u770b"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f02013b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setBackgroundResource(I)V

    .line 105
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/U;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/U;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)Lcom/ushaqi/zhuishushenqi/model/GiftGame;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->b:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 125
    new-instance v2, Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/view/a;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030098

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 127
    const v0, 0x7f0c0213

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v0, 0x7f0c0215

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    const v1, 0x7f0c0217

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v1, 0x7f0c0219

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->usage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v1, 0x7f0c0218

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget-object v5, v5, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->rangeFrom:Ljava/util/Date;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/util/t;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget-object v5, v5, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->rangeTo:Ljava/util/Date;

    .line 132
    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/util/t;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/view/a;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/view/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/view/a;->show()V

    .line 134
    const v1, 0x7f0c021a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 135
    if-nez p1, :cond_0

    .line 136
    const-string v3, "\u9886\u53d6"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u6709 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->totalCount:I

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget v5, v5, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->leftCount:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4eba\u9886\u53d6\uff0c\u5269\u4f59 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->leftCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v0, 0x7f0b0033

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 140
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/V;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/V;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Lcom/ushaqi/zhuishushenqi/view/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5151\u6362\u7801\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const-string v0, "\u590d\u5236\u5151\u6362\u7801\u5e76\u6253\u5f00\u6e38\u620f"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v0, 0x7f0b0032

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 151
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/W;

    invoke-direct {v0, p0, v2, p1}, Lcom/ushaqi/zhuishushenqi/widget/W;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Lcom/ushaqi/zhuishushenqi/view/a;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->b(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public final a(I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 43
    .line 1063
    const/4 v2, 0x0

    .line 1064
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v0, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->_id:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->getRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1066
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1067
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;

    .line 1068
    iget-object v3, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;->_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1069
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftCode:Ljava/lang/String;

    .line 1073
    :goto_0
    if-eqz v0, :cond_0

    .line 1074
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a(Ljava/lang/String;)V

    .line 1076
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 43
    :goto_1
    if-eqz v0, :cond_2

    .line 60
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 1076
    goto :goto_1

    .line 46
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 2092
    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setVisibility(I)V

    goto :goto_2

    .line 1092
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setVisibility(I)V

    goto :goto_2

    .line 1096
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setVisibility(I)V

    .line 1097
    const-string v0, "\u9886\u53d6"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    const v0, 0x7f020254

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setBackgroundResource(I)V

    .line 54
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/X;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/X;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAccount(Lcom/ushaqi/zhuishushenqi/model/Account;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 89
    return-void
.end method

.method public setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->b:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    .line 85
    return-void
.end method

.method public setGift(Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    .line 81
    return-void
.end method
