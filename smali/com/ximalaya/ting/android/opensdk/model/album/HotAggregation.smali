.class public Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;
.super Ljava/lang/Object;
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

.field private currentPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_page"
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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 96
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->albums:Ljava/util/List;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->categoryId:I

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->currentPage:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->totalPage:I

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
    .line 101
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->albums:Ljava/util/List;

    .line 102
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->categoryId:I

    .line 82
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->currentPage:I

    .line 72
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->tagName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->totalCount:I

    .line 62
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->totalPage:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotAggregation [totalPage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregation;->albums:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
