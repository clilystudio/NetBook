.class public Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private albumId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_id"
    .end annotation
.end field

.field private bannerContentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_content_type"
    .end annotation
.end field

.field private bannerId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private bannerRedirectUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_redirect_url"
    .end annotation
.end field

.field private bannerShortTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_short_title"
    .end annotation
.end field

.field private bannerTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_title"
    .end annotation
.end field

.field private bannerUid:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_uid"
    .end annotation
.end field

.field private bannerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_url"
    .end annotation
.end field

.field private canShare:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "can_share"
    .end annotation
.end field

.field private columnContentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_content_type"
    .end annotation
.end field

.field private columnId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_id"
    .end annotation
.end field

.field private isExternalUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_external_url"
    .end annotation
.end field

.field private thirdPartyUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "third_party_url"
    .end annotation
.end field

.field private trackId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->albumId:J

    return-wide v0
.end method

.method public getBannerContentType()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerContentType:I

    return v0
.end method

.method public getBannerId()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerId:J

    return-wide v0
.end method

.method public getBannerRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerShortTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerShortTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerUid()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerUid:I

    return v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->columnContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnId()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->columnId:I

    return v0
.end method

.method public getIsExternalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->isExternalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->thirdPartyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->trackId:I

    return v0
.end method

.method public isCanShare()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->canShare:Z

    return v0
.end method

.method public setAlbumId(J)V
    .locals 1

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->albumId:J

    .line 178
    return-void
.end method

.method public setBannerContentType(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerContentType:I

    .line 128
    return-void
.end method

.method public setBannerId(J)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerId:J

    .line 68
    return-void
.end method

.method public setBannerRedirectUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerRedirectUrl:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setBannerShortTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerShortTitle:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setBannerTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerTitle:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setBannerUid(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerUid:I

    .line 138
    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerUrl:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setCanShare(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->canShare:Z

    .line 118
    return-void
.end method

.method public setColumnContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->columnContentType:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setColumnId(I)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->columnId:I

    .line 158
    return-void
.end method

.method public setIsExternalUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->isExternalUrl:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setThirdPartyUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->thirdPartyUrl:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setTrackId(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->trackId:I

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RankBanners [bannerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerShortTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerShortTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string v1, ", bannerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerRedirectUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->canShare:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string v1, ", bannerContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->bannerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->columnId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const-string v1, ", columnContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->columnContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->albumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thirdPartyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->thirdPartyUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string v1, ", isExternalUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/banner/Banner;->isExternalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
