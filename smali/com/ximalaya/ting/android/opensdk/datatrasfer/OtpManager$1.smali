.class Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/I;)V
    .locals 6

    .prologue
    .line 104
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 105
    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->c()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->f()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    const-string v2, "otp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string v3, "expire_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 111
    invoke-virtual {v0, v2, v4, v5}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->setOtp(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->parseResponseHandler(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method
