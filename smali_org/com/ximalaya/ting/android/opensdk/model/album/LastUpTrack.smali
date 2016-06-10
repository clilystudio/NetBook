.class public Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private duration:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private trackId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_id"
    .end annotation
.end field

.field private trackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_title"
    .end annotation
.end field

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
.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->createdAt:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->duration:J

    return-wide v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->trackId:J

    return-wide v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->updatedAt:J

    return-wide v0
.end method

.method public setCreatedAt(J)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->createdAt:J

    .line 67
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->duration:J

    .line 57
    return-void
.end method

.method public setTrackId(J)V
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->trackId:J

    .line 37
    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->trackTitle:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 1

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->updatedAt:J

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LastUpTrack [trackId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->trackId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->updatedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
