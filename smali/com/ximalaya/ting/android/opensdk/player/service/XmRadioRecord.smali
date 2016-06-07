.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;
.super Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;
.source "SourceFile"


# instance fields
.field private mProgramId:J

.field private mScheduleId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgramId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->mProgramId:J

    return-wide v0
.end method

.method public getScheduleId()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->mScheduleId:J

    return-wide v0
.end method

.method public setProgramId(J)V
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->mProgramId:J

    .line 50
    return-void
.end method

.method public setScheduleId(J)V
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->mScheduleId:J

    .line 40
    return-void
.end method
