.class Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

.field final synthetic this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/player/XMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    .line 436
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 437
    iput-object p2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    .line 438
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 447
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$0(Lcom/ximalaya/ting/android/player/XMediaPlayer;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    .line 448
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 449
    const-string v1, "handleMessage11 mPlayState NOT_ARCH_SUPPORT"

    .line 448
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 452
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage11 mPlayState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I
    invoke-static {v2}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$0(Lcom/ximalaya/ting/android/player/XMediaPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 533
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 458
    :sswitch_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$1(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$1(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;->onPrepared(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V

    goto :goto_0

    .line 462
    :sswitch_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$2(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$2(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;->onCompletion(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V

    goto :goto_0

    .line 481
    :sswitch_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$3(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$3(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    .line 483
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 482
    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;I)V

    goto :goto_0

    .line 487
    :sswitch_4
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$4(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$4(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V

    goto/16 :goto_0

    .line 499
    :sswitch_5
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    const/4 v0, 0x0

    .line 502
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$5(Lcom/ximalaya/ting/android/player/XMediaPlayer;I)V

    .line 503
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$6(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 504
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$6(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    .line 505
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 504
    invoke-interface {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;->onError(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;II)Z

    move-result v0

    .line 507
    :cond_2
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$2(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$2(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;->onCompletion(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V

    goto/16 :goto_0

    .line 514
    :sswitch_6
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$7(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$7(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;->onInfo(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;II)Z

    goto/16 :goto_0

    .line 525
    :sswitch_7
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnTimedChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$8(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnTimedChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->access$8(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    .line 528
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaPlayer;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->getCurrentPosition()I

    move-result v2

    .line 527
    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;->onPositionChange(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;I)V

    goto/16 :goto_0

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_5
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_0
        0xca -> :sswitch_7
    .end sparse-switch
.end method
