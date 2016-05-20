.class final Lcom/ushaqi/zhuishushenqi/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/c;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/c;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/c;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
