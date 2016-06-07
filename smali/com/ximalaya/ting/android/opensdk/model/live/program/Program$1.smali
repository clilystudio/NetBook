.class Lcom/ximalaya/ting/android/opensdk/model/live/program/Program$1;
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
        "Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;-><init>()V

    .line 212
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->readFromParcel(Landroid/os/Parcel;)V

    .line 213
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
    .locals 1

    .prologue
    .line 219
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    return-object v0
.end method
