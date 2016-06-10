.class public Lcom/arcsoft/hpay100/web/HPayWebActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Lcom/arcsoft/hpay100/y;

.field private static i:Ljava/lang/String;


# instance fields
.field private b:Lcom/arcsoft/hpay100/web/HPayWebView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private j:Landroid/os/Handler;

.field private k:Lcom/arcsoft/hpay100/web/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    new-instance v0, Lcom/arcsoft/hpay100/web/b;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/web/b;-><init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/arcsoft/hpay100/web/c;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/web/c;-><init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->k:Lcom/arcsoft/hpay100/web/m;

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/y;)V
    .locals 4

    sput-object p3, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a:Lcom/arcsoft/hpay100/y;

    sput-object p2, Lcom/arcsoft/hpay100/web/HPayWebActivity;->i:Ljava/lang/String;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hpaysms"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anim"

    const-string v2, "hapy_push_left_in"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anim"

    const-string v3, "hpay_push_left_out"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/c/j;->a(Landroid/app/Activity;II)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V
    .locals 11

    .prologue
    .line 0
    .line 5000
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    .line 6000
    new-instance v1, Lcom/arcsoft/hpay100/z;

    invoke-direct {v1}, Lcom/arcsoft/hpay100/z;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/arcsoft/hpay100/z;->a(I)V

    iget-object v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    .line 7000
    iput-object v2, v1, Lcom/arcsoft/hpay100/z;->a:Ljava/lang/String;

    .line 6000
    iget-object v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    .line 8000
    iput-object v2, v1, Lcom/arcsoft/hpay100/z;->b:Ljava/lang/String;

    .line 6000
    iget-object v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/hpay100/z;->b(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/hpay100/z;->c(Ljava/lang/String;)V

    iget v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    invoke-virtual {v1, v2}, Lcom/arcsoft/hpay100/z;->c(I)V

    iget-object v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    .line 9000
    iput-object v2, v1, Lcom/arcsoft/hpay100/z;->d:Ljava/lang/String;

    .line 6000
    iget-object v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    .line 10000
    iput-object v2, v1, Lcom/arcsoft/hpay100/z;->c:Ljava/lang/String;

    .line 6000
    iget v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-virtual {v1, v2}, Lcom/arcsoft/hpay100/z;->d(I)V

    iget v2, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mRealAmount:I

    invoke-virtual {v1, v2}, Lcom/arcsoft/hpay100/z;->e(I)V

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    .line 11000
    iput v0, v1, Lcom/arcsoft/hpay100/z;->e:I

    .line 5000
    sget-object v0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a:Lcom/arcsoft/hpay100/y;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a:Lcom/arcsoft/hpay100/y;

    invoke-interface {v0, v1}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_1
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v6, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    const/16 v10, 0xb

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    return-object v0
.end method

.method static synthetic f(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anim"

    const-string v2, "hpay_push_right_in"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anim"

    const-string v3, "hpay_push_right_out"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/c/j;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "hpay_act_wap_full"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->setContentView(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_btnback"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_tvTitle"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->d:Landroid/widget/TextView;

    const-string v1, "\u77ed\u4fe1\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_webview"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/hpay100/web/HPayWebView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_progressbar"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_net_error"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_error_image_retry"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2000
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    new-instance v1, Lcom/arcsoft/hpay100/web/d;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/d;-><init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    new-instance v1, Lcom/arcsoft/hpay100/web/e;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/e;-><init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/arcsoft/hpay100/web/f;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/f;-><init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/arcsoft/hpay100/web/g;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/g;-><init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3000
    const/4 v0, 0x0

    sput v0, Lcom/arcsoft/hpay100/web/HPayWebView;->a:I

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "hpaysms"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOpenUrl:Ljava/lang/String;

    move-object v7, v0

    :goto_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->j:Landroid/os/Handler;

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    sget-object v4, Lcom/arcsoft/hpay100/web/HPayWebActivity;->i:Ljava/lang/String;

    sget-object v5, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a:Lcom/arcsoft/hpay100/y;

    iget-object v6, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->k:Lcom/arcsoft/hpay100/web/m;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Landroid/app/Activity;Landroid/os/Handler;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/y;Lcom/arcsoft/hpay100/web/m;)V

    .line 4000
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->clearHistory()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->b:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0, v7}, Lcom/arcsoft/hpay100/web/HPayWebView;->loadUrl(Ljava/lang/String;)V

    .line 3000
    new-instance v0, Lcom/arcsoft/hpay100/web/h;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/web/h;-><init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/b;->a(Lcom/arcsoft/hpay100/config/j;)V

    .line 0
    return-void

    .line 3000
    :cond_1
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->h:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mFeeUrl:Ljava/lang/String;

    move-object v7, v0

    goto :goto_0

    :cond_2
    move-object v7, v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sput-object v1, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a:Lcom/arcsoft/hpay100/y;

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/web/HPayWebActivity;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/b;->a(Lcom/arcsoft/hpay100/config/j;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
