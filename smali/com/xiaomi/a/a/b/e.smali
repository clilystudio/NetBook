.class final Lcom/xiaomi/a/a/b/e;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a/b/b;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
