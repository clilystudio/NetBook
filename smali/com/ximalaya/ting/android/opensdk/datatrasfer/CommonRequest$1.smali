.class Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1;
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
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 411
    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postError(ILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 412
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/I;)V
    .locals 4

    .prologue
    .line 388
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;

    invoke-direct {v0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;-><init>(Lcom/squareup/okhttp/I;)V

    .line 389
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1$1;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1$1;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1;)V

    .line 391
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 395
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getResponseBodyStringToObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    check-cast v0, Ljava/util/List;

    .line 396
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryList;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryList;-><init>()V

    .line 397
    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryList;->setCategories(Ljava/util/List;)V

    .line 398
    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v0

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    invoke-virtual {v0, v2, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    # getter for: Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    move-result-object v0

    const/16 v1, 0x25b

    const-string v2, "parse data error"

    .line 403
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1;->val$callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    .line 402
    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->postError(ILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    goto :goto_0
.end method
