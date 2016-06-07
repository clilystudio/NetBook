.class public abstract Lcom/qq/e/ads/banner/AbstractBannerADListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/banner/BannerADListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 1

    const-string v0, "On BannerAD Clicked"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADCloseOverlay()V
    .locals 1

    const-string v0, "On BannerAD AdCloseOverlay"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADClosed()V
    .locals 1

    const-string v0, "On BannerAD Closed"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADExposure()V
    .locals 1

    const-string v0, "On BannerAD Exposured"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADLeftApplication()V
    .locals 1

    const-string v0, "On BannerAD AdLeftApplication"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onADOpenOverlay()V
    .locals 1

    const-string v0, "On BannerAD AdOpenOverlay"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->i(Ljava/lang/String;)V

    return-void
.end method
