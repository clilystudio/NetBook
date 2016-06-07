.class public Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adid:I

.field private clickType:I

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private isAutoNotifyInstall:Z

.field private linkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field private logoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logo"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private soundUrl:Ljava/lang/String;

.field private thirdStatUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->isAutoNotifyInstall:Z

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getAdid()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->adid:I

    return v0
.end method

.method public getClickType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->clickType:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAutoNotifyInstall()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->isAutoNotifyInstall:Z

    return v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->soundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdStatUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->thirdStatUrl:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->setAdid(I)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->setName(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->setClickType(I)V

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->setLinkUrl(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->setImageUrl(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->setLogoUrl(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->setSoundUrl(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->setThirdStatUrl(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setAdid(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->adid:I

    .line 65
    return-void
.end method

.method public setClickType(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->clickType:I

    .line 85
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->imageUrl:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setIsAutoNotifyInstall(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->isAutoNotifyInstall:Z

    .line 55
    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->linkUrl:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->logoUrl:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSoundUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->soundUrl:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setThirdStatUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->thirdStatUrl:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Advertis [adid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->adid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->clickType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->logoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->soundUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string v1, ", thirdStatUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->thirdStatUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->adid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->clickType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->logoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->soundUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->thirdStatUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return-void
.end method
