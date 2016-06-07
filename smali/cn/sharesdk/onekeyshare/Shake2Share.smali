.class public Lcn/sharesdk/onekeyshare/Shake2Share;
.super Lcom/mob/tools/a;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final SHAKE_THRESHOLD:I = 0x5dc

.field private static final UPDATE_INTERVAL:I = 0x64


# instance fields
.field private listener:Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private shaken:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    .line 132
    return-void
.end method

.method private startSensor()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    .line 74
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 81
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 85
    :cond_2
    return-void
.end method

.method private stopSensor()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mSensorManager:Landroid/hardware/SensorManager;

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/Shake2Share;->startSensor()V

    .line 58
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_oks_yaoyiyao"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 59
    if-lez v0, :cond_0

    .line 60
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    const-string v1, "shake2share"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 67
    if-lez v0, :cond_1

    .line 68
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/Shake2Share;->stopSensor()V

    .line 89
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    iget-wide v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastUpdateTime:J

    sub-long v2, v0, v2

    .line 101
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 102
    iget-wide v4, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastUpdateTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 103
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 104
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    .line 105
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    .line 106
    iget v7, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastX:F

    sub-float v7, v4, v7

    .line 107
    iget v8, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastY:F

    sub-float v8, v5, v8

    .line 108
    iget v9, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastZ:F

    sub-float v9, v6, v9

    .line 109
    mul-float/2addr v7, v7

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    mul-float v8, v9, v9

    add-float/2addr v7, v8

    invoke-static {v7}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v7

    long-to-float v2, v2

    div-float v2, v7, v2

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    .line 110
    const v3, 0x44bb8000    # 1500.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 111
    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->shaken:Z

    if-nez v2, :cond_0

    .line 112
    iput-boolean v10, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->shaken:Z

    .line 113
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/Shake2Share;->finish()V

    .line 116
    :cond_0
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->listener:Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->listener:Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

    invoke-interface {v2}, Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;->onShake()V

    .line 120
    :cond_1
    iput v4, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastX:F

    .line 121
    iput v5, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastY:F

    .line 122
    iput v6, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastZ:F

    .line 124
    :cond_2
    iput-wide v0, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->mLastUpdateTime:J

    .line 126
    :cond_3
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/mob/tools/a;->setActivity(Landroid/app/Activity;)V

    .line 46
    const-string v0, "ssdk_oks_shake_to_share_back"

    invoke-static {p1, v0}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 47
    if-lez v0, :cond_0

    .line 48
    const v1, 0x103000b

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public setOnShakeListener(Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/Shake2Share;->listener:Lcn/sharesdk/onekeyshare/Shake2Share$OnShakeListener;

    .line 42
    return-void
.end method
