.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$7;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChange(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;I)V
    .locals 2

    .prologue
    .line 529
    invoke-interface {p1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    move-result-object v0

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->HLS_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-interface {p1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->getDuration()I

    move-result v0

    .line 532
    if-lez v0, :cond_0

    .line 534
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$7;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$7;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayProgress(II)V

    .line 547
    :cond_0
    return-void
.end method
