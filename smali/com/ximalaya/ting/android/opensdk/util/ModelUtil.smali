.class public Lcom/ximalaya/ting/android/opensdk/util/ModelUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static announcerToLiveAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;)Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;
    .locals 4

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 164
    :cond_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->getAnnouncerId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->setLiveAnnouncerId(J)V

    .line 166
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->setNickName(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->setAvatarUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static liveAnnouncerToAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;)Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .locals 4

    .prologue
    .line 173
    if-nez p0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 177
    :cond_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->getLiveAnnouncerId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->setAnnouncerId(J)V

    .line 179
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->setNickname(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->setAvatarUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static scheduleToTrack(Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 6

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setDataId(J)V

    .line 75
    const-string v0, "schedule"

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setKind(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getProgramName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getBackPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setCoverUrlLarge(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getBackPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setCoverUrlMiddle(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getBackPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setCoverUrlSmall(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getListenBackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setPlayUrl32(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getListenBackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setPlayUrl64(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getAnnouncerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getAnnouncerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 85
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getAnnouncerList()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;

    .line 86
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/ModelUtil;->liveAnnouncerToAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;)Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;)V

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getUpdateAt()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setUpdatedAt(J)V

    .line 90
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getProgramId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    move-object v0, v1

    .line 91
    goto :goto_0
.end method

.method public static toProgram(Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
    .locals 1

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    goto :goto_0
.end method

.method public static toProgramList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    .line 53
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/ModelUtil;->toProgram(Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static toTrackList(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 123
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 127
    :cond_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :try_start_0
    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v2, v0

    .line 138
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 155
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-wide v2, v4

    goto :goto_1

    .line 139
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    .line 144
    :try_start_1
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 150
    :goto_3
    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 152
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/ModelUtil;->scheduleToTrack(Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 146
    :catch_1
    move-exception v6

    .line 148
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    move-wide v6, v4

    goto :goto_3
.end method

.method public static trackToSchedule(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;
    .locals 6

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 100
    :cond_0
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->setDataId(J)V

    .line 102
    const-string v0, "schedule"

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->setKind(Ljava/lang/String;)V

    .line 103
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    invoke-direct {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setProgramId(J)V

    .line 105
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setProgramName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getCoverUrlLarge()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_1
    invoke-virtual {v2, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setBackPicUrl(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/ModelUtil;->announcerToLiveAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;)Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->setAnnouncerList(Ljava/util/List;)V

    .line 113
    :cond_1
    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->setRelatedProgram(Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;)V

    .line 114
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getPlayUrl64()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getPlayUrl32()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_2
    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->setListenBackUrl(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getUpdatedAt()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->setUpdateAt(J)V

    move-object v0, v1

    .line 117
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getPlayUrl64()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
