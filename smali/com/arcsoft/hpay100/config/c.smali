.class public final Lcom/arcsoft/hpay100/config/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/arcsoft/hpay100/config/f;

.field private static b:Ljava/lang/Runnable;

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->b:Ljava/lang/Runnable;

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->c:Landroid/os/Handler;

    new-instance v0, Lcom/arcsoft/hpay100/config/d;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/config/d;-><init>()V

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->c()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/arcsoft/hpay100/config/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/f;)V
    .locals 8

    .prologue
    .line 0
    const-string v0, "dalongTest"

    const-string v1, "sendSMS:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p3, Lcom/arcsoft/hpay100/config/c;->a:Lcom/arcsoft/hpay100/config/f;

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->c()V

    .line 1000
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.happy.pay100.smssend"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.happy.pay100.smsresult"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/arcsoft/hpay100/config/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.happy.pay100.smssend"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.happy.pay100.smsresult"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x46

    if-le v1, v2, :cond_1

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :goto_2
    new-instance v0, Lcom/arcsoft/hpay100/config/e;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/config/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->b:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->c:Landroid/os/Handler;

    sget-object v1, Lcom/arcsoft/hpay100/config/c;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1000
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 0
    :cond_0
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "sms address:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "sms content:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    :try_start_3
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms address--:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sms content--:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/config/f;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->a:Lcom/arcsoft/hpay100/config/f;

    return-void
.end method

.method static synthetic b()Lcom/arcsoft/hpay100/config/f;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->a:Lcom/arcsoft/hpay100/config/f;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 0
    .line 2000
    const-string v0, "dalongTest"

    const-string v1, "onSmsTimeout:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/config/c;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->c()V

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->a:Lcom/arcsoft/hpay100/config/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->a:Lcom/arcsoft/hpay100/config/f;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/arcsoft/hpay100/config/f;->a(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->a:Lcom/arcsoft/hpay100/config/f;

    .line 0
    :cond_0
    return-void
.end method

.method private static c()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/arcsoft/hpay100/config/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->c:Landroid/os/Handler;

    sget-object v1, Lcom/arcsoft/hpay100/config/c;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->b:Ljava/lang/Runnable;
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

.method private static c(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/arcsoft/hpay100/config/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
