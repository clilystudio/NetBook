.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;I)V

    .line 414
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-interface {p1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;I)V

    .line 415
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundPrepared()V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->play()Z

    .line 422
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;Z)V

    .line 424
    :cond_1
    return-void
.end method
