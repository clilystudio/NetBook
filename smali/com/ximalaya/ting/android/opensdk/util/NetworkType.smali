.class public Lcom/ximalaya/ting/android/opensdk/util/NetworkType;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetWorkType(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;
    .locals 3

    .prologue
    .line 79
    .line 80
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 82
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_INVALID:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    .line 83
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_WIFI:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    const-string v2, "MOBILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType;->isFastMobileNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_3G:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    goto :goto_0

    .line 96
    :cond_2
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_2G:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    goto :goto_0

    .line 97
    :cond_3
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_WAP:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    goto :goto_0

    .line 102
    :cond_4
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_INVALID:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    goto :goto_0
.end method

.method private static isFastMobileNetwork(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 36
    .line 37
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 38
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 73
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 41
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 43
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 45
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 47
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 49
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 51
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 53
    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 55
    goto :goto_0

    :pswitch_8
    move v0, v2

    .line 57
    goto :goto_0

    :pswitch_9
    move v0, v2

    .line 59
    goto :goto_0

    :pswitch_a
    move v0, v2

    .line 61
    goto :goto_0

    :pswitch_b
    move v0, v2

    .line 63
    goto :goto_0

    :pswitch_c
    move v0, v2

    .line 65
    goto :goto_0

    :pswitch_d
    move v0, v1

    .line 67
    goto :goto_0

    :pswitch_e
    move v0, v2

    .line 69
    goto :goto_0

    :pswitch_f
    move v0, v1

    .line 71
    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method
