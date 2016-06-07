.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmMediaPlayerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaPlayer(Landroid/content/Context;)Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    .locals 3

    .prologue
    .line 37
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;-><init>()V

    .line 47
    invoke-interface {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->isUseSystemPlayer()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->setUseSystemPlayer(Z)V

    .line 48
    return-object v1
.end method
