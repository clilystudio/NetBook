.class final Lcom/ushaqi/zhuishushenqi/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/a;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/a;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;)Landroid/app/DownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/a;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/a;->a:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
