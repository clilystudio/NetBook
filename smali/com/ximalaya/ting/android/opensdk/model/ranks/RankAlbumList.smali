.class public Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private currentPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_page"
    .end annotation
.end field

.field private rankAlbumList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albums"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
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
    .line 32
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->currentPage:I

    return v0
.end method

.method public getRankAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->rankAlbumList:Ljava/util/List;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->totalPage:I

    return v0
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->currentPage:I

    .line 71
    return-void
.end method

.method public setRankAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->rankAlbumList:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->totalCount:I

    .line 61
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->totalPage:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RankAlbumList [totalPage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v1, ", rankAlbumList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;->rankAlbumList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
