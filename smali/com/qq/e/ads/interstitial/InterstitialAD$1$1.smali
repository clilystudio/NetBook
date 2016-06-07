.class Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/interstitial/InterstitialAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    iget-object v1, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/qq/e/comm/pi/POFactory;->getIADView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/IADI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/interstitial/InterstitialAD;->a(Lcom/qq/e/ads/interstitial/InterstitialAD;Lcom/qq/e/comm/pi/IADI;)Lcom/qq/e/comm/pi/IADI;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->a(Lcom/qq/e/ads/interstitial/InterstitialAD;)Lcom/qq/e/comm/pi/IADI;

    move-result-object v0

    new-instance v1, Lcom/qq/e/ads/interstitial/InterstitialAD$ADListenerAdapter;

    iget-object v2, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/qq/e/ads/interstitial/InterstitialAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/interstitial/InterstitialAD;B)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/IADI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->b(Lcom/qq/e/ads/interstitial/InterstitialAD;)Z

    :goto_0
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->c(Lcom/qq/e/ads/interstitial/InterstitialAD;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->loadAD()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Exception while init IAD Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->b(Lcom/qq/e/ads/interstitial/InterstitialAD;)Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v0}, Lcom/qq/e/ads/interstitial/InterstitialAD;->b(Lcom/qq/e/ads/interstitial/InterstitialAD;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/qq/e/ads/interstitial/InterstitialAD$1$1;->b:Lcom/qq/e/ads/interstitial/InterstitialAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/interstitial/InterstitialAD$1;->d:Lcom/qq/e/ads/interstitial/InterstitialAD;

    invoke-static {v1}, Lcom/qq/e/ads/interstitial/InterstitialAD;->b(Lcom/qq/e/ads/interstitial/InterstitialAD;)Z

    throw v0
.end method
