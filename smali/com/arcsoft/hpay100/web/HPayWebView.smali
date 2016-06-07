.class public Lcom/arcsoft/hpay100/web/HPayWebView;
.super Landroid/webkit/WebView;


# static fields
.field public static a:I


# instance fields
.field private b:Z

.field private c:I

.field private d:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private e:Lcom/arcsoft/hpay100/web/m;

.field private f:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/arcsoft/hpay100/web/HPayWebView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->d:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/m;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->e:Lcom/arcsoft/hpay100/web/m;

    return-object v0
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/web/HPayWebView;I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->c:I

    return-void
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->d:Lcom/arcsoft/hpay100/config/HPaySMS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->d:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mJsUrlHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadjsurl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    invoke-static {p1}, Lcom/arcsoft/hpay100/c/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/arcsoft/hpay100/c/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->d:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mJsUrlHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/arcsoft/hpay100/web/k;

    invoke-direct {v2, p0, v0}, Lcom/arcsoft/hpay100/web/k;-><init>(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "thread_load_js"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/arcsoft/hpay100/web/HPayWebView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->b:Z

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsdata:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->f:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->f:Landroid/app/Activity;

    new-instance v2, Lcom/arcsoft/hpay100/web/l;

    invoke-direct {v2, p0, v0}, Lcom/arcsoft/hpay100/web/l;-><init>(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/arcsoft/hpay100/web/HPayWebView;)I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->c:I

    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x400

    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/arcsoft/hpay100/web/HPayWebView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/arcsoft/hpay100/web/HPayWebView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Handler;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/y;Lcom/arcsoft/hpay100/web/m;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iput-object p6, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->e:Lcom/arcsoft/hpay100/web/m;

    iput-boolean v7, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->b:Z

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->f:Landroid/app/Activity;

    iput-object p3, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->d:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput v7, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->c:I

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    new-instance v0, Lcom/arcsoft/hpay100/web/a;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/hpay100/web/a;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/os/Handler;Lcom/arcsoft/hpay100/y;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;)V

    const-string v1, "HPayJS"

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/arcsoft/hpay100/web/HPayWebView;->setScrollBarStyle(I)V

    invoke-virtual {p0, v8}, Lcom/arcsoft/hpay100/web/HPayWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/arcsoft/hpay100/web/HPayWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v8}, Lcom/arcsoft/hpay100/web/HPayWebView;->setHorizontalFadingEdgeEnabled(Z)V

    new-instance v0, Lcom/arcsoft/hpay100/web/i;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/web/i;-><init>(Lcom/arcsoft/hpay100/web/HPayWebView;)V

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/arcsoft/hpay100/web/j;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/web/j;-><init>(Lcom/arcsoft/hpay100/web/HPayWebView;)V

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadurl url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->b:Z

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postUrl url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->b:Z

    return-void
.end method

.method public reload()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView;->b:Z

    return-void
.end method
