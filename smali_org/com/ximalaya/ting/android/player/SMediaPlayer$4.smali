.class Lcom/ximalaya/ting/android/player/SMediaPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

.field private final synthetic val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iput-object p2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    # invokes: Lcom/ximalaya/ting/android/player/SMediaPlayer;->resetState()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$7(Lcom/ximalaya/ting/android/player/SMediaPlayer;)V

    .line 307
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;->onError(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;II)Z

    move-result v0

    .line 310
    if-nez v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$6(Lcom/ximalaya/ting/android/player/SMediaPlayer;I)V

    .line 316
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
