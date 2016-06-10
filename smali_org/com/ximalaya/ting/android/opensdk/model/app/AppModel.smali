.class public Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private dataId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_url"
    .end annotation
.end field

.field private filename:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_name"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sdk_or_app_name"
    .end annotation
.end field

.field private osType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_os_type"
    .end annotation
.end field

.field private packId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pack_id"
    .end annotation
.end field

.field private releaseInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release_info"
    .end annotation
.end field

.field private releaseType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "release_type"
    .end annotation
.end field

.field private updatedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field

.field private versionCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version_code"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version_name"
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
.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->createdAt:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->dataId:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOsType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->osType:I

    return v0
.end method

.method public getPackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->packId:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->releaseInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseType()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->releaseType:I

    return v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->updatedAt:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(J)V
    .locals 1

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->createdAt:J

    .line 164
    return-void
.end method

.method public setDataId(J)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->dataId:J

    .line 64
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->downloadUrl:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->filename:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->name:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setOsType(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->osType:I

    .line 104
    return-void
.end method

.method public setPackId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->packId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setReleaseInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->releaseInfo:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setReleaseType(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->releaseType:I

    .line 74
    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 1

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->updatedAt:J

    .line 154
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->versionCode:I

    .line 114
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->versionName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppModel [dataId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->dataId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", releaseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->releaseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->packId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", osType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->osType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", releaseInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->releaseInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->updatedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
