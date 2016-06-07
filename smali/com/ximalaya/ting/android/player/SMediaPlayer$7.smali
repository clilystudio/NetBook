.class Lcom/ximalaya/ting/android/player/SMediaPlayer$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

.field private final synthetic val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$7;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iput-object p2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$7;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$7;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$13(Lcom/ximalaya/ting/android/player/SMediaPlayer;Z)V

    .line 390
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$7;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$7;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V

    .line 392
    return-void
.end method
