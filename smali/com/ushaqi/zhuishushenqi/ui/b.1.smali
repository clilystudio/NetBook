.class final Lcom/ushaqi/zhuishushenqi/ui/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/b;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/b;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V

    .line 105
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/b;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V

    .line 123
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/b;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V

    .line 124
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/b;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V

    .line 118
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 109
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 112
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
