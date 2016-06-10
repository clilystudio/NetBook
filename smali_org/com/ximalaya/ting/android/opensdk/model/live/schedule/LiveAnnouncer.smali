.class public Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field private liveAnnouncerId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveAnnouncerId()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->liveAnnouncerId:J

    return-wide v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->avatarUrl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setLiveAnnouncerId(J)V
    .locals 1

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->liveAnnouncerId:J

    .line 45
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->nickName:Ljava/lang/String;

    .line 55
    return-void
.end method
