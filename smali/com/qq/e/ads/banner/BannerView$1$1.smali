.class Lcom/qq/e/ads/banner/BannerView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/banner/BannerView$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/banner/BannerView$1;Lcom/qq/e/comm/pi/POFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iput-object p2, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner/BannerView$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v3, v3, Lcom/qq/e/ads/banner/BannerView$1;->c:Lcom/qq/e/ads/banner/ADSize;

    iget-object v4, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v4, v4, Lcom/qq/e/ads/banner/BannerView$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v5, v5, Lcom/qq/e/ads/banner/BannerView$1;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qq/e/comm/pi/POFactory;->getBannerView(Landroid/app/Activity;Lcom/qq/e/ads/banner/ADSize;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/BVI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;Lcom/qq/e/comm/pi/BVI;)Lcom/qq/e/comm/pi/BVI;

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/comm/pi/BVI;

    move-result-object v0

    new-instance v1, Lcom/qq/e/ads/banner/BannerView$ADListenerAdapter;

    iget-object v2, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v2, v2, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/qq/e/ads/banner/BannerView$ADListenerAdapter;-><init>(Lcom/qq/e/ads/banner/BannerView;B)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/BVI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->a(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/comm/pi/BVI;

    move-result-object v1

    invoke-interface {v1}, Lcom/qq/e/comm/pi/BVI;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->b(Lcom/qq/e/ads/banner/BannerView;)Z

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->c(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->c(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setDownConfirmPilicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->d(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->d(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setRefresh(I)V

    :cond_1
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->e(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/BannerRollAnimation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->e(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/BannerRollAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setRollAnimation(Lcom/qq/e/ads/cfg/BannerRollAnimation;)V

    :cond_2
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->f(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->f(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/banner/BannerView;->setShowClose(Z)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->g(Lcom/qq/e/ads/banner/BannerView;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-virtual {v0}, Lcom/qq/e/ads/banner/BannerView;->loadAD()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Exception while init Banner Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->b(Lcom/qq/e/ads/banner/BannerView;)Z

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v0, v0, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v0}, Lcom/qq/e/ads/banner/BannerView;->b(Lcom/qq/e/ads/banner/BannerView;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/banner/BannerView$1$1;->b:Lcom/qq/e/ads/banner/BannerView$1;

    iget-object v1, v1, Lcom/qq/e/ads/banner/BannerView$1;->e:Lcom/qq/e/ads/banner/BannerView;

    invoke-static {v1}, Lcom/qq/e/ads/banner/BannerView;->b(Lcom/qq/e/ads/banner/BannerView;)Z

    throw v0
.end method
