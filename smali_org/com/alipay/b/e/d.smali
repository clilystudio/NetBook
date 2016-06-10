.class final Lcom/alipay/b/e/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/support/design/widget/K;

.field private synthetic f:Lcom/alipay/b/e/a;


# direct methods
.method public constructor <init>(Lcom/alipay/b/e/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/design/widget/K;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alipay/b/e/d;->a:I

    iput-object p5, p0, Lcom/alipay/b/e/d;->d:Ljava/lang/String;

    invoke-static {p3}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/b/e/a;->c(Lcom/alipay/b/e/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/b/e/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/b/e/d;->b:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/alipay/b/e/d;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/b/e/d;->e:Landroid/support/design/widget/K;

    return-void

    :cond_0
    iput-object p3, p0, Lcom/alipay/b/e/d;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v1}, Lcom/alipay/b/e/a;->d(Lcom/alipay/b/e/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v1, v0}, Lcom/alipay/b/e/a;->a(Lcom/alipay/b/e/a;Z)Z

    iget v1, p0, Lcom/alipay/b/e/d;->a:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v1, Lcom/alipay/b/b/a;->a:Ljava/lang/String;

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/b/e/a;->b(Lcom/alipay/b/e/a;Z)Z

    iget v1, p0, Lcom/alipay/b/e/d;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v1}, Lcom/alipay/b/e/a;->c(Lcom/alipay/b/e/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/b/e/e;

    invoke-direct {v4, p0}, Lcom/alipay/b/e/e;-><init>(Lcom/alipay/b/e/d;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/taobao/dp/DeviceSecuritySDK;->initAsync(Ljava/lang/String;ILcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;)V

    const/16 v0, 0xbb8

    :goto_3
    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v1}, Lcom/alipay/b/e/a;->e(Lcom/alipay/b/e/a;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0xa

    goto :goto_3

    :pswitch_0
    const-string v1, "http://mobilegw.stable.alipay.net/mgw.htm"

    sput-object v1, Lcom/alipay/b/b/a;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v1, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v1, Lcom/alipay/b/b/a;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v1, "http://mobilegw-1-64.test.alipay.net/mgw.htm"

    sput-object v1, Lcom/alipay/b/b/a;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->c(Lcom/alipay/b/e/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v1, v0}, Lcom/alipay/b/e/a;->a(Lcom/alipay/b/e/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_4
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enable"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tid"

    iget-object v2, p0, Lcom/alipay/b/e/d;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utdid"

    iget-object v2, p0, Lcom/alipay/b/e/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "umid"

    iget-object v2, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v2}, Lcom/alipay/b/e/a;->f(Lcom/alipay/b/e/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/alipay/b/e/d;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v1}, Lcom/alipay/b/e/a;->c(Lcom/alipay/b/e/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/b/e/d;->e:Landroid/support/design/widget/K;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/alipay/b/e/f;

    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-direct {v0, v1}, Lcom/alipay/b/e/f;-><init>(Lcom/alipay/b/e/a;)V

    iget-object v0, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->c(Lcom/alipay/b/e/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/b/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->c(Lcom/alipay/b/e/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->f(Lcom/alipay/b/e/a;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->c(Lcom/alipay/b/e/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v0, v5}, Lcom/alipay/b/e/a;->a(Lcom/alipay/b/e/a;Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v0, v5}, Lcom/alipay/b/e/a;->a(Lcom/alipay/b/e/a;Z)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/b/e/d;->f:Lcom/alipay/b/e/a;

    invoke-static {v1, v5}, Lcom/alipay/b/e/a;->a(Lcom/alipay/b/e/a;Z)Z

    throw v0

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
