.class public Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->h()V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;)Lcom/ushaqi/zhuishushenqi/model/GiftGame;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;->save()Ljava/lang/Long;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "\u6211\u8981\u9886"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setTextColor(I)V

    .line 64
    const v0, 0x7f02013b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setBackgroundResource(I)V

    .line 65
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 40
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 55
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a()V

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/T;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/T;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 43
    :sswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->b()V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 47
    :sswitch_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->c()V

    .line 48
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/R;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/R;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1080
    :sswitch_2
    const-string v0, "\u6253\u5f00"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setTextColor(I)V

    .line 1082
    const v0, 0x7f020139

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setBackgroundResource(I)V

    .line 52
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/S;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/S;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setTextColor(I)V

    .line 70
    const v0, 0x7f0200e1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setBackgroundResource(I)V

    .line 71
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setTextColor(I)V

    .line 76
    const v0, 0x7f02013b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->setBackgroundResource(I)V

    .line 77
    return-void
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    const v0, 0x7f0c0212

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 88
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 89
    const v0, 0x7f0c0215

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6709 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    iget v3, v3, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->followers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u5c0f\u4f19\u4f34\u6b63\u5728\u73a9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v0, 0x7f0c0213

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v0, 0x7f0c0214

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    iget v2, v2, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->androidSize:I

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v2, Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/view/a;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->a(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 96
    const v0, 0x7f0c0216

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;

    .line 97
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 98
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getDownloadStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->a(I)V

    .line 99
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setBottomDialog(Lcom/ushaqi/zhuishushenqi/view/a;)V

    .line 101
    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/view/a;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->show()V

    .line 102
    return-void
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->h()V

    .line 106
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/ao;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-direct {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/ao;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V

    .line 107
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->a()V

    .line 108
    return-void
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final g()Lcom/ushaqi/zhuishushenqi/model/GiftGame;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    return-object v0
.end method

.method public setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    .line 122
    return-void
.end method
