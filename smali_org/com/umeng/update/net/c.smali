.class final Lcom/umeng/update/net/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/umeng/update/net/DownloadingService;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/update/net/DownloadingService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/net/c;->a:Lcom/umeng/update/net/DownloadingService;

    iput-object p2, p0, Lcom/umeng/update/net/c;->b:Ljava/lang/String;

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/umeng/update/net/c;->a:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->b(Lcom/umeng/update/net/DownloadingService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1064
    return-void
.end method
