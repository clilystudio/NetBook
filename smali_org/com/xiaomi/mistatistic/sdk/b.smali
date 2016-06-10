.class public abstract Lcom/xiaomi/mistatistic/sdk/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->a:Z

    return-void
.end method

.method public static final a()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/t;->a()V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->e()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/A;->a()Lcom/xiaomi/mistatistic/sdk/a/A;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/A;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/a/a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Lcom/xiaomi/mistatistic/sdk/a/j;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appID or appKey is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/n;->a()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/l;-><init>()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/l;->a()Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/c;->a()Lcom/xiaomi/mistatistic/sdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/c;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->a:Z

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    .line 1000
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->e()V

    .line 2000
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mistat_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic_info_reported"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "mistat_default"

    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/mistatistic/sdk/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    .line 0
    :cond_3
    return-void
.end method

.method public static final b()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->e()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/A;->a()Lcom/xiaomi/mistatistic/sdk/a/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/A;->b()V

    return-void
.end method

.method public static c()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->c()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/d;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/b;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized, do you forget to call initialize when application started?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
