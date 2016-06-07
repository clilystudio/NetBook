.class final Lcom/arcsoft/hpay100/config/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/f;


# instance fields
.field final synthetic a:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic b:Lcom/arcsoft/hpay100/y;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:I

.field private final synthetic e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p2, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/y;

    iput-object p3, p0, Lcom/arcsoft/hpay100/config/z;->c:Landroid/content/Context;

    iput p4, p0, Lcom/arcsoft/hpay100/config/z;->d:I

    iput-object p5, p0, Lcom/arcsoft/hpay100/config/z;->e:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 12

    const/4 v11, 0x1

    if-ne p1, v11, :cond_2

    const-string v0, "dalongTest"

    const-string v1, "sms send success"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/a;->a(Lcom/arcsoft/hpay100/config/HPaySMS;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    iget v10, p0, Lcom/arcsoft/hpay100/config/z;->d:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSendIndex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    # getter for: Lcom/arcsoft/hpay100/config/HPaySMS;->mSendIndex:I
    invoke-static {v2}, Lcom/arcsoft/hpay100/config/HPaySMS;->access$0(Lcom/arcsoft/hpay100/config/HPaySMS;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSMSAddress.length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    # getter for: Lcom/arcsoft/hpay100/config/HPaySMS;->mSendIndex:I
    invoke-static {v0}, Lcom/arcsoft/hpay100/config/HPaySMS;->access$0(Lcom/arcsoft/hpay100/config/HPaySMS;)I

    move-result v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->e:Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/hpay100/config/A;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/config/A;-><init>(Lcom/arcsoft/hpay100/config/z;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mIntervalTimes:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/l;->c(Landroid/content/Context;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v0, "dalongTest"

    const-string v1, "sms send failed"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/16 v1, 0x17d8

    const-string v2, "\u77ed\u4fe1\u53d1\u9001\u8d85\u65f6"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/config/a;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "6104"

    iget v10, p0, Lcom/arcsoft/hpay100/config/z;->d:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/arcsoft/hpay100/config/l;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/16 v1, 0x17d5

    const-string v2, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/config/a;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->b:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_5
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/z;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/config/z;->a:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "6101"

    iget v10, p0, Lcom/arcsoft/hpay100/config/z;->d:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2
.end method
