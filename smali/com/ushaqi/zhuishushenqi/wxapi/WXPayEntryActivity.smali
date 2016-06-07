.class public Lcom/ushaqi/zhuishushenqi/wxapi/WXPayEntryActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/e/a/a/g/b;


# instance fields
.field private a:Lcom/e/a/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/e/a/a/d/b;)V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/y;

    iget v0, p1, Lcom/e/a/a/d/b;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 47
    iget v0, p1, Lcom/e/a/a/d/b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 61
    const-string v0, "charge_money_failed"

    const-string v1, "weixinpay"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "\u652f\u4ed8\u5931\u8d25\uff01"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/wxapi/WXPayEntryActivity;->finish()V

    .line 65
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :pswitch_0
    const-string v0, "\u652f\u4ed8\u6210\u529f\uff01"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 50
    const-string v0, "charge_complete"

    const-string v1, "weixinpay"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :pswitch_1
    const-string v0, "charge_money_failed"

    const-string v1, "weixinpay"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "\u7b7e\u540d\u9519\u8bef\uff01"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :pswitch_2
    const-string v0, "charge_money_cancel"

    const-string v1, "weixinpay"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "\u53d6\u6d88\u652f\u4ed8\uff01"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v0, "wx1e7c2477db57dc75"

    invoke-static {p0, v0}, Lcom/e/a/a/g/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/e/a/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/wxapi/WXPayEntryActivity;->a:Lcom/e/a/a/g/a;

    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/wxapi/WXPayEntryActivity;->a:Lcom/e/a/a/g/a;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/wxapi/WXPayEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/e/a/a/g/a;->a(Landroid/content/Intent;Lcom/e/a/a/g/b;)Z

    .line 31
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/wxapi/WXPayEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/wxapi/WXPayEntryActivity;->a:Lcom/e/a/a/g/a;

    invoke-interface {v0, p1, p0}, Lcom/e/a/a/g/a;->a(Landroid/content/Intent;Lcom/e/a/a/g/b;)Z

    .line 38
    return-void
.end method
