.class public abstract Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

.field static final TRANSACTION_clearPlayCache:I = 0x1c

.field static final TRANSACTION_getCurrIndex:I = 0xd

.field static final TRANSACTION_getDuration:I = 0xe

.field static final TRANSACTION_getParam:I = 0x1a

.field static final TRANSACTION_getPlayList:I = 0x19

.field static final TRANSACTION_getPlayListSize:I = 0x1b

.field static final TRANSACTION_getPlayMode:I = 0x15

.field static final TRANSACTION_getPlaySourceType:I = 0x13

.field static final TRANSACTION_getPlayerStatus:I = 0xc

.field static final TRANSACTION_getRadio:I = 0x12

.field static final TRANSACTION_getTrack:I = 0x11

.field static final TRANSACTION_hasNextSound:I = 0xb

.field static final TRANSACTION_hasPreSound:I = 0xa

.field static final TRANSACTION_isAdsActive:I = 0x10

.field static final TRANSACTION_isOnlineSource:I = 0x9

.field static final TRANSACTION_isPlaying:I = 0xf

.field static final TRANSACTION_pausePlay:I = 0x6

.field static final TRANSACTION_play:I = 0x3

.field static final TRANSACTION_playNext:I = 0x2

.field static final TRANSACTION_playPre:I = 0x1

.field static final TRANSACTION_playRadio:I = 0x18

.field static final TRANSACTION_registeAdsListener:I = 0x21

.field static final TRANSACTION_registePlayerListener:I = 0x1f

.field static final TRANSACTION_seekTo:I = 0x8

.field static final TRANSACTION_setAppSecret:I = 0x1e

.field static final TRANSACTION_setDownloadPlayPathCallback:I = 0x23

.field static final TRANSACTION_setNotification:I = 0x1d

.field static final TRANSACTION_setPageSize:I = 0x16

.field static final TRANSACTION_setPlayIndex:I = 0x4

.field static final TRANSACTION_setPlayList:I = 0x17

.field static final TRANSACTION_setPlayMode:I = 0x14

.field static final TRANSACTION_startPlay:I = 0x5

.field static final TRANSACTION_stopPlay:I = 0x7

.field static final TRANSACTION_unregisteAdsListener:I = 0x22

.field static final TRANSACTION_unregistePlayerListener:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
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
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 372
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playPre()Z

    move-result v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 55
    :sswitch_2
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playNext()Z

    move-result v0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->play(I)Z

    move-result v0

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    :sswitch_4
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayIndex(I)Z

    move-result v0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    :sswitch_5
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->startPlay()Z

    move-result v0

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    :sswitch_6
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->pausePlay()Z

    move-result v0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 99
    :sswitch_7
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->stopPlay()Z

    move-result v0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v0, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    :sswitch_8
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->seekTo(I)Z

    move-result v0

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v0, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 117
    :sswitch_9
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isOnlineSource()Z

    move-result v0

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v0, :cond_8

    move v2, v1

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    :sswitch_a
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->hasPreSound()Z

    move-result v0

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v0, :cond_9

    move v2, v1

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    :sswitch_b
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->hasNextSound()Z

    move-result v0

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v0, :cond_a

    move v2, v1

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    :sswitch_c
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayerStatus()I

    move-result v0

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    :sswitch_d
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getCurrIndex()I

    move-result v0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    :sswitch_e
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getDuration()I

    move-result v0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    :sswitch_f
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isPlaying()Z

    move-result v0

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v0, :cond_b

    move v2, v1

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    :sswitch_10
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isAdsActive()Z

    move-result v0

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v0, :cond_c

    move v2, v1

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    :sswitch_11
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v0

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v0, :cond_d

    .line 187
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {v0, p3, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 191
    :cond_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 197
    :sswitch_12
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v0

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v0, :cond_e

    .line 201
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-virtual {v0, p3, v1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 205
    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 211
    :sswitch_13
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlaySourceType()I

    move-result v0

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    :sswitch_14
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayMode(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 228
    :sswitch_15
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayMode()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    :sswitch_16
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPageSize(I)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 245
    :sswitch_17
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 248
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 250
    sget-object v2, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 251
    invoke-virtual {p0, v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 257
    :sswitch_18
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 260
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    .line 265
    :cond_f
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z

    move-result v0

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v0, :cond_10

    move v2, v1

    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    :sswitch_19
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayList()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 280
    :sswitch_1a
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getParam()Ljava/util/Map;

    move-result-object v0

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 288
    :sswitch_1b
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayListSize()I

    move-result v0

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    :sswitch_1c
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->clearPlayCache()V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 303
    :sswitch_1d
    const-string v2, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 308
    sget-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 313
    :cond_11
    invoke-virtual {p0, v2, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setNotification(ILandroid/app/Notification;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 319
    :sswitch_1e
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setAppSecret(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 328
    :sswitch_1f
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;

    move-result-object v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 337
    :sswitch_20
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;

    move-result-object v0

    .line 340
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregistePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 346
    :sswitch_21
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 355
    :sswitch_22
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;

    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregisteAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 364
    :sswitch_23
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    move-result-object v0

    .line 367
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
