.class public final Lcom/qq/e/ads/appwall/GridAPPWall;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/qq/e/comm/pi/GWI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/appwall/GridAPPWallListener;)V
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
    const-string v0, "GridAPPWall ADView Contructor paras error,appid=%s,posId=%s,context=%s"

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

    const/16 v0, 0x25a

    invoke-static {p4, v0}, Lcom/qq/e/ads/appwall/GridAPPWall;->a(Lcom/qq/e/ads/appwall/GridAPPWallListener;I)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Fail to Init GDT AD SDK,report logcat info filter by gdt_ad_mob"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x12d

    invoke-static {p4, v0}, Lcom/qq/e/ads/appwall/GridAPPWall;->a(Lcom/qq/e/ads/appwall/GridAPPWallListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Fail to init new appwall plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x12e

    invoke-static {p4, v0}, Lcom/qq/e/ads/appwall/GridAPPWall;->a(Lcom/qq/e/ads/appwall/GridAPPWallListener;I)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/qq/e/comm/pi/POFactory;->createGridAppWallView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/GWI;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    iget-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    invoke-interface {v0, p4}, Lcom/qq/e/comm/pi/GWI;->setAdListener(Lcom/qq/e/ads/appwall/GridAPPWallListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Unknown Exception"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x25d

    invoke-static {p4, v0}, Lcom/qq/e/ads/appwall/GridAPPWall;->a(Lcom/qq/e/ads/appwall/GridAPPWallListener;I)V

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "Fail to INIT GDT SDK"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    const/16 v0, 0x12f

    invoke-static {p4, v0}, Lcom/qq/e/ads/appwall/GridAPPWall;->a(Lcom/qq/e/ads/appwall/GridAPPWallListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private static a(Lcom/qq/e/ads/appwall/GridAPPWallListener;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/qq/e/ads/appwall/GridAPPWallListener;->onNoAD(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final show()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/GWI;->show()V

    :cond_0
    return-void
.end method

.method public final showRelativeTo(II)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    invoke-interface {v0, p1, p2}, Lcom/qq/e/comm/pi/GWI;->showRelativeTo(II)V

    :cond_0
    return-void
.end method

.method public final showRelativeTo(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/appwall/GridAPPWall;->a:Lcom/qq/e/comm/pi/GWI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/GWI;->showRelativeTo(Landroid/view/View;)V

    :cond_0
    return-void
.end method
