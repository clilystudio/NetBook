.class public Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mSingleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;


# instance fields
.field private mExpire:J

.field private mOtp:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mOtp:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private checkExpire(J)Z
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 v2, 0x240c8400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mSingleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mSingleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mSingleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mSingleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getOtp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mOtp:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "otp"

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;

    move-result-object v0

    .line 41
    const-string v1, "expire_in"

    .line 40
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 43
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "otp"

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mOtp:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;

    move-result-object v0

    .line 45
    const-string v1, "expire_in"

    .line 44
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mExpire:J

    .line 46
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mOtp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mExpire:J

    invoke-direct {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->checkExpire(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->update()V

    .line 55
    :cond_1
    :goto_0
    return-void

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->update()V

    goto :goto_0
.end method

.method public setOtp(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 149
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mOtp:Ljava/lang/String;

    .line 150
    iput-wide p2, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mExpire:J

    .line 151
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "otp"

    invoke-virtual {v0, v1, p1}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "expire_in"

    invoke-virtual {v0, v1, p2, p3}, Lcom/ximalaya/ting/android/opensdk/util/SharedPreferencesUtil;->saveLong(Ljava/lang/String;J)V

    .line 155
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 90
    :try_start_0
    const-string v1, "http://api.ximalaya.com/openapi-platformcoorp-authenticate-app/platformcoorp/generate_otp"

    .line 92
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->assembleCommonParams()Ljava/util/Map;

    move-result-object v2

    .line 93
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager$1;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager$1;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V

    .line 138
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
