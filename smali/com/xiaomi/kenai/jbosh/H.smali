.class final Lcom/xiaomi/kenai/jbosh/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/xiaomi/kenai/jbosh/F;


# direct methods
.method constructor <init>(Lcom/xiaomi/kenai/jbosh/F;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/F;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/F;->c(Lcom/xiaomi/kenai/jbosh/F;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/F;->c(Lcom/xiaomi/kenai/jbosh/F;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/F;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/F;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/kenai/jbosh/F;->a(Lcom/xiaomi/kenai/jbosh/F;J)J

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/F;->d(Lcom/xiaomi/kenai/jbosh/F;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/H;->a:Lcom/xiaomi/kenai/jbosh/F;

    invoke-static {v1}, Lcom/xiaomi/kenai/jbosh/F;->b(Lcom/xiaomi/kenai/jbosh/F;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
