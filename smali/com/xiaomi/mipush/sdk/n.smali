.class public final Lcom/xiaomi/mipush/sdk/n;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/xiaomi/mipush/sdk/n;

.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mipush/sdk/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private f:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/n;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/n;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->f:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/alipay/sdk/b/b;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/n;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/n;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->b:Lcom/xiaomi/mipush/sdk/n;

    return-object v0
.end method

.method private final a(Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/g;->g()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    .line 1000
    new-instance v0, Lcom/xiaomi/mipush/sdk/o;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/o;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/o;->a:Lorg/apache/thrift/b;

    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/o;->b:Lcom/xiaomi/xmpush/thrift/a;

    iput-boolean p3, v0, Lcom/xiaomi/mipush/sdk/o;->c:Z

    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    .line 0
    :goto_0
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 0
    :cond_1
    const-string v0, "drop the message before initialization."

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/n;->f()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;Z)Lcom/xiaomi/xmpush/thrift/h;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->a(Lorg/apache/thrift/b;)[B

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "send message fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x69

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaomi.xmsf"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2000
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    const-class v4, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 0
    :goto_0
    return-object v0

    .line 3000
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    const-class v4, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x6a

    if-lt v0, v1, :cond_0

    const-string v0, "com.xiaomi.push.service.XMPushService"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, "com.xiaomi.xmsf.push.service.XMPushService"

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/n;->f()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/j;Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->f:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/n;->f()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/h;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->a(Lorg/apache/thrift/b;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "register fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "mipush_session"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_env_chanage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "mipush_env_type"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/g;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/a/a/c/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->f:Landroid/content/Intent;

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/xmpush/thrift/q;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/n;->f()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->b:Lcom/xiaomi/xmpush/thrift/a;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/h;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->a(Lorg/apache/thrift/b;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "unregister fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public final a(Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;ZZ)V

    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/n;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/g;->k()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->f:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->f:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->f:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 6

    sget-object v1, Lcom/xiaomi/mipush/sdk/n;->e:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/o;

    iget-object v3, v0, Lcom/xiaomi/mipush/sdk/o;->a:Lorg/apache/thrift/b;

    iget-object v4, v0, Lcom/xiaomi/mipush/sdk/o;->b:Lcom/xiaomi/xmpush/thrift/a;

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/o;->c:Z

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/xiaomi/mipush/sdk/n;->a(Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;ZZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
