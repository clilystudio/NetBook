.class Lcom/ximalaya/ting/android/player/SMediaPlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

.field private final synthetic val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iput-object p2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    const-string v1, "onPrepared"

    # invokes: Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$9(Lcom/ximalaya/ting/android/player/SMediaPlayer;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$6(Lcom/ximalaya/ting/android/player/SMediaPlayer;I)V

    .line 370
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$10(Lcom/ximalaya/ting/android/player/SMediaPlayer;Z)V

    .line 371
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iget-object v1, v1, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$11(Lcom/ximalaya/ting/android/player/SMediaPlayer;I)V

    .line 372
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iget-object v1, v1, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$12(Lcom/ximalaya/ting/android/player/SMediaPlayer;I)V

    .line 373
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;->onPrepared(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V

    .line 375
    return-void
.end method
