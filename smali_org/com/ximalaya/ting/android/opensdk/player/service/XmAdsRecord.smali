.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adItemId:J

.field private adSource:I

.field private androidId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private logType:Ljava/lang/String;

.field private positionName:Ljava/lang/String;

.field private responseId:J

.field private time:J

.field private trackId:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "soundShow"

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->logType:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->adSource:I

    .line 36
    const-string v0, "sound_patch"

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->positionName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 55
    :cond_3
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;

    .line 56
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->responseId:J

    iget-wide v4, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->responseId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAdItemId()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->adItemId:J

    return-wide v0
.end method

.method public getAdSource()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->adSource:I

    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->logType:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->positionName:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseId()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->responseId:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->time:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->trackId:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->responseId:J

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->responseId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 46
    return v0
.end method

.method public setAdItemId(J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->adItemId:J

    .line 108
    return-void
.end method

.method public setAdSource(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->adSource:I

    .line 128
    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->androidId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->appKey:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setLogType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->logType:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPositionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->positionName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setResponseId(J)V
    .locals 1

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->responseId:J

    .line 118
    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->time:J

    .line 78
    return-void
.end method

.method public setTrackId(J)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->trackId:J

    .line 88
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->version:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v1, "{\"logType\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->logType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"time\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"trackId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->trackId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"androidId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->androidId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"adItemId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->adItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"responseId\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->responseId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"adSource\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->adSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"positionName\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->positionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"version\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"appKey\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "toJsonString"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
