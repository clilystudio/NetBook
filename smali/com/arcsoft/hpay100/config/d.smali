.class final Lcom/arcsoft/hpay100/config/d;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.happy.pay100.smssend"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/config/d;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "dalongTest"

    const-string v1, "send sms ok:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->a()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->b()Lcom/arcsoft/hpay100/config/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->b()Lcom/arcsoft/hpay100/config/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/arcsoft/hpay100/config/f;->a(I)V

    :cond_0
    invoke-static {v2}, Lcom/arcsoft/hpay100/config/c;->a(Lcom/arcsoft/hpay100/config/f;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "dalongTest"

    const-string v1, "send sms error:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->a()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->b()Lcom/arcsoft/hpay100/config/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->b()Lcom/arcsoft/hpay100/config/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/arcsoft/hpay100/config/f;->a(I)V

    :cond_3
    invoke-static {v2}, Lcom/arcsoft/hpay100/config/c;->a(Lcom/arcsoft/hpay100/config/f;)V

    goto :goto_0
.end method
