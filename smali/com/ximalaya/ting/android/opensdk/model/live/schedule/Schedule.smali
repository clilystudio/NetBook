.class public Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;
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
            "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
    .end annotation
.end field

.field private listenBackUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listen_back_url"
    .end annotation
.end field

.field private playType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_type"
    .end annotation
.end field

.field private relatedProgram:Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "related_program"
    .end annotation
.end field

.field private startTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field

.field private updateAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
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
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getListenBackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->listenBackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayType()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->playType:I

    return v0
.end method

.method public getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->relatedProgram:Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateAt()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->updateAt:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->setStartTime(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->setEndTime(Ljava/lang/String;)V

    .line 113
    const-class v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->setRelatedProgram(Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;)V

    .line 115
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->endTime:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setListenBackUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->listenBackUrl:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPlayType(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->playType:I

    .line 96
    return-void
.end method

.method public setRelatedProgram(Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->relatedProgram:Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    .line 76
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->startTime:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setUpdateAt(J)V
    .locals 1

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->updateAt:J

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->relatedProgram:Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    return-void
.end method
