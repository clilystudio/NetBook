.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;
.super Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;
.source "SourceFile"


# instance fields
.field private mPlayType:I

.field private mRecSrc:Ljava/lang/String;

.field private mRecTrack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->mPlayType:I

    return v0
.end method

.method public getRecSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->mRecSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getRecTrack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->mRecTrack:Ljava/lang/String;

    return-object v0
.end method

.method public setPlayType(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->mPlayType:I

    .line 40
    return-void
.end method

.method public setRecSrc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->mRecSrc:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setRecTrack(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->mRecTrack:Ljava/lang/String;

    .line 60
    return-void
.end method
