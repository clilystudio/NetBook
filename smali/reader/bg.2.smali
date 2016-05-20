.class final Lcom/ushaqi/zhuishushenqi/reader/bg;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2376
    const-string v0, "com.ushaqi.zhuishushenqi.dlReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    const-string v0, "bookId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2378
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z

    .line 2381
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "SerDlCurrentCount"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 2383
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "SerDlChapterCount"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 2384
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "SerDlLink"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2385
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "SerDlStopFlag"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 2386
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aj(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aj(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2389
    :cond_0
    return-void
.end method
