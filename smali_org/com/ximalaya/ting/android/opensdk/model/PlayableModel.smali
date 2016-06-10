.class public Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
.super Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private kind:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/util/XiMaDataSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 75
    :cond_3
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .line 76
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    iget-wide v4, p1, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    return-wide v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 66
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->setDataId(J)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->setKind(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setDataId(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    .line 48
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method
