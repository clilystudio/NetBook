.class public Lcom/ximalaya/ting/android/opensdk/model/column/Column;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private columnContentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_content_type"
    .end annotation
.end field

.field private columnFootNote:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_foot_note"
    .end annotation
.end field

.field private columnId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private columnSubTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_sub_title"
    .end annotation
.end field

.field private columnTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_title"
    .end annotation
.end field

.field private coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field private coverUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_small"
    .end annotation
.end field

.field private isHot:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_hot"
    .end annotation
.end field

.field private releasedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "released_at"
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
.method public getColumnContentType()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnContentType:I

    return v0
.end method

.method public getColumnFootNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnFootNote:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnId()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnId:J

    return-wide v0
.end method

.method public getColumnSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getReleasedAt()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->releasedAt:J

    return-wide v0
.end method

.method public isHot()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->isHot:Z

    return v0
.end method

.method public setColumnContentType(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnContentType:I

    .line 97
    return-void
.end method

.method public setColumnFootNote(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnFootNote:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setColumnId(J)V
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnId:J

    .line 57
    return-void
.end method

.method public setColumnSubTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnSubTitle:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setColumnTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnTitle:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->coverUrlLarge:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->coverUrlSmall:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setHot(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->isHot:Z

    .line 137
    return-void
.end method

.method public setReleasedAt(J)V
    .locals 1

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->releasedAt:J

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column [columnId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columnTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    const-string v1, ", columnSubTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columnFootNote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnFootNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columnContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->columnContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    const-string v1, ", coverUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", releasedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->releasedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/Column;->isHot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
