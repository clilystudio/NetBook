.class final Lcom/ushaqi/zhuishushenqi/ui/bh;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V

    .line 87
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V

    .line 98
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bh;->a:Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;)V

    .line 92
    return-void
.end method
