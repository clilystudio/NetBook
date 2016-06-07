.class Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;-><init>()V

    .line 139
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->readFromParcel(Landroid/os/Parcel;)V

    .line 140
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;
    .locals 1

    .prologue
    .line 132
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    move-result-object v0

    return-object v0
.end method
