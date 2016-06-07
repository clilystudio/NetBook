.class Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 152
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    return-object v0
.end method

.method public onBufferProgress(I)V
    .locals 5

    .prologue
    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 281
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 284
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    return-void

    .line 286
    :catchall_0
    move-exception v0

    .line 287
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    throw v0
.end method

.method public onBufferingStart()V
    .locals 5

    .prologue
    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 253
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 255
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    return-void

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    throw v0
.end method

.method public onBufferingStop()V
    .locals 5

    .prologue
    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 267
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 269
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    return-void

    .line 271
    :catchall_0
    move-exception v0

    .line 272
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw v0
.end method

.method public onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 5

    .prologue
    .line 309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 312
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 314
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 315
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    return-void

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    throw v0
.end method

.method public onPlayPause()V
    .locals 5

    .prologue
    .line 177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 180
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 182
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 188
    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    throw v0
.end method

.method public onPlayProgress(II)V
    .locals 5

    .prologue
    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 296
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 300
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    return-void

    .line 302
    :catchall_0
    move-exception v0

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    throw v0
.end method

.method public onPlayStart()V
    .locals 5

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 166
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 168
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 174
    return-void

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v0
.end method

.method public onPlayStop()V
    .locals 5

    .prologue
    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 194
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 196
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    return-void

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    throw v0
.end method

.method public onSoundPlayComplete()V
    .locals 5

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 208
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 210
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    return-void

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw v0
.end method

.method public onSoundPrepared()V
    .locals 5

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 222
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 224
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    return-void

    .line 226
    :catchall_0
    move-exception v0

    .line 227
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    throw v0
.end method

.method public onSoundSwitch(III)V
    .locals 5

    .prologue
    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 236
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 241
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    return-void

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    throw v0
.end method
