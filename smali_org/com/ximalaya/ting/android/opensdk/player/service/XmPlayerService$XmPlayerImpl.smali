.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)V
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPlayCache()V
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getCurPlayUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->cleanUpCacheSound(Ljava/lang/String;)V

    .line 1226
    :cond_0
    return-void
.end method

.method public getCurrIndex()I
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getDuration()I

    move-result v0

    return v0
.end method

.method public getParam()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlayListSize()I
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 1239
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayMode()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaySourceType()I
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlaySource()I

    move-result v0

    return v0
.end method

.method public getPlayerStatus()I
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$14(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->isAdsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    const/4 v0, 0x3

    .line 1028
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getPlayerState()I

    move-result v0

    goto :goto_0
.end method

.method public getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v0

    return-object v0
.end method

.method public getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 2

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->getPlaySourceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayableModel(I)Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 1041
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNextSound()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1114
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrListSize()I

    move-result v2

    .line 1115
    if-gt v2, v1, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return v0

    .line 1118
    :cond_1
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrIndex()I

    move-result v3

    .line 1119
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_0

    move v0, v1

    .line 1120
    goto :goto_0
.end method

.method public hasPreSound()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1098
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrListSize()I

    move-result v2

    .line 1099
    if-gt v2, v1, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return v0

    .line 1102
    :cond_1
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrIndex()I

    move-result v2

    .line 1103
    if-lez v2, :cond_0

    .line 1106
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    move v0, v1

    .line 1107
    goto :goto_0
.end method

.method public isAdsActive()Z
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$14(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$14(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->isAdsActive()Z

    move-result v0

    .line 1259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnlineSource()Z
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->isOnlineSource()Z

    move-result v0

    .line 1216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1250
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pausePlay()Z
    .locals 1

    .prologue
    .line 963
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->pausePlay()Z

    move-result v0

    return v0
.end method

.method public play(I)Z
    .locals 2

    .prologue
    .line 958
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->play(IZ)Z
    invoke-static {v0, p1, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$11(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;IZ)Z

    move-result v0

    return v0
.end method

.method public playNext()Z
    .locals 1

    .prologue
    .line 948
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playNext()Z

    move-result v0

    return v0
.end method

.method public playPre()Z
    .locals 1

    .prologue
    .line 943
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playPre()Z

    move-result v0

    return v0
.end method

.method public playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1151
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$20(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->setAudioFocusAtStartState()V

    .line 1152
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$21(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->isUseSystemPlayer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return v0

    .line 1155
    :cond_1
    if-eqz p1, :cond_0

    .line 1159
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$22(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->stop()Z

    .line 1161
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->setRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)V

    .line 1162
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$23(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    move-result-object v1

    const/4 v2, 0x0

    .line 1163
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getLastIndex()I

    move-result v3

    const/4 v4, 0x0

    .line 1162
    invoke-interface {v1, v2, v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundSwitch(III)V

    .line 1164
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getRadioUrl(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$24(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->initAndPlay(Ljava/lang/String;I)V

    .line 1165
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-static {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$25(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    const/4 v0, 0x1

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v1

    .line 1170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V
    .locals 1

    .prologue
    .line 1178
    if-eqz p1, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1181
    :cond_0
    return-void
.end method

.method public registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V
    .locals 2

    .prologue
    .line 974
    const-string v0, "XmPlayerService"

    const-string v1, "registePlayerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    if-eqz p1, :cond_0

    .line 976
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 978
    :cond_0
    return-void
.end method

.method public seekTo(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1074
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$14(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->isAdsActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return v0

    .line 1077
    :cond_1
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlaySource()I

    move-result v1

    .line 1078
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->seekTo(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1128
    const-string v0, "XmPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAppSecret "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-static {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$15(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Ljava/lang/String;)V

    .line 1130
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppSecret:Ljava/lang/String;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$16(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method public setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-static {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$26(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V

    .line 1234
    return-void
.end method

.method public setNotification(ILandroid/app/Notification;)V
    .locals 2

    .prologue
    .line 1141
    if-eqz p2, :cond_0

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mService:Landroid/app/Service;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$17()Landroid/app/Service;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1142
    const-string v0, "XmPlayerService"

    const-string v1, "setNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mService:Landroid/app/Service;
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$17()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 1144
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-static {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$18(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Landroid/app/Notification;)V

    .line 1145
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-static {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$19(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;I)V

    .line 1147
    :cond_0
    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .prologue
    .line 1196
    :try_start_0
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getDefaultPagesize()I

    move-result v0

    .line 1197
    if-eq v0, p1, :cond_0

    .line 1199
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setDefaultPagesize(I)V
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1202
    :catch_0
    move-exception v0

    .line 1204
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPlayIndex(I)Z
    .locals 2

    .prologue
    .line 953
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    const/4 v1, 0x0

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->play(IZ)Z
    invoke-static {v0, p1, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$11(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;IZ)Z

    move-result v0

    return v0
.end method

.method public setPlayList(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
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

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->isNewList(Ljava/util/List;)Z
    invoke-static {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$13(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->stop()Z

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 1006
    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-static {p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->valueOf(Ljava/lang/String;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->setPlayMode(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    .line 991
    return-void
.end method

.method public startPlay()Z
    .locals 1

    .prologue
    .line 968
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->startPlay()Z

    move-result v0

    return v0
.end method

.method public stopPlay()Z
    .locals 1

    .prologue
    .line 938
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->stopPlay()Z

    move-result v0

    return v0
.end method

.method public unregisteAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V
    .locals 1

    .prologue
    .line 1186
    if-eqz p1, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1189
    :cond_0
    return-void
.end method

.method public unregistePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V
    .locals 1

    .prologue
    .line 983
    if-eqz p1, :cond_0

    .line 984
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 986
    :cond_0
    return-void
.end method
