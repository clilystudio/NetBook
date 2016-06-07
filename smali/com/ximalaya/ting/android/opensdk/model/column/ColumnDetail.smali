.class public Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private columnContentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_content_type"
    .end annotation
.end field

.field private columnEditor:Lcom/ximalaya/ting/android/opensdk/model/column/ColumnEditor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_editor"
    .end annotation
.end field

.field private columnId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private columnIntro:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "column_intro"
    .end annotation
.end field

.field private coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field private logoSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo_small"
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
.method public getColumnContentType()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnContentType:I

    return v0
.end method

.method public getColumnEditor()Lcom/ximalaya/ting/android/opensdk/model/column/ColumnEditor;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnEditor:Lcom/ximalaya/ting/android/opensdk/model/column/ColumnEditor;

    return-object v0
.end method

.method public getColumnId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnId:J

    return-wide v0
.end method

.method public getColumnIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->logoSmall:Ljava/lang/String;

    return-object v0
.end method

.method public setColumnContentType(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnContentType:I

    .line 72
    return-void
.end method

.method public setColumnEditor(Lcom/ximalaya/ting/android/opensdk/model/column/ColumnEditor;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnEditor:Lcom/ximalaya/ting/android/opensdk/model/column/ColumnEditor;

    .line 102
    return-void
.end method

.method public setColumnId(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnId:J

    .line 52
    return-void
.end method

.method public setColumnIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnIntro:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->coverUrlLarge:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setLogoSmall(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->logoSmall:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnDetail [columnId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columnIntro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnIntro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columnContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->logoSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columnEditor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;->columnEditor:Lcom/ximalaya/ting/android/opensdk/model/column/ColumnEditor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
