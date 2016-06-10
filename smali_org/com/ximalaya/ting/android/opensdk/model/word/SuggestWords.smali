.class public Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private albumList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albums"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/word/AlbumResult;",
            ">;"
        }
    .end annotation
.end field

.field private albumTotalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_total_count"
    .end annotation
.end field

.field private keyWordList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keywords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;",
            ">;"
        }
    .end annotation
.end field

.field private keywordTotalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyword_total_count"
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
.method public getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/word/AlbumResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->albumList:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumTotalCount()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->albumTotalCount:I

    return v0
.end method

.method public getKeyWordList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->keyWordList:Ljava/util/List;

    return-object v0
.end method

.method public getKeywordTotalCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->keywordTotalCount:I

    return v0
.end method

.method public setAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/word/AlbumResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->albumList:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setAlbumTotalCount(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->albumTotalCount:I

    .line 50
    return-void
.end method

.method public setKeyWordList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/word/QueryResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->keyWordList:Ljava/util/List;

    .line 80
    return-void
.end method

.method public setKeywordTotalCount(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->keywordTotalCount:I

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuggestWords [albumTotalCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->albumTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string v1, ", albumList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->albumList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywordTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->keywordTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyWordList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;->keyWordList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
