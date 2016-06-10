.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;II)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 475
    .line 476
    const/16 v2, 0xa

    if-ne p2, v2, :cond_3

    .line 478
    const/16 v2, 0x2bd

    if-ne p3, v2, :cond_1

    .line 480
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;Z)V

    .line 489
    :goto_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mBuffering:Z
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferingStart()V

    .line 500
    :cond_0
    :goto_1
    return v0

    .line 483
    :cond_1
    const/16 v2, 0x2be

    if-ne p3, v2, :cond_3

    .line 485
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-static {v2, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;Z)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferingStop()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
