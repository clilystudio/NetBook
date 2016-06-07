.class public final Lcom/xiaomi/mistatistic/sdk/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v1

    const-string v0, "basic_info_reported"

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1000
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/d;

    const-string v2, "mistat_basic"

    const-string v3, "new"

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/f;

    const-string v2, "mistat_basic"

    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/f;

    const-string v2, "mistat_basic"

    const-string v3, "OS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b/f;

    const-string v3, "mistat_basic"

    const-string v4, "operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    :cond_0
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b/f;

    const-string v3, "mistat_basic"

    const-string v4, "IMEI"

    invoke-direct {v2, v3, v4, v0}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b/f;

    const-string v3, "mistat_basic"

    const-string v4, "resolution"

    invoke-direct {v2, v3, v4, v0}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b/f;

    const-string v3, "mistat_basic"

    const-string v4, "locale"

    invoke-direct {v2, v3, v4, v0}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    .line 0
    const-string v0, "basic_info_reported"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->a()V

    :cond_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "basic_info_version"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b/d;

    const-string v3, "mistat_basic"

    const-string v4, "upgrade"

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    :cond_4
    const-string v2, "basic_info_version"

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1000
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
