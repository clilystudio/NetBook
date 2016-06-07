.class Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;


# instance fields
.field private final synthetic val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

.field private final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;->val$params:Ljava/util/Map;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 964
    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postError(ILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 965
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/I;)V
    .locals 4

    .prologue
    .line 940
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 941
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11$1;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11$1;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;)V

    .line 943
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 947
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getResponseBodyStringToObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 946
    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;

    .line 948
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;->val$params:Ljava/util/Map;

    const-string v2, "total_page"

    .line 949
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->getTotalPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 948
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;->val$params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->setParams(Ljava/util/Map;)V

    .line 951
    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    invoke-virtual {v1, v2, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v0

    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v0

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    .line 956
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    .line 955
    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postError(ILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    goto :goto_0
.end method
