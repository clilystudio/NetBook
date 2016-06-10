.class final Lcom/arcsoft/hpay100/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v1, 0x3

    .line 0
    iget-object v0, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/arcsoft/hpay100/z;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/z;-><init>()V

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->a(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->e(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->i(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    iput-object v1, v0, Lcom/arcsoft/hpay100/z;->c:Ljava/lang/String;

    .line 0
    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->g(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->d(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->g(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->e(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->f(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    .line 2000
    iput-object v1, v0, Lcom/arcsoft/hpay100/z;->d:Ljava/lang/String;

    .line 0
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->c(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->s(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v1

    .line 3000
    iput v1, v0, Lcom/arcsoft/hpay100/z;->e:I

    .line 0
    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->e(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a()I

    move-result v5

    iget-object v6, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->f(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->g(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    const-string v8, "1"

    const-string v9, ""

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/arcsoft/hpay100/z;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/z;-><init>()V

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->a(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    .line 4000
    iput-object v1, v0, Lcom/arcsoft/hpay100/z;->c:Ljava/lang/String;

    .line 0
    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->d(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mRealAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->e(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    .line 5000
    iput-object v1, v0, Lcom/arcsoft/hpay100/z;->d:Ljava/lang/String;

    .line 0
    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/z;->c(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget-object v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v6, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/j;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->h(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
