.class public final Lcom/xiaomi/kenai/jbosh/F;
.super Ljava/lang/Object;


# static fields
.field private static synthetic A:Z

.field private static final a:I

.field private static final b:I

.field private static final c:Z


# instance fields
.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/kenai/jbosh/K;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/kenai/jbosh/L;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/xiaomi/kenai/jbosh/M;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/locks/ReentrantLock;

.field private final h:Ljava/util/concurrent/locks/Condition;

.field private final i:Ljava/util/concurrent/locks/Condition;

.field private final j:Ljava/util/concurrent/locks/Condition;

.field private k:J

.field private final l:Lcom/xiaomi/kenai/jbosh/I;

.field private final m:Ljava/lang/Runnable;

.field private final n:Lcom/xiaomi/kenai/jbosh/l;

.field private final o:Lcom/xiaomi/kenai/jbosh/m;

.field private final p:Ljava/util/concurrent/ScheduledExecutorService;

.field private q:Ljava/util/concurrent/ThreadPoolExecutor;

.field private r:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private s:Lcom/xiaomi/kenai/jbosh/g;

.field private t:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/xiaomi/kenai/jbosh/j;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Long;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/kenai/jbosh/h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile x:J

.field private volatile y:J

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/xiaomi/kenai/jbosh/F;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/xiaomi/kenai/jbosh/F;->A:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/xiaomi/kenai/jbosh/F;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".emptyRequestDelay"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x64

    invoke-static {v0, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/xiaomi/kenai/jbosh/F;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/xiaomi/kenai/jbosh/F;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".pauseMargin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f4

    invoke-static {v0, v3}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/xiaomi/kenai/jbosh/F;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/xiaomi/kenai/jbosh/F;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".assertionsEnabled"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    sget-boolean v0, Lcom/xiaomi/kenai/jbosh/F;->A:Z

    if-nez v0, :cond_2

    :goto_1
    sput-boolean v1, Lcom/xiaomi/kenai/jbosh/F;->c:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private constructor <init>(Lcom/xiaomi/kenai/jbosh/I;Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->h:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->i:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->j:Ljava/util/concurrent/locks/Condition;

    iput-wide v2, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J

    new-instance v0, Lcom/xiaomi/kenai/jbosh/G;

    invoke-direct {v0, p0}, Lcom/xiaomi/kenai/jbosh/G;-><init>(Lcom/xiaomi/kenai/jbosh/F;)V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->m:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/kenai/jbosh/l;

    invoke-direct {v0}, Lcom/xiaomi/kenai/jbosh/l;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->n:Lcom/xiaomi/kenai/jbosh/l;

    new-instance v0, Lcom/xiaomi/kenai/jbosh/m;

    invoke-direct {v0}, Lcom/xiaomi/kenai/jbosh/m;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->o:Lcom/xiaomi/kenai/jbosh/m;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->p:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->u:Ljava/util/SortedSet;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->v:Ljava/lang/Long;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->w:Ljava/util/List;

    iput-wide v2, p0, Lcom/xiaomi/kenai/jbosh/F;->x:J

    iput-wide v2, p0, Lcom/xiaomi/kenai/jbosh/F;->y:J

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/F;->l:Lcom/xiaomi/kenai/jbosh/I;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->z:Landroid/content/Context;

    .line 1000
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->n:Lcom/xiaomi/kenai/jbosh/l;

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->l:Lcom/xiaomi/kenai/jbosh/I;

    invoke-virtual {v0, v1}, Lcom/xiaomi/kenai/jbosh/l;->a(Lcom/xiaomi/kenai/jbosh/I;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/kenai/jbosh/F;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/kenai/jbosh/F;->y:J

    return-wide p1
.end method

.method public static a(Lcom/xiaomi/kenai/jbosh/I;Landroid/content/Context;)Lcom/xiaomi/kenai/jbosh/F;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Client configuration may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/kenai/jbosh/F;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/kenai/jbosh/F;-><init>(Lcom/xiaomi/kenai/jbosh/I;Landroid/content/Context;)V

    return-object v0
.end method

.method private a(J)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Empty request delay must be >= 0 (was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->f()V

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMACK-BOSH: Scheduling empty request in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->p:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->m:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->r:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMACK-BOSH: Could not schedule empty request"

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/kenai/jbosh/F;)V
    .locals 1

    .prologue
    .line 0
    .line 14000
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/kenai/jbosh/h;->a()Lcom/xiaomi/kenai/jbosh/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/i;->a()Lcom/xiaomi/kenai/jbosh/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/h;)V
    :try_end_0
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/xiaomi/kenai/jbosh/j;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/xiaomi/kenai/jbosh/H;

    invoke-direct {v1, p0}, Lcom/xiaomi/kenai/jbosh/H;-><init>(Lcom/xiaomi/kenai/jbosh/F;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/p;)V
    .locals 6

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/g;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->k:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p2, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->b:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p2, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->m:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/p;

    sget-object v3, Lcom/xiaomi/kenai/jbosh/E;->m:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {v0, v3}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_2

    .line 9000
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/K;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/kenai/jbosh/w;->b(Lcom/xiaomi/kenai/jbosh/F;)Lcom/xiaomi/kenai/jbosh/w;

    move-result-object v1

    :cond_1
    :try_start_2
    invoke-interface {v0, v1}, Lcom/xiaomi/kenai/jbosh/K;->a(Lcom/xiaomi/kenai/jbosh/w;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "SMACK-BOSH:Unhandled Exception"

    invoke-static {v3, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 0
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 10000
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/K;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->w:Ljava/util/List;

    invoke-static {p0, v1, p1}, Lcom/xiaomi/kenai/jbosh/w;->a(Lcom/xiaomi/kenai/jbosh/F;Ljava/util/List;Ljava/lang/Throwable;)Lcom/xiaomi/kenai/jbosh/w;

    move-result-object v1

    :cond_3
    :try_start_3
    invoke-interface {v0, v1}, Lcom/xiaomi/kenai/jbosh/K;->a(Lcom/xiaomi/kenai/jbosh/w;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "SMACK-BOSH:Unhandled Exception"

    invoke-static {v3, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 0
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_4
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->u:Ljava/util/SortedSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->w:Ljava/util/List;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->n:Lcom/xiaomi/kenai/jbosh/l;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/l;->a()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static a(Lcom/xiaomi/kenai/jbosh/p;)Z
    .locals 2

    const-string v0, "terminate"

    sget-object v1, Lcom/xiaomi/kenai/jbosh/E;->r:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p0, v1}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/xiaomi/kenai/jbosh/p;)J
    .locals 6

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/g;->e()Lcom/xiaomi/kenai/jbosh/x;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->i:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/y;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11000
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/y;->b()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 0
    sget v1, Lcom/xiaomi/kenai/jbosh/F;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    sget v0, Lcom/xiaomi/kenai/jbosh/F;->a:I
    :try_end_0
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "SMACK-BOSH: Could not extract"

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12000
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/g;->d()Lcom/xiaomi/kenai/jbosh/z;

    move-result-object v0

    sget v1, Lcom/xiaomi/kenai/jbosh/F;->a:I

    int-to-long v2, v1

    if-eqz v0, :cond_2

    .line 13000
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/z;->b()I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 12000
    int-to-long v0, v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/kenai/jbosh/F;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/kenai/jbosh/F;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    return-object v0
.end method

.method private c(Lcom/xiaomi/kenai/jbosh/p;)V
    .locals 6

    const-wide/16 v4, 0x1

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->m:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->v:Ljava/lang/Long;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->v:Ljava/lang/Long;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->u:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->v:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->u:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->u:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->v:Ljava/lang/Long;

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->u:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/xiaomi/kenai/jbosh/j;
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "Interrupted"

    invoke-static {v2, v1}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private d(Lcom/xiaomi/kenai/jbosh/p;)Lcom/xiaomi/kenai/jbosh/j;
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->k:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->p:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/p;

    sget-object v5, Lcom/xiaomi/kenai/jbosh/E;->m:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {v0, v5}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Report of missing message with RID \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' but local copy of that request was not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/xiaomi/kenai/jbosh/j;

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/j;-><init>(Lcom/xiaomi/kenai/jbosh/p;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/j;)V

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic d(Lcom/xiaomi/kenai/jbosh/F;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    .line 0
    .line 15000
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->d()Lcom/xiaomi/kenai/jbosh/j;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/j;->a()Lcom/xiaomi/kenai/jbosh/p;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/kenai/jbosh/E;->m:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {v2, v3}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_0

    iput-wide v2, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 16000
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    :try_start_1
    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/j;->b()Lcom/xiaomi/kenai/jbosh/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/kenai/jbosh/k;->b()Lcom/xiaomi/kenai/jbosh/p;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/kenai/jbosh/k;->a()I
    :try_end_1
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_2
    invoke-virtual {v2}, Lcom/xiaomi/kenai/jbosh/k;->c()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/xiaomi/kenai/jbosh/F;->x:J

    cmp-long v2, v8, v6

    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/xiaomi/kenai/jbosh/F;->x:J

    :cond_1
    iget-wide v8, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J

    cmp-long v2, v6, v8

    if-gtz v2, :cond_5

    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/F;->j:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_2
    iget-wide v6, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, v3}, Lcom/xiaomi/kenai/jbosh/F;->f(Lcom/xiaomi/kenai/jbosh/p;)V

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/j;->a()Lcom/xiaomi/kenai/jbosh/p;

    move-result-object v2

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_3
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->c()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/p;)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/kenai/jbosh/F;->a(J)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    :goto_0
    return-void

    .line 15000
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 16000
    :catch_0
    move-exception v0

    const-string v1, "SMACK-BOSH: Could not obtain response"

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Interrupted"

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "SMACK-BOSH: responded rid("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") is not expected ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "), wait"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/F;->j:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v6, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v6, v7, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMACK-BOSH: wait for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout, terminate!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wait timeout for rid"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/xiaomi/kenai/jbosh/F;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_6
    const-string v0, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    if-nez v1, :cond_8

    invoke-static {v2, v3}, Lcom/xiaomi/kenai/jbosh/g;->a(Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/p;)Lcom/xiaomi/kenai/jbosh/g;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->i()V

    :cond_8
    iget-object v5, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    .line 18000
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    invoke-static {v3}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/p;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/xiaomi/kenai/jbosh/E;->d:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {v3, v1}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/kenai/jbosh/o;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/o;

    move-result-object v1

    .line 17000
    :goto_1
    if-eqz v1, :cond_c

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Terminal binding condition encountered: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 16000
    :catch_3
    move-exception v0

    :try_start_8
    const-string v1, "SMACK-BOSH: Could not process response"

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_18

    :try_start_9
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->e()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v2}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/p;)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_9

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/kenai/jbosh/F;->a(J)V

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 18000
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/g;->c()Lcom/xiaomi/kenai/jbosh/C;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {v4}, Lcom/xiaomi/kenai/jbosh/o;->a(I)Lcom/xiaomi/kenai/jbosh/o;

    move-result-object v1

    goto :goto_1

    :cond_b
    move-object v1, v0

    goto :goto_1

    .line 16000
    :cond_c
    invoke-static {v3}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/p;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_b
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->e()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, v2}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/p;)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_d

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/kenai/jbosh/F;->a(J)V

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_e
    const-string v0, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19000
    :cond_f
    :try_start_c
    const-string v1, "error"

    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->r:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {v3, v4}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 16000
    if-eqz v1, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/j;

    new-instance v4, Lcom/xiaomi/kenai/jbosh/j;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/j;->a()Lcom/xiaomi/kenai/jbosh/p;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/xiaomi/kenai/jbosh/j;-><init>(Lcom/xiaomi/kenai/jbosh/p;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_d
    const-string v1, "SMACK-BOSH: Could not process response"

    invoke-static {v1, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_e
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->e()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, v2}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/p;)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_10

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/kenai/jbosh/F;->a(J)V

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_11
    :try_start_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/j;

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/j;)V
    :try_end_f
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1a

    :try_start_10
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->e()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0, v2}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/p;)J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-lez v1, :cond_12

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/kenai/jbosh/F;->a(J)V

    :cond_12
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_4
    throw v0

    :cond_13
    move-object v0, v1

    :cond_14
    :goto_5
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_17

    :try_start_11
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->e()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-direct {p0, v2}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/p;)J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-lez v1, :cond_15

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/kenai/jbosh/F;->a(J)V

    :cond_15
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_6
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/j;

    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/F;->n:Lcom/xiaomi/kenai/jbosh/l;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/j;->a()Lcom/xiaomi/kenai/jbosh/p;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/kenai/jbosh/F;->z:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4}, Lcom/xiaomi/kenai/jbosh/l;->a(Lcom/xiaomi/kenai/jbosh/g;Lcom/xiaomi/kenai/jbosh/p;Landroid/content/Context;)Lcom/xiaomi/kenai/jbosh/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/kenai/jbosh/j;->a(Lcom/xiaomi/kenai/jbosh/k;)V

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/j;->a()Lcom/xiaomi/kenai/jbosh/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->e(Lcom/xiaomi/kenai/jbosh/p;)V

    goto :goto_7

    :cond_16
    :try_start_12
    invoke-direct {p0, v2, v3}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/p;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/kenai/jbosh/F;->c(Lcom/xiaomi/kenai/jbosh/p;)V

    invoke-direct {p0, v3}, Lcom/xiaomi/kenai/jbosh/F;->d(Lcom/xiaomi/kenai/jbosh/p;)Lcom/xiaomi/kenai/jbosh/j;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/j;)V
    :try_end_12
    .catch Lcom/xiaomi/kenai/jbosh/aa; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_5

    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_17
    const-string v1, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v1}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    goto :goto_6

    :catchall_6
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_18
    const-string v0, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_19
    const-string v0, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1a
    const-string v1, "SMACK-BOSH: lock is not held by this thread, don\'t schedule empty request"

    invoke-static {v1}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private e(Lcom/xiaomi/kenai/jbosh/p;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/L;

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/xiaomi/kenai/jbosh/ab;->a(Lcom/xiaomi/kenai/jbosh/F;Lcom/xiaomi/kenai/jbosh/p;)Lcom/xiaomi/kenai/jbosh/ab;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/xiaomi/kenai/jbosh/L;->a(Lcom/xiaomi/kenai/jbosh/ab;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SMACK-BOSH:Unhandled Exception"

    invoke-static {v3, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->r:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/kenai/jbosh/F;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->r:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->r:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->r:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private f(Lcom/xiaomi/kenai/jbosh/p;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/M;

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/xiaomi/kenai/jbosh/ab;->b(Lcom/xiaomi/kenai/jbosh/F;Lcom/xiaomi/kenai/jbosh/p;)Lcom/xiaomi/kenai/jbosh/ab;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, v1}, Lcom/xiaomi/kenai/jbosh/M;->a(Lcom/xiaomi/kenai/jbosh/ab;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SMACK-BOSH:Unhandled Exception"

    invoke-static {v3, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/kenai/jbosh/F;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Lock is not held by current thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/kenai/jbosh/F;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Lock is held by current thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/kenai/jbosh/K;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/kenai/jbosh/w;->a(Lcom/xiaomi/kenai/jbosh/F;)Lcom/xiaomi/kenai/jbosh/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_1
    :try_start_1
    invoke-interface {v0, v1}, Lcom/xiaomi/kenai/jbosh/K;->a(Lcom/xiaomi/kenai/jbosh/w;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "SMACK-BOSH:Unhandled Exception"

    invoke-static {v4, v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    const-string v1, "Session explicitly closed by caller"

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/kenai/jbosh/K;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/xiaomi/kenai/jbosh/L;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/xiaomi/kenai/jbosh/M;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/xiaomi/kenai/jbosh/h;)V
    .locals 6

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->h()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/p;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    const-string v1, "Cannot send message when session is closed"

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->o:Lcom/xiaomi/kenai/jbosh/m;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/m;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-wide v0, p0, Lcom/xiaomi/kenai/jbosh/F;->x:J

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    if-nez v2, :cond_6

    iget-object v3, p0, Lcom/xiaomi/kenai/jbosh/F;->t:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2000
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    .line 3000
    invoke-static {p1}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/h;)Lcom/xiaomi/kenai/jbosh/i;

    move-result-object v3

    .line 2000
    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->q:Lcom/xiaomi/kenai/jbosh/f;

    iget-object v5, p0, Lcom/xiaomi/kenai/jbosh/F;->l:Lcom/xiaomi/kenai/jbosh/I;

    invoke-virtual {v5}, Lcom/xiaomi/kenai/jbosh/I;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->u:Lcom/xiaomi/kenai/jbosh/f;

    iget-object v5, p0, Lcom/xiaomi/kenai/jbosh/F;->l:Lcom/xiaomi/kenai/jbosh/I;

    invoke-virtual {v5}, Lcom/xiaomi/kenai/jbosh/I;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->s:Lcom/xiaomi/kenai/jbosh/f;

    invoke-static {}, Lcom/xiaomi/kenai/jbosh/C;->b()Lcom/xiaomi/kenai/jbosh/C;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/kenai/jbosh/C;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->t:Lcom/xiaomi/kenai/jbosh/f;

    const-string v5, "300"

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->f:Lcom/xiaomi/kenai/jbosh/f;

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->m:Lcom/xiaomi/kenai/jbosh/f;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    .line 4000
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->l:Lcom/xiaomi/kenai/jbosh/I;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/I;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/xiaomi/kenai/jbosh/E;->n:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {v3, v1, v0}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    .line 5000
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->l:Lcom/xiaomi/kenai/jbosh/I;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/I;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/xiaomi/kenai/jbosh/E;->e:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {v3, v1, v0}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    .line 2000
    :cond_4
    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->b:Lcom/xiaomi/kenai/jbosh/f;

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->o:Lcom/xiaomi/kenai/jbosh/f;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    invoke-virtual {v3}, Lcom/xiaomi/kenai/jbosh/i;->a()Lcom/xiaomi/kenai/jbosh/h;

    move-result-object v0

    .line 0
    :cond_5
    :goto_0
    new-instance v1, Lcom/xiaomi/kenai/jbosh/j;

    invoke-direct {v1, v0}, Lcom/xiaomi/kenai/jbosh/j;-><init>(Lcom/xiaomi/kenai/jbosh/p;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/j;)V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/j;->a()Lcom/xiaomi/kenai/jbosh/p;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/kenai/jbosh/F;->n:Lcom/xiaomi/kenai/jbosh/l;

    iget-object v4, p0, Lcom/xiaomi/kenai/jbosh/F;->z:Landroid/content/Context;

    invoke-virtual {v3, v2, v0, v4}, Lcom/xiaomi/kenai/jbosh/l;->a(Lcom/xiaomi/kenai/jbosh/g;Lcom/xiaomi/kenai/jbosh/p;Landroid/content/Context;)Lcom/xiaomi/kenai/jbosh/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/kenai/jbosh/j;->a(Lcom/xiaomi/kenai/jbosh/k;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->e(Lcom/xiaomi/kenai/jbosh/p;)V

    return-void

    .line 6000
    :cond_6
    :try_start_2
    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->g()V

    .line 7000
    invoke-static {p1}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/h;)Lcom/xiaomi/kenai/jbosh/i;

    move-result-object v3

    .line 6000
    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->o:Lcom/xiaomi/kenai/jbosh/f;

    iget-object v5, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    invoke-virtual {v5}, Lcom/xiaomi/kenai/jbosh/g;->a()Lcom/xiaomi/kenai/jbosh/B;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/kenai/jbosh/B;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->m:Lcom/xiaomi/kenai/jbosh/f;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    invoke-virtual {v3}, Lcom/xiaomi/kenai/jbosh/i;->a()Lcom/xiaomi/kenai/jbosh/h;

    move-result-object v0

    .line 0
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->s:Lcom/xiaomi/kenai/jbosh/g;

    invoke-virtual {v1}, Lcom/xiaomi/kenai/jbosh/g;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/kenai/jbosh/F;->y:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    const-string v1, "SMACK-BOSH: request timeout happened, reset connection"

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->q:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/kenai/jbosh/F;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/kenai/jbosh/F;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/F;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final b(Lcom/xiaomi/kenai/jbosh/h;)V
    .locals 3

    .prologue
    .line 0
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8000
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/h;)Lcom/xiaomi/kenai/jbosh/i;

    move-result-object v0

    .line 0
    sget-object v1, Lcom/xiaomi/kenai/jbosh/E;->r:Lcom/xiaomi/kenai/jbosh/f;

    const-string v2, "terminate"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/kenai/jbosh/i;->a(Lcom/xiaomi/kenai/jbosh/f;Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/i;

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/i;->a()Lcom/xiaomi/kenai/jbosh/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/h;)V

    return-void
.end method
