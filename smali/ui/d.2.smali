.class final Lcom/ushaqi/zhuishushenqi/ui/d;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/d;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/d;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/d;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->d(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
