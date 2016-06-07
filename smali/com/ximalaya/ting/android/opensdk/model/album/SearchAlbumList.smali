.class public Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;"
        }
    .end annotation
.end field

.field private categoryId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field private tagName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_name"
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
    .line 19
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbums()Ljava/util/List;
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
    .line 73
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->albums:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->categoryId:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalPage:I

    return v0
.end method

.method public setAlbums(Ljava/util/List;)V
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
    .line 78
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->albums:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->categoryId:I

    .line 59
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->tagName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalCount:I

    .line 49
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalPage:I

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchAlbumList [totalPage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;->albums:Ljava/util/List;

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
