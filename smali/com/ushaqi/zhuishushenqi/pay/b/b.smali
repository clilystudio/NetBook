.class Lcom/ushaqi/zhuishushenqi/pay/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/arcsoft/hpay100/y;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/pay/b/a;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/pay/b/a;)V
    .locals 0

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/b/b;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/pay/b/a;B)V
    .locals 0

    .prologue
    .line 2119
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/pay/b/b;-><init>(Lcom/ushaqi/zhuishushenqi/pay/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/arcsoft/hpay100/z;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1122
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v2

    new-instance v3, Lcom/ushaqi/zhuishushenqi/event/y;

    invoke-virtual {p1}, Lcom/arcsoft/hpay100/z;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {v3, v0}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1124
    invoke-virtual {p1}, Lcom/arcsoft/hpay100/z;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1154
    :cond_0
    :goto_1
    return-void

    .line 1122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1127
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/b;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u8ba2\u5355\u63d0\u4ea4\u6210\u529f"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/b;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "charge_complete"

    const-string v2, "youyifupay"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1136
    :pswitch_1
    invoke-virtual {p1}, Lcom/arcsoft/hpay100/z;->b()Z

    move-result v0

    .line 1137
    if-nez v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/b;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "charge_money_failed"

    const-string v3, "youyifupay"

    invoke-static {v0, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string v0, "\u975e\u5e38\u62b1\u6b49\uff0c\u60a8\u7684\u624b\u673a\u53f7\u6240\u5728\u5730\u533a\u6682\u4e0d\u652f\u6301\u8bdd\u8d39\u5145\u503c\uff0c\u8bf7\u60a8\u9009\u62e9\u5176\u4ed6\u5145\u503c\u65b9\u5f0f\uff01"

    .line 1144
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/pay/b/b;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1149
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/b;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "charge_money_cancel"

    const-string v3, "youyifupay"

    invoke-static {v0, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/b;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
