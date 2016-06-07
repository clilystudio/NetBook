.class public Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;
.super Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
.source "SourceFile"


# instance fields
.field private categoryId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
    .end annotation
.end field

.field private pageid:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_page"
    .end annotation
.end field

.field private tagname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tag_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->categoryId:I

    return v0
.end method

.method public getPageid()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->pageid:I

    return v0
.end method

.method public getTagname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->tagname:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->categoryId:I

    .line 46
    return-void
.end method

.method public setPageid(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->pageid:I

    .line 66
    return-void
.end method

.method public setTagname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->tagname:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LastPlayTrackList [categoryId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->tagname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;->pageid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
