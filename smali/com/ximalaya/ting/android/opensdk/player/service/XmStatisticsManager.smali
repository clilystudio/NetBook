.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "appid"

.field public static final KEY_BUNDLE_ID:Ljava/lang/String; = "bundleId"

.field public static final KEY_CLIENT:Ljava/lang/String; = "client"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_PLAYED_SECS:Ljava/lang/String; = "played_secs"

.field public static final KEY_PLAY_SOURCE:Ljava/lang/String; = "play_source"

.field public static final KEY_PLAY_TYPE:Ljava/lang/String; = "play_type"

.field public static final KEY_PROGRAM_ID:Ljava/lang/String; = "programId"

.field public static final KEY_RADIO_ID:Ljava/lang/String; = "radioId"

.field public static final KEY_REC_SRC:Ljava/lang/String; = "rec_src"

.field public static final KEY_REC_TRACK:Ljava/lang/String; = "rec_track"

.field public static final KEY_SCHEDULE_ID:Ljava/lang/String; = "programScheduleId"

.field public static final KEY_STARTED_AT:Ljava/lang/String; = "started_at"

.field public static final KEY_TRACK_ID:Ljava/lang/String; = "trackId"

.field public static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "XmStatisticsManager"

.field private static sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

.field private static sLock:[B


# instance fields
.field private mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

.field private mWorker:Landroid/os/HandlerThread;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->sLock:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->init()V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    if-nez v0, :cond_1

    .line 92
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->sLock:[B

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    .line 92
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "statistics-manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorker:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorkerHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method


# virtual methods
.method public onPauseTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V
    .locals 4

    .prologue
    .line 163
    if-nez p1, :cond_1

    .line 165
    const-string v0, "XmStatisticsManager"

    const-string v1, "onPauseTrack failed due to null track"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-nez v0, :cond_2

    .line 170
    const-string v0, "XmStatisticsManager"

    const-string v1, "onPauseTrack failed due to track has not been started!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "XmStatisticsManager"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPauseTrack id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->getLastEventTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 182
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v3, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->setLastEventTime(J)V

    .line 183
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->setLastPostion(I)V

    .line 184
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->setPlayedSecs(I)V

    .line 185
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->isCounting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->addDuration(I)V

    .line 188
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->setCounting(Z)V

    goto :goto_0
.end method

.method public onPlayTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;ZII)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 106
    if-nez p1, :cond_1

    .line 108
    const-string v0, "XmStatisticsManager"

    const-string v1, "onPlayTrack failed due to null track"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v0, "XmStatisticsManager"

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPlayTrack id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 113
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",online:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 114
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",dur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 117
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-nez v0, :cond_3

    .line 119
    new-instance v3, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    invoke-direct {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;-><init>()V

    .line 120
    invoke-virtual {v3, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setCounting(Z)V

    .line 121
    invoke-virtual {v3, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setLastEventTime(J)V

    .line 122
    invoke-virtual {v3, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setStartedAt(J)V

    .line 123
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setId(J)V

    .line 124
    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setPlayType(I)V

    .line 126
    invoke-virtual {v3, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setLastPostion(I)V

    .line 127
    invoke-virtual {v3, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setDuration(I)V

    .line 128
    invoke-virtual {v3, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setPlayedSecs(I)V

    .line 129
    iput-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 125
    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    .line 136
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-eqz v1, :cond_4

    .line 146
    invoke-virtual {p0, p1, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onStopTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V

    goto/16 :goto_0

    .line 150
    :cond_4
    invoke-virtual {v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setCounting(Z)V

    .line 151
    invoke-virtual {v0, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->setLastEventTime(J)V

    goto/16 :goto_0

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, v6, v6}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onRadioStop(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)V

    goto/16 :goto_0
.end method

.method public onRadioPause(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)V
    .locals 6

    .prologue
    .line 307
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 313
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->isCounting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getLastEventTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->addDuration(I)V

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setCounting(Z)V

    .line 318
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setLastEventTime(J)V

    goto :goto_0
.end method

.method public onRadioStart(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 252
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    .line 255
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->getLastEventTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v1, v4

    .line 256
    iget-object v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v4, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->setLastEventTime(J)V

    .line 257
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->isCounting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v2, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->addDuration(I)V

    .line 260
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-virtual {v1, v6}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;->setCounting(Z)V

    .line 262
    :cond_0
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;

    invoke-direct {v1, p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;)V

    .line 263
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    .line 269
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->isCounting()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getLastEventTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->addDuration(I)V

    .line 277
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setLastEventTime(J)V

    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {v0, v7}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setCounting(Z)V

    goto :goto_1

    .line 281
    :cond_4
    if-eqz p1, :cond_5

    .line 283
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;-><init>()V

    .line 284
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getDataId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setId(J)V

    .line 285
    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setStartedAt(J)V

    .line 286
    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setLastEventTime(J)V

    .line 287
    invoke-virtual {v0, v6}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setDuration(I)V

    .line 288
    invoke-virtual {v0, v7}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setCounting(Z)V

    .line 289
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    goto :goto_0

    .line 291
    :cond_5
    if-eqz p2, :cond_1

    .line 293
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;-><init>()V

    .line 294
    invoke-virtual {p2}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getDataId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setScheduleId(J)V

    .line 295
    invoke-virtual {p2}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getProgramId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setProgramId(J)V

    .line 296
    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setStartedAt(J)V

    .line 297
    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setLastEventTime(J)V

    .line 298
    invoke-virtual {v0, v6}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setDuration(I)V

    .line 299
    invoke-virtual {v0, v7}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setCounting(Z)V

    .line 300
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    goto :goto_0
.end method

.method public onRadioStop(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)V
    .locals 6

    .prologue
    .line 328
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    if-nez v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 333
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    .line 334
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->isCounting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getLastEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->addDuration(I)V

    .line 337
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->setCounting(Z)V

    .line 339
    :cond_2
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    invoke-direct {v0, p0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;)V

    .line 340
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    goto :goto_0
.end method

.method public onRadioSwitch(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onRadioStop(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)V

    .line 324
    return-void
.end method

.method public onStopTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V
    .locals 4

    .prologue
    .line 194
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "XmStatisticsManager"

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStopTrack id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onPauseTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V

    .line 206
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    invoke-direct {v1, p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;)V

    .line 207
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    goto :goto_0
.end method

.method public onSwitchTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V
    .locals 0

    .prologue
    .line 213
    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p0, p2, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onStopTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V

    .line 217
    :cond_0
    return-void
.end method

.method public onTrackBuffering(Lcom/ximalaya/ting/android/opensdk/model/track/Track;ZI)V
    .locals 4

    .prologue
    .line 221
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v0, "XmStatisticsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTrackBuffering id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    if-eqz v0, :cond_0

    .line 236
    if-eqz p2, :cond_2

    .line 238
    invoke-virtual {p0, p1, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onPauseTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    .line 244
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getPlayType()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 245
    :goto_1
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getDuration()I

    move-result v0

    .line 243
    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onPlayTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;ZII)V

    goto :goto_0

    .line 244
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public release()V
    .locals 3

    .prologue
    .line 346
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->sLock:[B

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 350
    const/4 v0, 0x0

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    .line 346
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
