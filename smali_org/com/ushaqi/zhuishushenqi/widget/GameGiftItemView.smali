.class public Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

.field private b:Lcom/ushaqi/zhuishushenqi/view/a;

.field private c:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->setClickable(Z)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;)V
    .locals 4

    .prologue
    .line 37
    .line 1173
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1174
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-nez v1, :cond_0

    .line 1175
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    :goto_0
    return-void

    .line 1177
    :cond_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/J;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/J;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Landroid/app/Activity;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/model/GameGift;->_id:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/J;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 126
    new-instance v2, Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/view/a;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030098

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 128
    const v0, 0x7f0c0213

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v0, 0x7f0c0215

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    const v1, 0x7f0c0217

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v1, 0x7f0c0219

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->usage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v1, 0x7f0c0218

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v5, v5, Lcom/ushaqi/zhuishushenqi/model/GameGift;->rangeFrom:Ljava/util/Date;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/util/t;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v5, v5, Lcom/ushaqi/zhuishushenqi/model/GameGift;->rangeTo:Ljava/util/Date;

    .line 133
    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/util/t;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/view/a;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/view/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/view/a;->show()V

    .line 135
    const v1, 0x7f0c021a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 136
    if-nez p1, :cond_0

    .line 137
    const-string v3, "\u9886\u53d6"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u6709 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->total:I

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget v5, v5, Lcom/ushaqi/zhuishushenqi/model/GameGift;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4eba\u9886\u53d6\uff0c\u5269\u4f59 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v0, 0x7f0200f2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 141
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/F;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/F;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Lcom/ushaqi/zhuishushenqi/view/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5151\u6362\u7801\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const-string v0, "\u590d\u5236\u5151\u6362\u7801\u5e76\u6253\u5f00\u6e38\u620f"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v0, 0x7f0200f5

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 152
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/G;

    invoke-direct {v0, p0, v2, p1}, Lcom/ushaqi/zhuishushenqi/widget/G;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Lcom/ushaqi/zhuishushenqi/view/a;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->d:Landroid/widget/TextView;

    const-string v1, "\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->d:Landroid/widget/TextView;

    const v1, 0x7f02013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/H;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/H;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->e:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/I;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/I;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;)Lcom/ushaqi/zhuishushenqi/model/GameGift;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->b:Lcom/ushaqi/zhuishushenqi/view/a;

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->b:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a(Ljava/lang/String;)V

    .line 96
    :goto_1
    return-void

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/model/GameGift;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 1110
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f030097

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1111
    const v0, 0x7f0c0212

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1112
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1113
    const v0, 0x7f0c0215

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5269\u4f59\u793c\u5305"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    const v0, 0x7f0c0213

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/model/GameGift;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    const v0, 0x7f0c0214

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getCat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidSize()I

    move-result v4

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/s;->a(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 1117
    const v0, 0x7f0c0216

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;

    .line 1118
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 1119
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->a(I)V

    .line 1120
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setGiftItemView(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;)V

    .line 1121
    new-instance v0, Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/view/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->b:Lcom/ushaqi/zhuishushenqi/view/a;

    .line 1122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->b:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/view/a;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->show()V

    goto/16 :goto_1
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/GameGift;Z)V
    .locals 4

    .prologue
    .line 53
    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->f:Z

    .line 54
    const v0, 0x7f0c032b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f0c032d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x7f0c032c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->d:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0c0329

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->e:Landroid/view/View;

    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    .line 59
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->c:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->_id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->getRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;

    .line 64
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftId:Ljava/lang/String;

    iget-object v3, p1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftCode:Ljava/lang/String;

    .line 69
    :goto_0
    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->b(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->e:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/D;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/D;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :goto_1
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->e:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/E;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/E;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
