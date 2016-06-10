.class Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    .line 198
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsStartBuffering()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 254
    return-void
.end method

.method public onAdsStopBuffering()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void
.end method

.method public onCompletePlayAds()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 240
    return-void
.end method

.method public onError(II)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 230
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 231
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 232
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

.method public onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 222
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    return-void
.end method

.method public onStartGetAdsInfo()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    return-void
.end method

.method public onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 206
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 207
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 209
    return-void
.end method
