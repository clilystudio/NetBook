.class public final Lcom/xiaomi/kenai/jbosh/J;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/J;->a:Ljava/net/URI;

    iput-object p2, p0, Lcom/xiaomi/kenai/jbosh/J;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/net/URI;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/J;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection manager URI must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target domain must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only \'http\' and \'https\' URI are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/xiaomi/kenai/jbosh/J;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/kenai/jbosh/J;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/xiaomi/kenai/jbosh/I;
    .locals 11

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, "en"

    new-instance v0, Lcom/xiaomi/kenai/jbosh/I;

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/J;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/J;->b:Ljava/lang/String;

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    move v9, v7

    move v10, v7

    invoke-direct/range {v0 .. v10}, Lcom/xiaomi/kenai/jbosh/I;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/net/ssl/SSLContext;ZB)V

    return-object v0
.end method
