.class public abstract Lcom/qq/e/ads/interstitial/AbstractInterstitialADListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/interstitial/InterstitialADListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 1

    const-string v0, "ON InterstitialAD Clicked"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADClosed()V
    .locals 1

    const-string v0, "ON InterstitialAD Closed"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADExposure()V
    .locals 1

    const-string v0, "ON InterstitialAD Exposure"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADLeftApplication()V
    .locals 1

    const-string v0, "ON InterstitialAD LeftApplication"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADOpened()V
    .locals 1

    const-string v0, "ON InterstitialAD Opened"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method
