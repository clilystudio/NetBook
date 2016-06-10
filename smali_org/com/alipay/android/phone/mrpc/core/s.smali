.class final Lcom/alipay/android/phone/mrpc/core/s;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/alipay/android/phone/mrpc/core/z;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/alipay/android/phone/mrpc/core/w;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/r;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/w;)V
    .locals 0

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/s;->a:Lcom/alipay/android/phone/mrpc/core/w;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/s;->a:Lcom/alipay/android/phone/mrpc/core/w;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/w;->a()Lcom/alipay/android/phone/mrpc/core/u;

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    return-void
.end method
