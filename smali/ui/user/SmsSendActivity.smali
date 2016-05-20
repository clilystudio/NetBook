.class public Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field mErrorLine:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c015c
    .end annotation
.end field

.field mNextBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c015e
    .end annotation
.end field

.field mNormalLine:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c015b
    .end annotation
.end field

.field mNumberText:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c015a
    .end annotation
.end field

.field mWrongText:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c015d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 49
    const-string v0, "^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->b:Ljava/lang/String;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "+86"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "86"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "17951"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->c:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNextBtn:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v0, 0x7f0200bd

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 142
    return-void

    .line 138
    :cond_0
    const v0, 0x7f0200ba

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    .line 1145
    if-nez p1, :cond_0

    .line 1146
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1149
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1150
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNormalLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mErrorLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mWrongText:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)Lcom/ushaqi/zhuishushenqi/model/ChargePlan;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    .line 2132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNormalLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mErrorLine:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mWrongText:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f05018f

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f05018e

    .line 114
    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/ar;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ar;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->setContentView(I)V

    .line 61
    const-string v0, "\u77ed\u4fe1\u5145\u503c"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->b(Ljava/lang/String;)V

    .line 62
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 63
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->b()V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_charge_plan_send"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNumberText:Landroid/widget/EditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/ap;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ap;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNextBtn:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aq;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method
