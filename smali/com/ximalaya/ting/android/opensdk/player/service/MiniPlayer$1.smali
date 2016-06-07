.class Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;I)V

    .line 145
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onError(Ljava/lang/Exception;II)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
