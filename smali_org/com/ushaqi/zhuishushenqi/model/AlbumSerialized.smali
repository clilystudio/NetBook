.class public Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private announcer:Ljava/lang/String;

.field private id:I

.field private intro:Ljava/lang/String;

.field private lastTrackTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalCount:J

.field private updateAt:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->id:I

    .line 24
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->title:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getIncludeTrackCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->totalCount:J

    .line 26
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->url:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->announcer:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getAlbumIntro()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->intro:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getUpdatedAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->updateAt:J

    .line 30
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->getLastUptrack()Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->lastTrackTitle:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getAnnouncer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->announcer:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->id:I

    return v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->lastTrackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->totalCount:J

    return-wide v0
.end method

.method public getUpdateAt()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->updateAt:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAnnouncer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->announcer:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->id:I

    .line 39
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->intro:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLastTrackTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->lastTrackTitle:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->title:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTotalCount(J)V
    .locals 1

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->totalCount:J

    .line 55
    return-void
.end method

.method public setUpdateAt(J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->updateAt:J

    .line 87
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AlbumSerialized;->url:Ljava/lang/String;

    .line 63
    return-void
.end method
