.class public final Lcom/alipay/sdk/util/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static b:Ljava/lang/Object;

.field private static c:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v2, 0x5

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/alipay/sdk/util/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/sdk/util/b;->b:Ljava/lang/Object;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "https://mclient.alipay.com/sdkErrorlog.do"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/util/b;->c:Lorg/apache/http/client/methods/HttpPost;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/alipay/sdk/util/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/alipay/sdk/util/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/sdk/util/c;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/util/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b()Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    sget-object v0, Lcom/alipay/sdk/util/b;->c:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method
