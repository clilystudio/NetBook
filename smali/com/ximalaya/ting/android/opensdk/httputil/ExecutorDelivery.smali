.class public Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$1;-><init>(Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 49
    return-void
.end method


# virtual methods
.method public postError(ILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;",
            ">(I",
            "Ljava/lang/String;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v7, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v2, 0x1

    .line 62
    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;IILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 61
    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public postSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;",
            ">(",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    .line 55
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;ILcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
