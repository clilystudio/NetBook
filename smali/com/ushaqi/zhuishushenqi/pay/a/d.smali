.class final Lcom/ushaqi/zhuishushenqi/pay/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/pay/a/c;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/pay/a/c;Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/a/d;->b:Lcom/ushaqi/zhuishushenqi/pay/a/c;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/pay/a/d;->a:Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 79
    new-instance v1, Lcom/alipay/sdk/app/PayTask;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/d;->b:Lcom/ushaqi/zhuishushenqi/pay/a/c;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/pay/a/c;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/d;->a:Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->getPayOrder()Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;->getPayString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 84
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 85
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/d;->b:Lcom/ushaqi/zhuishushenqi/pay/a/c;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/pay/a/c;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->b(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void
.end method
