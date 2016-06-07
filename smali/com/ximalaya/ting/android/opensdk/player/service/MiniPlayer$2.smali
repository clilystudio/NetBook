.class Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;I)V

    .line 159
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onComplete()V

    .line 167
    :cond_1
    return-void
.end method
