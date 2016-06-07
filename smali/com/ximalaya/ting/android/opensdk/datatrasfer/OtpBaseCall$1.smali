.class Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;


# instance fields
.field private final synthetic val$appsecret:Ljava/lang/String;

.field private final synthetic val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

.field private final synthetic val$specificParams:Ljava/util/Map;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$specificParams:Ljava/util/Map;

    iput-object p4, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$appsecret:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    .line 328
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/I;)V
    .locals 8

    .prologue
    const/16 v7, 0x25c

    const/16 v3, 0x259

    const/16 v6, 0xc8

    const/16 v2, 0x25b

    .line 185
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 186
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getStatusCode()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 188
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onResponse(Lcom/squareup/okhttp/I;)V

    .line 322
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->parseResponseHandler(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    const-string v1, "parse data error"

    invoke-interface {v0, v2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorNo()I

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_a

    .line 205
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-platformcoorp-authenticate-app/platformcoorp/generate_otp"

    .line 207
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->assembleCommonParams()Ljava/util/Map;

    move-result-object v1

    .line 209
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlPost(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 221
    :try_start_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doSync(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v1, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 224
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getStatusCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-ne v2, v6, :cond_6

    .line 229
    :try_start_2
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->f()Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    move-result-object v0

    .line 233
    const-string v2, "otp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v3, "expire_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 232
    invoke-virtual {v0, v2, v4, v5}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->setOtp(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    :try_start_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$url:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$specificParams:Ljava/util/Map;

    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$appsecret:Ljava/lang/String;

    .line 246
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 258
    :try_start_4
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doSync(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v1, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 261
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getStatusCode()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 263
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-interface {v1, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onResponse(Lcom/squareup/okhttp/I;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 307
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    const-string v1, "http error"

    invoke-interface {v0, v7, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    .line 214
    const-string v1, "exception occurs when caculate signature"

    .line 213
    invoke-interface {v0, v3, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :catch_2
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 253
    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    const/16 v1, 0x259

    .line 254
    const-string v2, "exception occurs when caculate signature"

    .line 253
    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_3
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->parseResponseHandler(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_4

    .line 273
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 273
    if-eqz v1, :cond_5

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    const/16 v1, 0x25b

    .line 276
    const-string v2, "parse data error"

    .line 275
    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_5
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorNo()I

    move-result v2

    .line 281
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-interface {v1, v2, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_6
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->parseResponseHandler(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_7

    .line 292
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 292
    if-eqz v1, :cond_8

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :cond_8
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorNo()I

    move-result v2

    .line 299
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-interface {v1, v2, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 311
    :cond_9
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :cond_a
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorNo()I

    move-result v2

    .line 319
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->getErrorDesc()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-interface {v1, v2, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
