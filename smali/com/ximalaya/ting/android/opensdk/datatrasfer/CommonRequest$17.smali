.class Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;


# instance fields
.field private final synthetic val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1283
    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postError(ILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1284
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/I;)V
    .locals 4

    .prologue
    .line 1260
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 1261
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17$1;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17$1;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17;)V

    .line 1263
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1267
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getResponseBodyStringToObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1266
    check-cast v0, Ljava/util/List;

    .line 1268
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/model/album/HumanRecommendAlbumList;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/opensdk/model/album/HumanRecommendAlbumList;-><init>()V

    .line 1269
    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/album/HumanRecommendAlbumList;->setAlbumList(Ljava/util/List;)V

    .line 1270
    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v0

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    invoke-virtual {v0, v2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :goto_0
    return-void

    .line 1274
    :catch_0
    move-exception v0

    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v0

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    .line 1275
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    .line 1274
    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postError(ILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    goto :goto_0
.end method
