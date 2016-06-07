.class public final Lcom/xiaomi/network/i;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/xiaomi/network/i;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/network/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Random;

.field private c:Ljava/util/Timer;

.field private d:Z

.field private f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/network/i;->a:Ljava/util/List;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/network/i;->b:Ljava/util/Random;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Upload Http Record Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/network/i;->c:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/network/i;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/network/i;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/network/i;->f:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xiaomi/network/i;
    .locals 2

    const-class v0, Lcom/xiaomi/network/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/network/i;->e:Lcom/xiaomi/network/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/network/i;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v0, "%1$032X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/xiaomi/network/i;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/network/i;->a:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/xiaomi/network/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/network/i;->e:Lcom/xiaomi/network/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/network/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/network/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/network/i;->e:Lcom/xiaomi/network/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/network/i;Ljava/util/List;D)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 0
    .line 1000
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/common/logger/thrift/mfs/b;

    new-instance v2, Lcom/xiaomi/common/logger/thrift/mfs/c;

    invoke-direct {v2}, Lcom/xiaomi/common/logger/thrift/mfs/c;-><init>()V

    const-string v3, "httpapi"

    invoke-virtual {v2, v3}, Lcom/xiaomi/common/logger/thrift/mfs/c;->a(Ljava/lang/String;)Lcom/xiaomi/common/logger/thrift/mfs/c;

    invoke-virtual {v2, v0}, Lcom/xiaomi/common/logger/thrift/mfs/c;->a(Lcom/xiaomi/common/logger/thrift/mfs/b;)Lcom/xiaomi/common/logger/thrift/mfs/c;

    new-instance v0, Lcom/xiaomi/common/logger/thrift/a;

    invoke-direct {v0}, Lcom/xiaomi/common/logger/thrift/a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/xiaomi/common/logger/thrift/mfs/c;->a(Lcom/xiaomi/common/logger/thrift/a;)Lcom/xiaomi/common/logger/thrift/mfs/c;

    new-instance v0, Ljava/lang/String;

    new-instance v3, Lorg/apache/thrift/g;

    new-instance v4, Lorg/apache/thrift/protocol/b$a;

    invoke-direct {v4}, Lorg/apache/thrift/protocol/b$a;-><init>()V

    invoke-direct {v3, v4}, Lorg/apache/thrift/g;-><init>(Lorg/apache/thrift/protocol/h;)V

    invoke-virtual {v3, v2}, Lorg/apache/thrift/g;->a(Lorg/apache/thrift/b;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/network/b;->a([B)[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    iget-object v2, p0, Lcom/xiaomi/network/i;->b:Ljava/util/Random;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, p2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    :try_start_0
    const-string v2, "f3.mi-stat.gslb.mi-idc.com"

    .line 2000
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "n"

    invoke-direct {v6, v7, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "d"

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "t"

    invoke-direct {v6, v7, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "s"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "56C6A520%$C99119A0&^229(!@2746C7"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/network/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "http://%1$s/diagnoses/v1/report"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/network/i;->f:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/xiaomi/network/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1000
    :catch_0
    move-exception v0

    const-string v2, "uploadhoststat"

    invoke-static {v2, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "uploadhoststat"

    invoke-static {v2, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 0
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/network/i;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/network/i;->d:Z

    return v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/network/j;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/network/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/network/i;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/network/i;->d:Z

    iget-object v0, p0, Lcom/xiaomi/network/i;->c:Ljava/util/Timer;

    new-instance v1, Lcom/xiaomi/network/m;

    invoke-direct {v1, p0}, Lcom/xiaomi/network/m;-><init>(Lcom/xiaomi/network/i;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method
