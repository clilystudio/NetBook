.class public Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "SourceFile"


# instance fields
.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

.field private tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;-><init>()V

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setTracks(Ljava/util/List;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalCount:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalPage:I

    return v0
.end method

.method public getTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->tracks:Ljava/util/List;

    return-object v0
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->params:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalCount:I

    .line 86
    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalPage:I

    .line 94
    return-void
.end method

.method public setTracks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->tracks:Ljava/util/List;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommonTrackList [tracks="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->tracks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCommonParams(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->params:Ljava/util/Map;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->params:Ljava/util/Map;

    .line 54
    iget v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalCount:I

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalCount:I

    .line 55
    iget v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalPage:I

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalPage:I

    .line 56
    return-void
.end method

.method public updateCommonTrackList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->params:Ljava/util/Map;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->params:Ljava/util/Map;

    .line 43
    iget v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalCount:I

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalCount:I

    .line 44
    iget v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalPage:I

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->totalPage:I

    .line 45
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->tracks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->tracks:Ljava/util/List;

    iget-object v1, p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->tracks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->tracks:Ljava/util/List;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->tracks:Ljava/util/List;

    goto :goto_0
.end method
