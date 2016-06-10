.class public Lcom/qq/e/ads/appwall/APPWall;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/comm/pi/AWI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "APPWall ADView Contructor paras error,appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/POFactory;->getAppWallView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/AWI;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/appwall/APPWall;->a:Lcom/qq/e/comm/pi/AWI;
    :try_end_0
    .catch Lcom/qq/e/comm/managers/plugin/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception while init APPWall plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string v0, "Fail to init ADManager"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public doShowAppWall()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/appwall/APPWall;->a:Lcom/qq/e/comm/pi/AWI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/appwall/APPWall;->a:Lcom/qq/e/comm/pi/AWI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AWI;->showAppWall()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/appwall/APPWall;->a:Lcom/qq/e/comm/pi/AWI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/appwall/APPWall;->a:Lcom/qq/e/comm/pi/AWI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/AWI;->prepare()V

    :cond_0
    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/appwall/APPWall;->a:Lcom/qq/e/comm/pi/AWI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/appwall/APPWall;->a:Lcom/qq/e/comm/pi/AWI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/AWI;->setScreenOrientation(I)V

    :cond_0
    return-void
.end method
