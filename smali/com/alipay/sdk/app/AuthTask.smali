.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/sdk/util/d;

    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/alipay/sdk/g/a;

    invoke-direct {v0, p1}, Lcom/alipay/sdk/g/a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/alipay/sdk/g/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/alipay/sdk/e/b;->a()Lcom/alipay/sdk/e/b;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/b/d;->a()Lcom/alipay/sdk/b/d;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/sdk/e/b;->a(Landroid/content/Context;Lcom/alipay/sdk/b/d;)V

    new-instance v3, Lcom/alipay/sdk/b/c;

    invoke-direct {v3}, Lcom/alipay/sdk/b/c;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/alipay/sdk/b/b;->a(Lcom/alipay/sdk/b/c;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/b/e;

    move-result-object v3

    iget-object v4, v3, Lcom/alipay/sdk/b/e;->a:Lcom/alipay/sdk/b/a;

    const-string v5, "com.alipay.mobilecashier"

    iput-object v5, v4, Lcom/alipay/sdk/b/a;->b:Ljava/lang/String;

    iget-object v4, v3, Lcom/alipay/sdk/b/e;->a:Lcom/alipay/sdk/b/a;

    const-string v5, "com.alipay.mcpay"

    iput-object v5, v4, Lcom/alipay/sdk/b/a;->e:Ljava/lang/String;

    iget-object v4, v3, Lcom/alipay/sdk/b/e;->a:Lcom/alipay/sdk/b/a;

    const-string v5, "4.0.3"

    iput-object v5, v4, Lcom/alipay/sdk/b/a;->d:Ljava/lang/String;

    iget-object v4, v3, Lcom/alipay/sdk/b/e;->a:Lcom/alipay/sdk/b/a;

    const-string v5, "/cashier/main"

    iput-object v5, v4, Lcom/alipay/sdk/b/a;->c:Ljava/lang/String;

    new-instance v4, Lcom/alipay/sdk/d/c;

    new-instance v5, Lcom/alipay/sdk/b/c;

    invoke-direct {v5}, Lcom/alipay/sdk/b/c;-><init>()V

    invoke-direct {v4, v5}, Lcom/alipay/sdk/d/c;-><init>(Lcom/alipay/sdk/b/c;)V

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, p1, v3, v5}, Lcom/alipay/sdk/d/c;->a(Landroid/content/Context;Lcom/alipay/sdk/b/e;Z)Lcom/alipay/sdk/protocol/c;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/sdk/g/a;->c()V

    move-object v0, v1

    :cond_0
    iget-object v3, v3, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    const-string v4, "form"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "onload"

    invoke-static {v3, v4}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/b;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/protocol/a;->a(Lcom/alipay/sdk/protocol/b;)[Lcom/alipay/sdk/protocol/a;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    sget-object v6, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    if-ne v5, v6, :cond_1

    invoke-direct {p0, v5}, Lcom/alipay/sdk/app/AuthTask;->a(Lcom/alipay/sdk/protocol/a;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/sdk/app/m;->b:Lcom/alipay/sdk/app/m;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/m;->a(I)Lcom/alipay/sdk/app/m;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/o;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    sget-object v1, Lcom/alipay/sdk/app/m;->d:Lcom/alipay/sdk/app/m;

    invoke-virtual {v1}, Lcom/alipay/sdk/app/m;->a()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/sdk/app/m;->a(I)Lcom/alipay/sdk/app/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/sdk/g/a;->c()V

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v2

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/sdk/g/a;->c()V

    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alipay/sdk/g/a;->c()V

    :cond_4
    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/alipay/sdk/protocol/a;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object v0, Lcom/alipay/sdk/app/o;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/sdk/app/o;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/sdk/app/o;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.eg.android.AlipayGphone"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x49

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized auth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "bizcontext="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&bizcontext=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/alipay/sdk/e/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/sdk/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/sdk/e/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/sdk/util/d;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/util/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/util/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "failed"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/sdk/app/o;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
