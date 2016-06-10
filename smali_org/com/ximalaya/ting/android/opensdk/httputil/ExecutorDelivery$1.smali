.class Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$1;->this$0:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$1;->val$handler:Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method
