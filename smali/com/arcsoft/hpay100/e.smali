.class final Lcom/arcsoft/hpay100/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/k;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/arcsoft/hpay100/y;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/arcsoft/hpay100/y;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    iput v1, p0, Lcom/arcsoft/hpay100/e;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/e;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/e;->g:I

    iput-object v2, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    iput-object p1, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    iput p2, p0, Lcom/arcsoft/hpay100/e;->b:I

    iput-object p3, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    iput p5, p0, Lcom/arcsoft/hpay100/e;->e:I

    iput-object p6, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iput p7, p0, Lcom/arcsoft/hpay100/e;->g:I

    iput-object p8, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 14

    const/16 v13, 0x17da

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/e;->g:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/e;->e:I

    const-string v8, "2"

    const-string v9, "4001"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/e;->e:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/e;->b:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    move v5, v13

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/e;->g:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/e;->e:I

    const-string v8, "2"

    const-string v9, "4002"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/e;->e:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/e;->b:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    move v5, v13

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v12, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/e;->g:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/e;->e:I

    const-string v8, "2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    :goto_2
    iget v0, p0, Lcom/arcsoft/hpay100/e;->e:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/e;->b:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    move v5, v12

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "res"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/e;->g:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/e;->e:I

    const-string v8, "2"

    const-string v9, "4003"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/e;->e:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/e;->b:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    move v5, v13

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v1, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"

    invoke-static {v0, v1}, Landroid/support/v7/app/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v11, v0

    :goto_3
    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resdes:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/e;->g:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/e;->e:I

    const-string v8, "2"

    const-string v9, "4004"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/e;->e:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/e;->b:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    move v5, v13

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    move-object v11, v0

    goto :goto_3

    :cond_5
    invoke-static {v11}, Lcom/arcsoft/hpay100/config/a;->a(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v12

    if-nez v12, :cond_6

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/e;->g:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/e;->e:I

    const-string v8, "2"

    const-string v9, "4005"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/e;->e:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/e;->b:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    move v5, v13

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->c:Ljava/lang/String;

    iput-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->f:Ljava/lang/String;

    iput-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->d:Ljava/lang/String;

    iput-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget v3, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget v7, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/e;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    iget-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOpenUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget v3, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget v7, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "4006"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v12, v13, v0}, Lcom/arcsoft/hpay100/config/a;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-static {v0, v12, v11, v1}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/y;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mFeeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget v3, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget v7, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "4006"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v12, v13, v0}, Lcom/arcsoft/hpay100/config/a;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/z;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-static {v0, v12, v11, v1}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/y;)V

    goto/16 :goto_0

    :cond_a
    iget v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-static {v0, v12, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;)V

    goto/16 :goto_0

    :cond_b
    sget v0, Lcom/arcsoft/hpay100/config/l;->h:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/arcsoft/hpay100/e;->g:I

    iget-object v2, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-static {v0, v1, v12, v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->a(Landroid/app/Activity;ILcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/arcsoft/hpay100/e;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/e;->h:Lcom/arcsoft/hpay100/y;

    invoke-static {v0, v12, v1, v10}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;I)V

    goto/16 :goto_0

    :cond_d
    move-object v6, v11

    goto/16 :goto_2
.end method
