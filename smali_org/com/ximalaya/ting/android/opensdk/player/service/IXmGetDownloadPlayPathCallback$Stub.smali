.class public abstract Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback"

.field static final TRANSACTION_getDownloadPlayPath:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback"

    invoke-virtual {p0, p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 55
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;->getDownloadPlayPath(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 58
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
