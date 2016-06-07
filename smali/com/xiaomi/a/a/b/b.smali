.class public final Lcom/xiaomi/a/a/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/a/a/b/c;

.field private b:Landroid/os/Handler;

.field private volatile c:Z

.field private final d:Z

.field private volatile e:Lcom/xiaomi/a/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/a/a/b/b;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/a/a/b/b;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/a/a/b/b;->c:Z

    new-instance v0, Lcom/xiaomi/a/a/b/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/a/a/b/e;-><init>(Lcom/xiaomi/a/a/b/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/b/b;->b:Landroid/os/Handler;

    iput-boolean p1, p0, Lcom/xiaomi/a/a/b/b;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/b/b;Lcom/xiaomi/a/a/b/d;)Lcom/xiaomi/a/a/b/d;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/b/b;->e:Lcom/xiaomi/a/a/b/d;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/a/a/b/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/a/a/b/b;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/a/a/b/b;)Lcom/xiaomi/a/a/b/d;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/b/b;->e:Lcom/xiaomi/a/a/b/d;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/a/a/b/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/b/b;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/xiaomi/a/a/b/d;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/a/a/b/b;->a:Lcom/xiaomi/a/a/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/a/a/b/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/b/c;-><init>(Lcom/xiaomi/a/a/b/b;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/b/b;->a:Lcom/xiaomi/a/a/b/c;

    iget-object v0, p0, Lcom/xiaomi/a/a/b/b;->a:Lcom/xiaomi/a/a/b/c;

    iget-boolean v1, p0, Lcom/xiaomi/a/a/b/b;->d:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/b/c;->setDaemon(Z)V

    iget-object v0, p0, Lcom/xiaomi/a/a/b/b;->a:Lcom/xiaomi/a/a/b/c;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/b/c;->start()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/a/b/b;->a:Lcom/xiaomi/a/a/b/c;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/b/c;->a(Lcom/xiaomi/a/a/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/xiaomi/a/a/b/d;J)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/a/a/b/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/a/a/b/f;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/a/a/b/f;-><init>(Lcom/xiaomi/a/a/b/b;Lcom/xiaomi/a/a/b/d;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
