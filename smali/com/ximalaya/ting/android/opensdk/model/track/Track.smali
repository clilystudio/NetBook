.class public Lcom/ximalaya/ting/android/opensdk/model/track/Track;
.super Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subordinated_album"
    .end annotation
.end field

.field private announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcer"
    .end annotation
.end field

.field private commentCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment_count"
    .end annotation
.end field

.field private coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field private coverUrlMiddle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_middle"
    .end annotation
.end field

.field private coverUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_small"
    .end annotation
.end field

.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private downloadCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_count"
    .end annotation
.end field

.field private downloadSequence:I

.field private downloadSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_size"
    .end annotation
.end field

.field private downloadStatus:I

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_url"
    .end annotation
.end field

.field private downloadedSaveFilePath:Ljava/lang/String;

.field private downloadedSize:J

.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field public extra:Ljava/lang/Object;

.field private favoriteCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field private insertSequence:I

.field private lastPlayedMills:I

.field private orderNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_num"
    .end annotation
.end field

.field private playCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_count"
    .end annotation
.end field

.field private playSize24M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_24_m4a"
    .end annotation
.end field

.field private playSize32:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_32"
    .end annotation
.end field

.field private playSize64:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_64"
    .end annotation
.end field

.field private playSize64m4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_64_m4a"
    .end annotation
.end field

.field private playUrl24M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_24_m4a"
    .end annotation
.end field

.field private playUrl32:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_32"
    .end annotation
.end field

.field private playUrl64:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_64"
    .end annotation
.end field

.field private playUrl64M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_64_m4a"
    .end annotation
.end field

.field private source:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field private trackIntro:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_intro"
    .end annotation
.end field

.field private trackStatus:I

.field private trackTags:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_tags"
    .end annotation
.end field

.field private trackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_title"
    .end annotation
.end field

.field private updatedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 547
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    return-object v0
.end method

.method public getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    return v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlMiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    return-wide v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    return v0
.end method

.method public getDownloadSequence()I
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSequence:I

    return v0
.end method

.method public getDownloadSize()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    return-wide v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSaveFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    return v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavoriteCount()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    return v0
.end method

.method public getInsertSequence()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    return v0
.end method

.method public getLastPlayedMills()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->lastPlayedMills:I

    return v0
.end method

.method public getOrderNum()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    return v0
.end method

.method public getPlaySize24M4a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySize32()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    return v0
.end method

.method public getPlaySize64()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    return v0
.end method

.method public getPlaySize64m4a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl24M4a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl32()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl64M4a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    return v0
.end method

.method public getTrackIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackStatus()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    return v0
.end method

.method public getTrackTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 495
    invoke-super {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    .line 502
    const-class v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .line 503
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 502
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    .line 522
    const-class v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    .line 521
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->lastPlayedMills:I

    .line 528
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    .line 529
    return-void
.end method

.method public setAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    .line 358
    return-void
.end method

.method public setAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .line 168
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .prologue
    .line 207
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    .line 208
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setCoverUrlMiddle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setCreatedAt(J)V
    .locals 1

    .prologue
    .line 367
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    .line 368
    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    .line 218
    return-void
.end method

.method public setDownloadSequence(I)V
    .locals 0

    .prologue
    .line 417
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSequence:I

    .line 418
    return-void
.end method

.method public setDownloadSize(J)V
    .locals 1

    .prologue
    .line 327
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    .line 328
    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .prologue
    .line 407
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    .line 408
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setDownloadedSaveFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 1

    .prologue
    .line 387
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    .line 388
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    .line 178
    return-void
.end method

.method public setExtra(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    .line 438
    return-void
.end method

.method public setFavoriteCount(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    .line 198
    return-void
.end method

.method public setInsertSequence(I)V
    .locals 0

    .prologue
    .line 427
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    .line 428
    return-void
.end method

.method public setLastPlayedMills(I)V
    .locals 0

    .prologue
    .line 453
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->lastPlayedMills:I

    .line 454
    return-void
.end method

.method public setOrderNum(I)V
    .locals 0

    .prologue
    .line 307
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    .line 308
    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    .line 188
    return-void
.end method

.method public setPlaySize24M4a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setPlaySize32(I)V
    .locals 0

    .prologue
    .line 237
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    .line 238
    return-void
.end method

.method public setPlaySize64(I)V
    .locals 0

    .prologue
    .line 257
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    .line 258
    return-void
.end method

.method public setPlaySize64m4a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setPlayUrl24M4a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setPlayUrl32(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setPlayUrl64(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setPlayUrl64M4a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setSource(I)V
    .locals 0

    .prologue
    .line 337
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    .line 338
    return-void
.end method

.method public setTrackIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTrackStatus(I)V
    .locals 0

    .prologue
    .line 397
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    .line 398
    return-void
.end method

.method public setTrackTags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 1

    .prologue
    .line 347
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    .line 348
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Track [trackTitle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 553
    const-string v1, ", trackIntro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 555
    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", announcer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 557
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 558
    const-string v1, ", commentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 559
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 561
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 563
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 564
    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadedSaveFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 566
    const-string v1, ", trackStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 567
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 568
    const-string v1, ", lastPlayedMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->lastPlayedMills:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", insertSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 569
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 459
    invoke-super {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 460
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 467
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 483
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 484
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 485
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 487
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 488
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->lastPlayedMills:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 491
    return-void
.end method
