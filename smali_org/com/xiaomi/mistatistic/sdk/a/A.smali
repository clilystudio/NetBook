.class public final Lcom/xiaomi/mistatistic/sdk/a/A;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/a/A;

.field private static c:J


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/B;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/a/B;-><init>(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/a/A;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/A;->a:Lcom/xiaomi/mistatistic/sdk/a/A;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/A;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/A;->a:Lcom/xiaomi/mistatistic/sdk/a/A;

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/A;->a:Lcom/xiaomi/mistatistic/sdk/a/A;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/A;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 0
    .line 3000
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 0
    :goto_0
    return-object p2

    .line 3000
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/content/Context;JJ)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 0
    .line 1000
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, "NULL"

    :cond_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/h;

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/b/h;-><init>(JJLjava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "session_begin"

    invoke-static {v0, v1, v8, v9}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_deactivate"

    invoke-static {v0, v1, v8, v9}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;J)V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    .line 2000
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/g;

    invoke-direct {v0, p2}, Lcom/xiaomi/mistatistic/sdk/b/g;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Lcom/xiaomi/mistatistic/sdk/b/b;)V

    const-string v0, "pv_path"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic c()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:J

    return-wide v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->b:Landroid/os/Handler;

    const v1, 0x1df5e77

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/C;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/C;-><init>(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Lcom/xiaomi/mistatistic/sdk/a/j;)V

    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/b;-><init>(Lcom/xiaomi/mistatistic/sdk/a/A;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Lcom/xiaomi/mistatistic/sdk/a/j;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->b:Landroid/os/Handler;

    const v1, 0x1df5e77

    sget-wide v2, Lcom/xiaomi/mistatistic/sdk/a/A;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
