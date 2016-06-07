.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;II)Z
    .locals 3

    .prologue
    .line 454
    const-string v0, "XmPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;I)V

    .line 456
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v0

    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;

    .line 459
    invoke-direct {v1, p2, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;-><init>(II)V

    .line 458
    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z

    .line 461
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
