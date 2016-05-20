.class public Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SerDlStopFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->c(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Z)Z

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->a(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;I)V

    .line 103
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/d;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->d(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/ushaqi/zhuishushenqi/event/d;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->e(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;)V

    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService$MyNetworkMonitor;->a:Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;->b(Lcom/ushaqi/zhuishushenqi/reader/dl/BookDownloadService;Z)Z

    .line 107
    :cond_0
    return-void
.end method
