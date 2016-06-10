.class final Lcom/ushaqi/zhuishushenqi/reader/dd;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/dd;->a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dd;->a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V

    .line 65
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dd;->a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->c(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V

    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dd;->a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V

    .line 86
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/dd;->a:Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;->b(Lcom/ushaqi/zhuishushenqi/reader/WebPageFragment;)V

    .line 80
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 71
    const-string v0, "semob://hidetypesetView"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
