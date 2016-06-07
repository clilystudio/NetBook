.class Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;
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
        "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 1

    .prologue
    .line 543
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;-><init>()V

    .line 544
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->readFromParcel(Landroid/os/Parcel;)V

    .line 545
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 1

    .prologue
    .line 537
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v0

    return-object v0
.end method
