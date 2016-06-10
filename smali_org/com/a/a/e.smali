.class final Lcom/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/a/a/d;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/a/a/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/e;->a:Lcom/a/a/d;

    iput-object p2, p0, Lcom/a/a/e;->b:Landroid/content/Context;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 883
    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/e;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/a/a/d;->b(Lcom/a/a/d;Landroid/content/Context;)V

    .line 884
    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/d;

    invoke-static {v0}, Lcom/a/a/d;->e(Lcom/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    invoke-static {}, Lcom/a/a/d;->b()J

    move-result-wide v0

    .line 886
    iget-object v2, p0, Lcom/a/a/e;->a:Lcom/a/a/d;

    invoke-static {v2}, Lcom/a/a/d;->f(Lcom/a/a/d;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 887
    invoke-static {}, Lcom/a/a/q;->a()Lcom/a/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/q;->c()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/d;

    invoke-static {v0}, Lcom/a/a/d;->f(Lcom/a/a/d;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 890
    :try_start_0
    iget-object v0, p0, Lcom/a/a/e;->a:Lcom/a/a/d;

    iget-object v1, p0, Lcom/a/a/e;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/a/a/d;->c(Lcom/a/a/d;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
