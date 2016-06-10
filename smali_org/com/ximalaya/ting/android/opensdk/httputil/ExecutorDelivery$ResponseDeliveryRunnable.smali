.class Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private code:I

.field private message:Ljava/lang/String;

.field private postCode:I

.field private t:Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;IILjava/lang/String;Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p2, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->postCode:I

    .line 78
    iput p3, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->code:I

    .line 79
    iput-object p4, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->message:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    .line 81
    iput-object p5, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->t:Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;ILcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p2, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->postCode:I

    .line 88
    iput-object p4, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    .line 89
    iput-object p3, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->t:Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;

    .line 90
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->postCode:I

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->t:Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->postCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->callback:Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->code:I

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$ResponseDeliveryRunnable;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
