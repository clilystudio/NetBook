.class final Lcom/umeng/update/net/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/umeng/update/net/f;


# direct methods
.method constructor <init>(Lcom/umeng/update/net/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/net/g;->a:Lcom/umeng/update/net/f;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 848
    iget-object v0, p0, Lcom/umeng/update/net/g;->a:Lcom/umeng/update/net/f;

    invoke-static {v0}, Lcom/umeng/update/net/f;->b(Lcom/umeng/update/net/f;)Lcom/umeng/update/net/DownloadingService;

    move-result-object v0

    .line 850
    iget-object v1, p0, Lcom/umeng/update/net/g;->a:Lcom/umeng/update/net/f;

    invoke-static {v1}, Lcom/umeng/update/net/f;->a(Lcom/umeng/update/net/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/b/b;->h(Landroid/content/Context;)I

    move-result v1

    .line 851
    const/4 v2, 0x0

    .line 847
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 852
    return-void
.end method
