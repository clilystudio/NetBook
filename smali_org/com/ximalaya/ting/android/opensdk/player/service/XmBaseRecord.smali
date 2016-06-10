.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLAY_TYPE_LOCAL:I = 0x1

.field public static final PLAY_TYPE_ONLINE:I


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mBundleId:Ljava/lang/String;

.field private mCounting:Z

.field private mDeviceId:Ljava/lang/String;

.field private mDuration:I

.field private mId:J

.field private mLastEventTime:J

.field private mLastPostion:I

.field private mOSType:Ljava/lang/String;

.field private mPlaySource:I

.field private mPlayedSecs:I

.field private mSDKVersion:Ljava/lang/String;

.field private mStartedAt:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "android"

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mOSType:Ljava/lang/String;

    .line 41
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mSDKVersion:Ljava/lang/String;

    .line 45
    const/16 v0, 0x19

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mPlaySource:I

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mCounting:Z

    .line 26
    return-void
.end method


# virtual methods
.method public addDuration(I)V
    .locals 3

    .prologue
    .line 97
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mDuration:I

    int-to-float v1, p1

    const/high16 v2, 0x447a0000

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mDuration:I

    .line 98
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    if-ne p0, p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 205
    :cond_3
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    .line 206
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mId:J

    iget-wide v4, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mBundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mDuration:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mId:J

    return-wide v0
.end method

.method public getLastEventTime()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mLastEventTime:J

    return-wide v0
.end method

.method public getLastPostion()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mLastPostion:I

    return v0
.end method

.method public getOSType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mOSType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySource()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mPlaySource:I

    return v0
.end method

.method public getPlayedSecs()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mPlayedSecs:I

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStartedAt()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mStartedAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mId:J

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 196
    return v0
.end method

.method public isCounting()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mCounting:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mAppId:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setBundleId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mBundleId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setCounting(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mCounting:Z

    .line 62
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mDeviceId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setDuration(I)V
    .locals 2

    .prologue
    .line 92
    int-to-float v0, p1

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mDuration:I

    .line 93
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mId:J

    .line 118
    return-void
.end method

.method public setLastEventTime(J)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mLastEventTime:J

    .line 82
    return-void
.end method

.method public setLastPostion(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mLastPostion:I

    .line 72
    return-void
.end method

.method public setOSType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mOSType:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setPlaySource(I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mPlaySource:I

    .line 178
    return-void
.end method

.method public setPlayedSecs(I)V
    .locals 2

    .prologue
    .line 107
    int-to-float v0, p1

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mPlayedSecs:I

    .line 108
    return-void
.end method

.method public setSDKVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mSDKVersion:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setStartedAt(J)V
    .locals 1

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->mStartedAt:J

    .line 188
    return-void
.end method
