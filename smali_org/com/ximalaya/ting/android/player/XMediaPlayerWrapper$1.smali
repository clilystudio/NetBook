.class Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper$1;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;II)Z
    .locals 2

    .prologue
    .line 201
    const/16 v0, -0x3f3

    if-ne p3, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper$1;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;

    # invokes: Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->reUseSMediaplayer()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->access$0(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)V

    .line 205
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper$1;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->access$1(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper$1;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->access$1(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper$1;->this$0:Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;

    # getter for: Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->access$2(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;->onError(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;II)Z

    move-result v0

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
