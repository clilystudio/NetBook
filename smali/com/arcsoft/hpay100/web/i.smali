.class final Lcom/arcsoft/hpay100/web/i;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/web/HPayWebView;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPageFinished:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wap.dm.10086.cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u5145\u503c"

    :cond_0
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPageFinished url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Lcom/arcsoft/hpay100/web/HPayWebView;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2, v0}, Lcom/arcsoft/hpay100/web/m;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->c(Lcom/arcsoft/hpay100/web/HPayWebView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p2}, Lcom/arcsoft/hpay100/web/m;->a(ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->c(Lcom/arcsoft/hpay100/web/HPayWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Lcom/arcsoft/hpay100/web/HPayWebView;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/arcsoft/hpay100/web/m;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;Z)V

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2}, Lcom/arcsoft/hpay100/web/m;->a(ILjava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0, p2}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Lcom/arcsoft/hpay100/web/HPayWebView;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;I)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Lcom/arcsoft/hpay100/web/HPayWebView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/arcsoft/hpay100/web/m;->a(ILjava/lang/Object;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xe

    const-string v0, "dalongTest"

    const-string v1, "onReceivedError:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearView()V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Lcom/arcsoft/hpay100/web/HPayWebView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;I)V

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Lcom/arcsoft/hpay100/web/HPayWebView;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Lcom/arcsoft/hpay100/web/HPayWebView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;I)V

    :cond_1
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    const-string v0, "dalongTest"

    const-string v1, "onReceivedSslError:"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/i;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p2}, Lcom/arcsoft/hpay100/web/m;->a(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
