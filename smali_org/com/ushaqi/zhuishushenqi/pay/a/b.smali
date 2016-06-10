.class final Lcom/ushaqi/zhuishushenqi/pay/a/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/pay/a/a;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/pay/a/a;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 106
    :pswitch_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/pay/a/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/ushaqi/zhuishushenqi/pay/a/e;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/pay/a/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v2

    new-instance v3, Lcom/ushaqi/zhuishushenqi/event/y;

    const-string v4, "9000"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 112
    const-string v2, "9000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :try_start_0
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/pay/a/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "&sign_type="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 118
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, "&"

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    const-string v2, "sign"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB"

    invoke-static {v1, v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u7684\u8ba2\u5355\u4fe1\u606f\u5df2\u88ab\u975e\u6cd5\u7be1\u6539"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u7684\u8ba2\u5355\u4fe1\u606f\u5df2\u88ab\u975e\u6cd5\u7be1\u6539"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "charge_complete"

    const-string v2, "alipay"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_1
    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 146
    :cond_2
    const-string v1, "6001"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "charge_money_cancel"

    const-string v2, "alipay"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "charge_money_failed"

    const-string v2, "alipay"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/b;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u68c0\u67e5\u7ed3\u679c\u4e3a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
