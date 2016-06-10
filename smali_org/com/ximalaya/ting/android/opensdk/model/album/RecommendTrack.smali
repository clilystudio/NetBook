.class public Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private realTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "human_recommend_real_title"
    .end annotation
.end field

.field private tackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "human_recommend_track_title"
    .end annotation
.end field

.field private trackId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "human_recommend_track_id"
    .end annotation
.end field

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRealTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->realTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->tackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->trackId:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->uid:J

    return-wide v0
.end method

.method public setRealTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->realTitle:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTackTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->tackTitle:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setTrackId(J)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->trackId:J

    .line 56
    return-void
.end method

.method public setUid(J)V
    .locals 1

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->uid:J

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecommendTrack [uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->trackId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string v1, ", realTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->realTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;->tackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
