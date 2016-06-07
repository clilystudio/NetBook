.class public final Lcom/alipay/b/e/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/b/e/a;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private volatile e:Z

.field private volatile f:Z

.field private g:Ljava/lang/Thread;

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/b/e/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/b/e/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/b/e/a;->e:Z

    iput-boolean v0, p0, Lcom/alipay/b/e/a;->f:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/b/e/a;->h:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/alipay/b/e/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/b/e/a;
    .locals 2

    sget-object v1, Lcom/alipay/b/e/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/b/e/a;->a:Lcom/alipay/b/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/b/e/a;

    invoke-direct {v0, p0}, Lcom/alipay/b/e/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/b/e/a;->a:Lcom/alipay/b/e/a;

    :cond_0
    sget-object v0, Lcom/alipay/b/e/a;->a:Lcom/alipay/b/e/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/b/e/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/b/e/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/b/e/a;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/b/e/a;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/b/e/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/b/e/a;->f:Z

    return p1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    :try_start_0
    const-string v0, "com.d.a.c.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getUtdid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/b/e/a;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/b/e/a;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/b/e/a;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/b/e/a;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/b/e/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/b/e/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/b/e/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/b/e/a;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/b/e/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/b/e/a;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/b/e/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/b/e/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/util/Map;Landroid/support/design/widget/K;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/support/design/widget/K;",
            ")V"
        }
    .end annotation

    const-string v0, "utdid"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "tid"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "userId"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/alipay/b/e/a;->h:Ljava/util/LinkedList;

    new-instance v0, Lcom/alipay/b/e/d;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/b/e/d;-><init>(Lcom/alipay/b/e/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/design/widget/K;)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/b/e/a;->g:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/b/e/b;

    invoke-direct {v1, p0}, Lcom/alipay/b/e/b;-><init>(Lcom/alipay/b/e/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alipay/b/e/a;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/b/e/a;->g:Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/b/e/c;

    invoke-direct {v1, p0}, Lcom/alipay/b/e/c;-><init>(Lcom/alipay/b/e/a;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/alipay/b/e/a;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
