.class public final Lcom/qq/e/ads/splash/SplashAD;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/comm/pi/SPVI;

.field private b:Lcom/qq/e/ads/splash/SplashADListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;)V
    .locals 4

    const/16 v3, 0x12c

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Lcom/qq/e/ads/splash/SplashADListener;

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "SplashAd Contructor paras error,appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p5, v3}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    invoke-static {p5, v3}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Fail to Init GDT AD SDK,report logcat info filter by gdt_ad_mob"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x12d

    invoke-static {p5, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V
    :try_end_0
    .catch Lcom/qq/e/comm/managers/plugin/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init splash plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x12e

    invoke-static {p5, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0, p1, p3, p4}, Lcom/qq/e/comm/pi/POFactory;->getSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/SPVI;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/SPVI;

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/SPVI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/SPVI;

    new-instance v1, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/splash/SplashAD;B)V

    invoke-virtual {v0, v1}, Lcom/qq/e/comm/pi/SPVI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->a:Lcom/qq/e/comm/pi/SPVI;

    invoke-virtual {v0, p2}, Lcom/qq/e/comm/pi/SPVI;->fetchAndShowIn(Landroid/view/ViewGroup;)V
    :try_end_1
    .catch Lcom/qq/e/comm/managers/plugin/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unknown Exception"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x25d

    invoke-static {p5, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "SplashAdView created by factory return null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x12f

    invoke-static {p5, v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashADListener;I)V
    :try_end_2
    .catch Lcom/qq/e/comm/managers/plugin/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method static synthetic a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD;->b:Lcom/qq/e/ads/splash/SplashADListener;

    return-object v0
.end method

.method private static a(Lcom/qq/e/ads/splash/SplashADListener;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/qq/e/ads/splash/SplashADListener;->onNoAD(I)V

    :cond_0
    return-void
.end method
