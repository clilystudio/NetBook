.class public Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private albumId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private coverUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_up_track_cover_path"
    .end annotation
.end field

.field private trackId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_up_track_id"
    .end annotation
.end field

.field private trackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_up_track_title"
    .end annotation
.end field

.field private updateAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_up_track_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->albumId:J

    return-wide v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->trackId:J

    return-wide v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateAt()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->updateAt:J

    return-wide v0
.end method

.method public setAlbumId(J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->albumId:J

    .line 49
    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->coverUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTrackId(J)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->trackId:J

    .line 59
    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->trackTitle:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setUpdateAt(J)V
    .locals 1

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->updateAt:J

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateBatch [albumId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->albumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->trackId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    const-string v1, ", trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string v1, ", updateAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatch;->updateAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
