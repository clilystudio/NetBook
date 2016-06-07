.class final Lcom/alipay/b/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/b/e/a;


# direct methods
.method constructor <init>(Lcom/alipay/b/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/b/e/b;->a:Lcom/alipay/b/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/b/e/b;->a:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->a(Lcom/alipay/b/e/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/b/e/b;->a:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->a(Lcom/alipay/b/e/a;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/b/e/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/b/e/d;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/b/e/b;->a:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->b(Lcom/alipay/b/e/a;)Ljava/lang/Thread;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/b/e/b;->a:Lcom/alipay/b/e/a;

    invoke-static {v0}, Lcom/alipay/b/e/a;->b(Lcom/alipay/b/e/a;)Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/b/e/b;->a:Lcom/alipay/b/e/a;

    invoke-static {v1}, Lcom/alipay/b/e/a;->b(Lcom/alipay/b/e/a;)Ljava/lang/Thread;

    throw v0
.end method
