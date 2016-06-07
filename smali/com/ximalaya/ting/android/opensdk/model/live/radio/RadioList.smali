.class public Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private currentPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_page"
    .end annotation
.end field

.field private radios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;",
            ">;"
        }
    .end annotation
.end field

.field private totalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_count"
    .end annotation
.end field

.field private totalPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_page"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->currentPage:I

    return v0
.end method

.method public getRadios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->radios:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->totalPage:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->currentPage:I

    .line 69
    return-void
.end method

.method public setRadios(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->radios:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->totalCount:I

    .line 59
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->totalPage:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RadioList [totalPage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radios="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;->radios:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
