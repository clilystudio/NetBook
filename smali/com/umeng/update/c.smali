.class final Lcom/umeng/update/c;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/umeng/update/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/umeng/update/b;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    .line 231
    invoke-static {}, Lcom/umeng/update/k;->f()I

    move-result v2

    .line 230
    invoke-static {v1, v0, v2}, Lcom/umeng/update/b;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V

    .line 234
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/b;->b(Landroid/content/Context;)V

    .line 236
    invoke-static {}, Lcom/umeng/update/b;->b()Landroid/support/design/widget/K;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/umeng/update/b;->b()Landroid/support/design/widget/K;

    iget v0, p1, Landroid/os/Message;->what:I

    .line 238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    :cond_1
    return-void
.end method
