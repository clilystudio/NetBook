.class Lcom/ximalaya/ting/android/player/SMediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/SMediaPlayer;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$0(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$1(Lcom/ximalaya/ting/android/player/SMediaPlayer;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/SMediaPlayer;->isBuffering:Z
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$2(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$3(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/SMediaPlayer;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$0(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    .line 408
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->getCurrentPosition()I

    move-result v2

    .line 407
    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;->onPositionChange(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;I)V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/SMediaPlayer;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$4(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    # getter for: Lcom/ximalaya/ting/android/player/SMediaPlayer;->runnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$5(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
