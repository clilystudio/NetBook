.class public Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/C;",
            "Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;-><init>(Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V

    .line 330
    return-void
.end method

.method public static doSync(Lcom/squareup/okhttp/C;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/C;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x25c

    const/16 v6, 0xc8

    .line 49
    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doSync(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;

    move-result-object v1

    .line 53
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 54
    invoke-virtual {v1}, Lcom/squareup/okhttp/I;->c()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 56
    invoke-virtual {v1}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->f()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->parseResponseHandler(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    :cond_2
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 163
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const-string v1, "http error"

    invoke-direct {v0, v7, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 67
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorNo()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_0

    .line 73
    :try_start_2
    const-string v0, "http://api.ximalaya.com/openapi-platformcoorp-authenticate-app/platformcoorp/generate_otp"

    .line 75
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->assembleCommonParams()Ljava/util/Map;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 84
    :try_start_3
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doSync(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v1, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 87
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getStatusCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-ne v2, v6, :cond_7

    .line 92
    :try_start_4
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->f()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    move-result-object v0

    .line 95
    const-string v2, "otp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    const-string v3, "expire_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 94
    invoke-virtual {v0, v2, v4, v5}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->setOtp(Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    :try_start_5
    invoke-static {p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 106
    invoke-static {p3, v0, p2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    .line 115
    :try_start_6
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doSync(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v1, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 118
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getStatusCode()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 121
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getResponseBodyToString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :catch_1
    move-exception v0

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x259

    .line 82
    const-string v2, "exception occurs when caculate signature"

    .line 81
    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 100
    :catch_2
    move-exception v0

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 112
    :catch_3
    move-exception v0

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 126
    :cond_4
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->parseResponseHandler(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 131
    :cond_5
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x25b

    .line 132
    const-string v2, "parse data error"

    .line 131
    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 136
    :cond_6
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorNo()I

    move-result v2

    .line 137
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-direct {v1, v2, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 143
    :cond_7
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->parseResponseHandler(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_8

    .line 146
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 148
    :cond_8
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 152
    :cond_9
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorNo()I

    move-result v2

    .line 153
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-direct {v1, v2, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 167
    :cond_a
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v7, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
