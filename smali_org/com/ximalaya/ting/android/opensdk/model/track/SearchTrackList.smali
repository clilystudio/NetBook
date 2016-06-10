.class public Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;
.super Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
.source "SourceFile"


# instance fields
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
    .line 37
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->categoryId:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->categoryId:I

    .line 43
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;->tagName:Ljava/lang/String;

    .line 53
    return-void
.end method
