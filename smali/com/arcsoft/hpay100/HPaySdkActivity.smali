.class public Lcom/arcsoft/hpay100/HPaySdkActivity;
.super Landroid/app/Activity;


# static fields
.field private static Q:Ljava/lang/String;

.field public static a:Lcom/arcsoft/hpay100/y;

.field private static c:I


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/EditText;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/ImageView;

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Lcom/arcsoft/hpay100/x;

.field private O:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private P:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:I

.field private V:I

.field private b:Landroid/app/Dialog;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ScrollView;

.field private q:Landroid/widget/ScrollView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->b:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->d:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->f:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->i:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->j:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->k:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->l:Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->m:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->n:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->o:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->p:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->q:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->r:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->t:Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->u:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->v:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->w:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->x:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->y:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->z:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->A:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->B:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->C:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->D:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->E:Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->F:Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->G:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->H:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->I:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->J:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->K:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->L:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->R:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->S:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->T:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->U:I

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->V:I

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    return v0
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->E:Landroid/widget/Button;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;ILcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;)V
    .locals 4

    sput-object p3, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    sput p1, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hpay_sms"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

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

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILcom/arcsoft/hpay100/y;)V
    .locals 4

    sput-object p7, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    sput p2, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hpay_orderid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hpay_payid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hpay_price"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "hpay_payname"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hpay_codetype"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

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

    return-void
.end method

