.class public Lcom/ushaqi/zhuishushenqi/model/Follower;
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
            "Lcom/ushaqi/zhuishushenqi/model/Follower;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private followers:I

.field private followings:I

.field private nickname:Ljava/lang/String;

.field private tweets:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/Follower$1;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/Follower$1;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/model/Follower;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->_id:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->avatar:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->nickname:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->followers:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->followings:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->tweets:I

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowers()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->followers:I

    return v0
.end method

.method public getFollowings()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->followings:I

    return v0
.end method

.method public getFullAvatar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Follower;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getTweets()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->tweets:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->avatar:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setFollowers(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->followers:I

    .line 57
    return-void
.end method

.method public setFollowings(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->followings:I

    .line 65
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->nickname:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTweets(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->tweets:I

    .line 73
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->_id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->followers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->followings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Follower;->tweets:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method
