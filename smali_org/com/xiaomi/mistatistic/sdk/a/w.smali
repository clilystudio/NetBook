.class public final Lcom/xiaomi/mistatistic/sdk/a/w;
.super Ljava/lang/Object;


# static fields
.field private static b:Z


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/w;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/w;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/w;)V
    .locals 2

    .prologue
    .line 0
    .line 3000
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/z;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/z;-><init>(Lcom/xiaomi/mistatistic/sdk/a/w;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Lcom/xiaomi/mistatistic/sdk/a/j;)V

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/w;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 0
    .line 2000
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->b()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/a/d;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/a/y;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/a/y;-><init>(Lcom/xiaomi/mistatistic/sdk/a/w;)V

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/mistatistic/sdk/a/a/d;-><init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/a/a/e;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Lcom/xiaomi/mistatistic/sdk/a/j;)V

    .line 0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/w;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/a/w;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->a:J

    return-wide v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/w;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/w;->b:Z

    .line 1000
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Lcom/xiaomi/mistatistic/sdk/a/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/a/b;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/c;->a()Lcom/xiaomi/mistatistic/sdk/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/a/c;->e()J

    move-result-wide v2

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/a/x;

    invoke-direct {v4, p0}, Lcom/xiaomi/mistatistic/sdk/a/x;-><init>(Lcom/xiaomi/mistatistic/sdk/a/w;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/a/a/b;-><init>(JLcom/xiaomi/mistatistic/sdk/a/a/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Lcom/xiaomi/mistatistic/sdk/a/j;)V

    .line 0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/c;->a()Lcom/xiaomi/mistatistic/sdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/c;->c()V

    return-void
.end method
