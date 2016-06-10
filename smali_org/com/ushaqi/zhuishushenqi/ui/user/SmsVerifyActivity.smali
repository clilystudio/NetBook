.class public Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

.field private c:Ljava/util/Timer;

.field private e:Ljava/util/TimerTask;

.field private f:I

.field mAppNameText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c015f
    .end annotation
.end field

.field mCodeText:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0164
    .end annotation
.end field

.field mCommitBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0165
    .end annotation
.end field

.field mGoodsText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0160
    .end annotation
.end field

.field mPhoneText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0162
    .end annotation
.end field

.field mPriceText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0161
    .end annotation
.end field

.field mSendCodeBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0163
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 119
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/av;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/av;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/ChargePlan;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "key_charge_plan_verify"

    .line 61
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "key_charge_plan_phone"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 153
    if-lez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    const v1, 0x7f050193

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 168
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->e:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    const v1, 0x7f050194

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 165
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCommitBtn:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v0, 0x7f0200bd

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCommitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 173
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCommitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCommitBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 175
    return-void

    .line 171
    :cond_0
    const v0, 0x7f0200ba

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->f:I

    return v0
.end method

.method private b()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 146
    const/16 v0, 0x3c

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->f:I

    .line 1131
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/aw;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->e:Ljava/util/TimerTask;

    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->c:Ljava/util/Timer;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->e:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 149
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->f:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a(I)V

    .line 150
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->f:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->setContentView(I)V

    .line 68
    const-string v0, "\u77ed\u4fe1\u5145\u503c"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->b(Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_charge_plan_verify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->b:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mAppNameText:Landroid/widget/TextView;

    const-string v1, "\u8ffd\u4e66\u795e\u5668"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mGoodsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->b:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mPriceText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->b:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->getPrice()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mPhoneText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_charge_plan_phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    const v1, 0x7f050193

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a(Z)V

    .line 79
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->c:Ljava/util/Timer;

    .line 80
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->b()V

    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/as;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/as;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCodeText:Landroid/widget/EditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/at;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/at;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCommitBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/au;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/au;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method
