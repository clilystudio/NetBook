.class Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    .line 257
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(I)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 326
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 327
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 328
    return-void
.end method

.method public onBufferingStart()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 333
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 335
    return-void
.end method

.method public onBufferingStop()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 341
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 343
    return-void
.end method

.method public onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 318
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    return-void
.end method

.method public onPlayPause()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 295
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 296
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 297
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 298
    return-void
.end method

.method public onPlayStart()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 288
    return-void
.end method

.method public onPlayStop()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 281
    return-void
.end method

.method public onSoundPlayComplete()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 312
    return-void
.end method

.method public onSoundPrepared()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 265
    return-void
.end method

.method public onSoundSwitch(III)V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 272
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    return-void
.end method
