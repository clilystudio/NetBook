.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/game/y;

.field private b:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Lcom/ushaqi/zhuishushenqi/view/a;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 234
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "game_gift_list"

    .line 61
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "is_micro_game"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Lcom/ushaqi/zhuishushenqi/model/GameGift;)Lcom/ushaqi/zhuishushenqi/model/GameGift;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)V
    .locals 4

    .prologue
    .line 46
    .line 1177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-nez v0, :cond_0

    .line 1178
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Account;

    :goto_0
    return-void

    .line 1180
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/D;

    invoke-direct {v0, p0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/D;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Landroid/app/Activity;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/model/GameGift;->_id:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/D;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 130
    new-instance v2, Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/view/a;-><init>(Landroid/content/Context;)V

    .line 131
    const v0, 0x7f030098

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 132
    const v0, 0x7f0c0213

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v0, 0x7f0c0215

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0c0217

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v1, 0x7f0c0219

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->usage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const v1, 0x7f0c0218

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v5, v5, Lcom/ushaqi/zhuishushenqi/model/GameGift;->rangeFrom:Ljava/util/Date;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/util/t;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v5, v5, Lcom/ushaqi/zhuishushenqi/model/GameGift;->rangeTo:Ljava/util/Date;

    .line 137
    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/util/t;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/view/a;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/view/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/view/a;->show()V

    .line 139
    const v1, 0x7f0c021a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string v3, "\u9886\u53d6"

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u6709 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->total:I

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget v5, v5, Lcom/ushaqi/zhuishushenqi/model/GameGift;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4eba\u9886\u53d6\uff0c\u5269\u4f59 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v0, 0x7f0200f2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 145
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/w;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/w;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Lcom/ushaqi/zhuishushenqi/view/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5151\u6362\u7801\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const-string v0, "\u590d\u5236\u5151\u6362\u7801\u5e76\u6253\u5f00\u6e38\u620f"

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v0, 0x7f0200f5

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 156
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/x;

    invoke-direct {v0, p0, v2, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/x;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Lcom/ushaqi/zhuishushenqi/view/a;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/GameGift;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Account;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->f:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/GameGift;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->g:Lcom/ushaqi/zhuishushenqi/view/a;

    if-eqz v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->g:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Ljava/lang/String;)V

    .line 101
    :goto_1
    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/model/GameGift;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 1115
    const v0, 0x7f030097

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1116
    const v0, 0x7f0c0212

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1117
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1118
    const v0, 0x7f0c0215

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5269\u4f59\u793c\u5305"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/model/GameGift;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e2a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    const v0, 0x7f0c0213

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/model/GameGift;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
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

    .line 1121
    const v0, 0x7f0c0216

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;

    .line 1122
    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/s;->a(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 1123
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 1124
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->a(I)V

    .line 1125
    new-instance v0, Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/view/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->g:Lcom/ushaqi/zhuishushenqi/view/a;

    .line 1126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->g:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/view/a;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->show()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030119

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_micro_game"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->h:Z

    .line 71
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b(Ljava/lang/String;)V

    .line 77
    :goto_0
    const v0, 0x7f0c010f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 78
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 79
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/y;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/game/y;

    .line 80
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/game/y;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 1086
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "game_gift_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;

    .line 1087
    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;->gifts:[Lcom/ushaqi/zhuishushenqi/model/GameGift;

    .line 1091
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/game/y;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a([Ljava/lang/Object;)V

    .line 83
    :cond_0
    return-void

    .line 74
    :cond_1
    const-string v0, "\u5f80\u671f\u6e38\u620f"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
