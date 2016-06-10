.class public Lcom/qq/e/ads/ADActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/qq/e/comm/pi/ACTD;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/ACTD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/qq/e/ads/ADActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gdt_activity_delegate_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/ACTD;->onBeforeCreate(Landroid/os/Bundle;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/ACTD;->onAfterCreate(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qq/e/ads/ADActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lcom/qq/e/comm/pi/POFactory;->getActivityDelegate(Ljava/lang/String;Landroid/app/Activity;)Lcom/qq/e/comm/pi/ACTD;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Init ADActivity Delegate return null,delegateName"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init ADActivity Delegate Faile,DelegateName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "Init GDTADManager fail in AdActivity"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/qq/e/ads/ADActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/ADActivity;->a:Lcom/qq/e/comm/pi/ACTD;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/ACTD;->onStop()V

    :cond_0
    return-void
.end method