.method private static a(Landroid/widget/ImageView;Z)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "#DFDFDF"

    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "#B93221"

    goto :goto_0
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->b:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->O:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;I)V
    .locals 2

    .prologue
    .line 0
    const/4 v0, 0x2

    .line 10000
    new-instance v1, Lcom/arcsoft/hpay100/k;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/k;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/arcsoft/hpay100/config/HPaySMS;->requestPay$1361a8a9(Landroid/content/Context;ILcom/arcsoft/hpay100/y;)V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    .line 9000
    new-instance v0, Lcom/arcsoft/hpay100/s;

    invoke-direct {v0, p0, p1}, Lcom/arcsoft/hpay100/s;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/HPaySdkActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->L:Z

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->p:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->q:Landroid/widget/ScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->o:Landroid/widget/TextView;

    const-string v1, "\u77ed\u4fe1\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->r:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u8f93\u5165\u672c\u673a\u6216\u8005\u5176\u4ed6\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->t:Landroid/widget/Button;

    const-string v1, "\u4e0b\u4e00\u6b65"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->u:Landroid/widget/TextView;

    const-string v1, "\u6e29\u99a8\u63d0\u793a\uff1a\u7531\u4e8e\u8fd0\u8425\u5546\u7684\u76f8\u5173\u89c4\u5b9a\uff0c\u4e0d\u540c\u5730\u533a\u6709\u5145\u503c\u6b21\u6570\u7684\u9650\u5236\uff1b\u82e5\u65e0\u6cd5\u5145\u503c\uff0c\u8bf7\u4f7f\u7528\u5176\u4ed6\u5145\u503c\u65b9\u5f0f\u3002"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 1

    .prologue
    .line 0
    .line 7000
    new-instance v0, Lcom/arcsoft/hpay100/h;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/h;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method static synthetic b(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->M:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "hpay_act_retain"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u60a8\u771f\u7684\u8981\u653e\u5f03\u5417\uff1f"

    const/4 v2, 0x0

    new-instance v3, Lcom/arcsoft/hpay100/i;

    invoke-direct {v3, p0}, Lcom/arcsoft/hpay100/i;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/arcsoft/hpay100/c/c;->a(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->J:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "hpay_act_retain"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u60a8\u771f\u7684\u8981\u653e\u5f03\u5417\uff1f"

    const/4 v2, 0x0

    new-instance v3, Lcom/arcsoft/hpay100/j;

    invoke-direct {v3, p0}, Lcom/arcsoft/hpay100/j;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/arcsoft/hpay100/c/c;->a(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->T:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->N:Lcom/arcsoft/hpay100/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->N:Lcom/arcsoft/hpay100/x;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/x;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->N:Lcom/arcsoft/hpay100/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/arcsoft/hpay100/HPaySdkActivity;)I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->U:I

    return v0
.end method

.method static synthetic h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->O:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-object v0
.end method

.method static synthetic i(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 6

    .prologue
    .line 0
    .line 8000
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->p:Landroid/widget/ScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->q:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->o:Landroid/widget/TextView;

    const-string v1, "\u77ed\u4fe1\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->D:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->D:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->G:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->F:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4\u63d0\u4ea4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->U:I

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->v:Landroid/widget/TextView;

    const-string v2, "\u5e94\u7528\u540d\u79f0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->w:Landroid/widget/TextView;

    sget-object v2, Lcom/arcsoft/hpay100/HPaySdkActivity;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->x:Landroid/widget/TextView;

    const-string v2, "\u5546\u54c1\u540d\u79f0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->S:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->z:Landroid/widget/TextView;

    const-string v2, "\u652f\u4ed8\u91d1\u989d"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->B:Landroid/widget/TextView;

    const-string v2, "\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->C:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->M:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->O:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e29\u99a8\u63d0\u793a\uff1a\u672c\u6b21\u652f\u4ed8\u91d1\u989d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff0c\u4e0d\u542b\u901a\u4fe1\u8d39\uff0c\u7531\u8fd0\u8425\u5546\u4ee3\u6536\u3002\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->e()V

    new-instance v0, Lcom/arcsoft/hpay100/x;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/x;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;JJ)V

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->N:Lcom/arcsoft/hpay100/x;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->N:Lcom/arcsoft/hpay100/x;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/x;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->O:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic k(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->G:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->K:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/arcsoft/hpay100/HPaySdkActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->L:Z

    return v0
.end method

.method static synthetic n(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->D:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic o(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->P:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-object v0
.end method

.method static synthetic p(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->t:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/arcsoft/hpay100/HPaySdkActivity;)I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->V:I

    return v0
.end method

.method static synthetic t(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->b()V

    return-void
.end method

.method static synthetic u(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->e()V

    return-void
.end method

.method static synthetic v(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->F:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic w(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->b:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "dalongTest"

    const-string v1, "finsh"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/c/j;->a(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sput-object v2, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    const/4 v0, 0x3

    sput v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    invoke-static {v2}, Lcom/arcsoft/hpay100/config/b;->a(Lcom/arcsoft/hpay100/config/j;)V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->e()V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anim"

    const-string v2, "hpay_push_right_in"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anim"

    const-string v3, "hpay_push_right_out"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/c/j;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->c()V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->L:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->d()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/b;->a(Lcom/arcsoft/hpay100/config/j;)V

    iput-boolean v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->L:Z

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->b()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->e()V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "dalongTest"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "hpay_act_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->setContentView(I)V

    sget v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->c:I

    packed-switch v1, :pswitch_data_1

    .line 6000
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 0
    :pswitch_1
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "hpay_act_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "hpay_act_wap"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "hpay_act_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 1000
    :pswitch_4
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_img_back_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_top_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_yymc_left_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_yymc_right_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_spmc_left_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_spmc_right_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_zfje_left_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_zfje_right_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_btn_qdtj_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->l:Landroid/widget/Button;

    const-string v2, "\u786e\u8ba4\u63d0\u4ea4"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_wxts_bottom_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->m:Landroid/widget/TextView;

    .line 2000
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->l:Landroid/widget/Button;

    new-instance v2, Lcom/arcsoft/hpay100/g;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/g;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/arcsoft/hpay100/l;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/l;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3000
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "hpay_sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->P:Lcom/arcsoft/hpay100/config/HPaySMS;

    :cond_1
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mPaySMSDD:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->P:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->c()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->Q:Ljava/lang/String;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->e:Landroid/widget/TextView;

    const-string v2, "\u77ed\u4fe1\u5145\u503c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->P:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->f:Landroid/widget/TextView;

    const-string v3, "\u5e94\u7528\u540d\u79f0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->g:Landroid/widget/TextView;

    sget-object v3, Lcom/arcsoft/hpay100/HPaySdkActivity;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->h:Landroid/widget/TextView;

    const-string v3, "\u5546\u54c1\u540d\u79f0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->P:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->j:Landroid/widget/TextView;

    const-string v3, "\u652f\u4ed8\u91d1\u989d"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e29\u99a8\u63d0\u793a\uff1a\u672c\u6b21\u652f\u4ed8\u91d1\u989d"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff0c\u4e0d\u542b\u901a\u4fe1\u8d39\uff0c\u7531\u8fd0\u8425\u5546\u4ee3\u6536\u3002\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 4000
    :pswitch_5
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_img_back_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_top_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_scroll_inputphone_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->p:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_input_title_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_et_inputphone_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_btn_input_next_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_input_wxts_bottom_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_scroll_layout_ver_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->q:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_yyms_left_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_yyms_right_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_spmc_left_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_spmc_right_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_zfje_left_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_zfje_right_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_sjh_left_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_sjh_right_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_et_ver_yzm_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->D:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_btn_ver_yzm_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->E:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_btn_ver_tj_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->F:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_show_yzm_error_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->G:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_ver_wxts_bottom_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "tv_input_num_error"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_view_line_inputphone_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->J:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_iv_ver_yzm_line_dy"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->K:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->J:Landroid/widget/ImageView;

    invoke-static {v1, v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Landroid/widget/ImageView;Z)V

    .line 5000
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->t:Landroid/widget/Button;

    new-instance v2, Lcom/arcsoft/hpay100/m;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/m;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->F:Landroid/widget/Button;

    new-instance v2, Lcom/arcsoft/hpay100/n;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/n;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->E:Landroid/widget/Button;

    new-instance v2, Lcom/arcsoft/hpay100/o;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/o;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/arcsoft/hpay100/p;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/p;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    new-instance v2, Lcom/arcsoft/hpay100/q;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/q;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->D:Landroid/widget/EditText;

    new-instance v2, Lcom/arcsoft/hpay100/r;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/r;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6000
    const-string v1, ""

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->M:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->L:Z

    iput-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->O:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->c()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->Q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hpay_orderid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->T:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hpay_payid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->R:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hpay_payname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->S:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hpay_price"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->U:I

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hpay_codetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->V:I

    :cond_2
    invoke-static {v5}, Lcom/arcsoft/hpay100/config/b;->a(Lcom/arcsoft/hpay100/config/j;)V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->b()V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->t:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/l;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    instance-of v1, v2, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "dalongTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "dalongTest"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "dalongTest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "dalongTest"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "dalongTest"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
