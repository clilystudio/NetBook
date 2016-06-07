.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/String;

.field private e:Ljava/util/Date;

.field mExp:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0172
    .end annotation
.end field

.field mExpProgress:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0173
    .end annotation
.end field

.field mLevel:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0171
    .end annotation
.end field

.field mMessageCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0177
    .end annotation
.end field

.field mName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0040
    .end annotation
.end field

.field mPortrait:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c011a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 203
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "account_token"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->e:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V
    .locals 4

    .prologue
    .line 47
    .line 1286
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->e:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1287
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->e:Ljava/util/Date;

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ModifyUserInfoActivity;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1290
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;I)V
    .locals 2

    .prologue
    .line 47
    .line 3294
    if-lez p1, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mMessageCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3296
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mMessageCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 3298
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mMessageCount:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;Lcom/ushaqi/zhuishushenqi/model/UserInfo;)V
    .locals 6

    .prologue
    .line 47
    .line 3250
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getLv()I

    move-result v0

    .line 3251
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getExp()I

    move-result v1

    .line 3252
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(I)I

    move-result v2

    .line 3254
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getScaleAvatar(I)Ljava/lang/String;

    move-result-object v3

    .line 3255
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mPortrait:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;

    const v5, 0x7f02006e

    invoke-virtual {v4, v3, v5}, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 3256
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3257
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mLevel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Lv:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mExp:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7ecf\u9a8c\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3259
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mExpProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 47
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/aK;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/aK;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/aK;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v0, "\u8d26\u53f7\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u6388\u6743\u767b\u5f55\u540e\u518d\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V
    .locals 1

    .prologue
    .line 47
    .line 2279
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2281
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;Lcom/ushaqi/zhuishushenqi/model/UserInfo;)V
    .locals 3

    .prologue
    .line 47
    .line 4263
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 4264
    if-eqz v0, :cond_0

    .line 4265
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    .line 4266
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/User;->setNickname(Ljava/lang/String;)V

    .line 4267
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/User;->setAvatar(Ljava/lang/String;)V

    .line 4268
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getLv()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/User;->setLv(I)V

    .line 4270
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/model/Account;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4274
    :goto_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/a;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V
    .locals 2

    .prologue
    .line 47
    .line 2303
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2304
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 80
    const v0, 0x7f0501d2

    const-string v1, "\u7f16\u8f91\u8d44\u6599"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/aA;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aA;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->a(ILjava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 88
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->c:Ljava/lang/String;

    .line 1115
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->a:Landroid/view/View;

    .line 1116
    const v0, 0x7f0c0174

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->b:Landroid/view/View;

    .line 1117
    const v0, 0x7f0c0175

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aC;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aC;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    const v0, 0x7f0c0179

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aD;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aD;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    const v0, 0x7f0c0178

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aE;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aE;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    const v0, 0x7f0c017a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aF;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aF;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    const v0, 0x7f0c017b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aG;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aG;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    const v0, 0x7f0c017c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aH;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1159
    const v0, 0x7f0c017f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aI;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    const v0, 0x7f0c017e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aJ;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    const v0, 0x7f0c017d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1175
    const-string v1, "switch_share_remove_ad"

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aB;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aB;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->b()V

    .line 93
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 95
    const-string v0, "PERSONAL_PAGE_SHOW"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 101
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public onLogoutEvent(Lcom/ushaqi/zhuishushenqi/event/u;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->finish()V

    .line 112
    return-void
.end method

.method public onUserInfoChanged(Lcom/ushaqi/zhuishushenqi/event/K;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->b()V

    .line 107
    return-void
.end method
