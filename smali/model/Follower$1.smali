.class final Lcom/ushaqi/zhuishushenqi/model/Follower$1;
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
        "Lcom/ushaqi/zhuishushenqi/model/Follower;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/ushaqi/zhuishushenqi/model/Follower;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/Follower;

    invoke-direct {v0, p1}, Lcom/ushaqi/zhuishushenqi/model/Follower;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/model/Follower$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ushaqi/zhuishushenqi/model/Follower;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/ushaqi/zhuishushenqi/model/Follower;
    .locals 1

    .prologue
    .line 108
    new-array v0, p1, [Lcom/ushaqi/zhuishushenqi/model/Follower;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/model/Follower$1;->newArray(I)[Lcom/ushaqi/zhuishushenqi/model/Follower;

    move-result-object v0

    return-object v0
.end method
