.class public Lcom/ximalaya/ting/android/opensdk/model/album/Album;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private albumIntro:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_intro"
    .end annotation
.end field

.field private albumTags:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_tags"
    .end annotation
.end field

.field private albumTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_title"
    .end annotation
.end field

.field private announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcer"
    .end annotation
.end field

.field private coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field private coverUrlMiddle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_middle"
    .end annotation
.end field

.field private coverUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_small"
    .end annotation
.end field

.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private favoriteCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field private id:J

.field private includeTrackCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "include_track_count"
    .end annotation
.end field

.field private isFinished:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_finished"
    .end annotation
.end field

.field private lastUptrack:Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_uptrack"
    .end annotation
.end field

.field private playCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_count"
    .end annotation
.end field

.field private recommendTrack:Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommend_track"
    .end annotation
.end field

.field private recommentSrc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommend_src"
    .end annotation
.end field

.field private soundLastListenId:J

.field private updatedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTags:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    return-object v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlMiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->createdAt:J

    return-wide v0
.end method

.method public getFavoriteCount()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->favoriteCount:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->id:J

    return-wide v0
.end method

.method public getIncludeTrackCount()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->includeTrackCount:J

    return-wide v0
.end method

.method public getIsFinished()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->isFinished:I

    return v0
.end method

.method public getLastUptrack()Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->lastUptrack:Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    return-object v0
.end method

.method public getPlayCount()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->playCount:J

    return-wide v0
.end method

.method public getRecommendTrack()Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrack:Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;

    return-object v0
.end method

.method public getRecommentSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommentSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundLastListenId()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->soundLastListenId:J

    return-wide v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->updatedAt:J

    return-wide v0
.end method

.method public setAlbumIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumIntro:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setAlbumTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTags:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTitle:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .line 131
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlLarge:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setCoverUrlMiddle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlMiddle:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlSmall:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setCreatedAt(J)V
    .locals 1

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->createdAt:J

    .line 201
    return-void
.end method

.method public setFavoriteCount(J)V
    .locals 1

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->favoriteCount:J

    .line 151
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->id:J

    .line 61
    return-void
.end method

.method public setIncludeTrackCount(J)V
    .locals 1

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->includeTrackCount:J

    .line 161
    return-void
.end method

.method public setIsFinished(I)V
    .locals 0

    .prologue
    .line 220
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->isFinished:I

    .line 221
    return-void
.end method

.method public setLastUptrack(Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->lastUptrack:Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    .line 171
    return-void
.end method

.method public setPlayCount(J)V
    .locals 1

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->playCount:J

    .line 141
    return-void
.end method

.method public setRecommendTrack(Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrack:Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;

    .line 181
    return-void
.end method

.method public setRecommentSrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommentSrc:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setSoundLastListenId(J)V
    .locals 1

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->soundLastListenId:J

    .line 211
    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 1

    .prologue
    .line 190
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->updatedAt:J

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Album [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    const-string v1, ", albumTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumIntro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumIntro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    const-string v1, ", coverUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 240
    const-string v1, ", announcer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->playCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    const-string v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->favoriteCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeTrackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->includeTrackCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUptrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->lastUptrack:Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    const-string v1, ", recommendTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrack:Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 244
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->updatedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    const-string v1, ", soundLastListenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->soundLastListenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->isFinished:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recommentSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommentSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
