.class public interface abstract Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract clearPlayCache()V
.end method

.method public abstract getCurrIndex()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getParam()Ljava/util/Map;
.end method

.method public abstract getPlayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListSize()I
.end method

.method public abstract getPlayMode()Ljava/lang/String;
.end method

.method public abstract getPlaySourceType()I
.end method

.method public abstract getPlayerStatus()I
.end method

.method public abstract getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
.end method

.method public abstract getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
.end method

.method public abstract hasNextSound()Z
.end method

.method public abstract hasPreSound()Z
.end method

.method public abstract isAdsActive()Z
.end method

.method public abstract isOnlineSource()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pausePlay()Z
.end method

.method public abstract play(I)Z
.end method

.method public abstract playNext()Z
.end method

.method public abstract playPre()Z
.end method

.method public abstract playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z
.end method

.method public abstract registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V
.end method

.method public abstract registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V
.end method

.method public abstract seekTo(I)Z
.end method

.method public abstract setAppSecret(Ljava/lang/String;)V
.end method

.method public abstract setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V
.end method

.method public abstract setNotification(ILandroid/app/Notification;)V
.end method

.method public abstract setPageSize(I)V
.end method

.method public abstract setPlayIndex(I)Z
.end method

.method public abstract setPlayList(Ljava/util/Map;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPlayMode(Ljava/lang/String;)V
.end method

.method public abstract startPlay()Z
.end method

.method public abstract stopPlay()Z
.end method

.method public abstract unregisteAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V
.end method

.method public abstract unregistePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V
.end method
