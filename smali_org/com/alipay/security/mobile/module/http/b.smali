.class public final Lcom/alipay/security/mobile/module/http/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/security/mobile/module/http/a;


# static fields
.field private static e:Lcom/alipay/security/mobile/module/http/b;

.field private static f:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;


# instance fields
.field a:Lcom/alipay/tscenter/biz/rpc/vkeydfp/b;

.field private b:Lcom/alipay/android/phone/mrpc/core/A;

.field private c:Lcom/alipay/tscenter/biz/rpc/a/a;

.field private d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/security/mobile/module/http/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/android/phone/mrpc/core/A;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->c:Lcom/alipay/tscenter/biz/rpc/a/a;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->a:Lcom/alipay/tscenter/biz/rpc/vkeydfp/b;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/a;

    :try_start_0
    new-instance v1, Lcom/alipay/android/phone/mrpc/core/b;

    invoke-direct {v1}, Lcom/alipay/android/phone/mrpc/core/b;-><init>()V

    sget-object v0, Lcom/alipay/security/mobile/module/http/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mrpc/core/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/m;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mrpc/core/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/android/phone/mrpc/core/A;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/android/phone/mrpc/core/A;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/a/a;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/A;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/a/a;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->c:Lcom/alipay/tscenter/biz/rpc/a/a;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/android/phone/mrpc/core/A;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/b;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/A;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/b;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->a:Lcom/alipay/tscenter/biz/rpc/vkeydfp/b;

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->b:Lcom/alipay/android/phone/mrpc/core/A;

    const-class v2, Lcom/alipay/tscenter/biz/rpc/vkeydfp/a;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mrpc/core/A;->a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/a;

    iput-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/b;
    .locals 2

    const-class v1, Lcom/alipay/security/mobile/module/http/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/security/mobile/module/http/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/security/mobile/module/http/b;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/module/http/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/security/mobile/module/http/b;

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/b;->e:Lcom/alipay/security/mobile/module/http/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/http/b;->f:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 0

    sput-object p0, Lcom/alipay/security/mobile/module/http/b;->f:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListResult;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;-><init>()V

    iput-object p1, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->os:Ljava/lang/String;

    iput-object p4, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->apdid:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->userId:Ljava/lang/String;

    iput-object p3, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/AppListCmdRequest;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/b;->d:Lcom/alipay/tscenter/biz/rpc/vkeydfp/a;

    invoke-interface {v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/a;->a()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/AppListCmdResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
    .locals 4

    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->a:Lcom/alipay/tscenter/biz/rpc/vkeydfp/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/security/mobile/module/http/b;->f:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/security/mobile/module/http/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/security/mobile/module/http/c;-><init>(Lcom/alipay/security/mobile/module/http/b;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_0
    sget-object v1, Lcom/alipay/security/mobile/module/http/b;->f:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x32

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/b;->f:Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/b;->c:Lcom/alipay/tscenter/biz/rpc/a/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/security/mobile/module/http/b;->c:Lcom/alipay/tscenter/biz/rpc/a/a;

    invoke-static {p1}, Landroid/support/design/widget/am;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v2}, Lcom/alipay/tscenter/biz/rpc/a/a;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method
