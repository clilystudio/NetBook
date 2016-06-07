.class public Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;
.super Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
.source "SourceFile"


# instance fields
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->categoryId:I

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->currentPage:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->categoryId:I

    .line 55
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->currentPage:I

    .line 45
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->tagName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatchTrackList [currentPage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->currentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
