.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;


# instance fields
.field private mLock:[B

.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    return-void
.end method


# virtual methods
.method public onBufferProgress(I)V
    .locals 4

    .prologue
    .line 339
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v2

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 341
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 350
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 339
    monitor-exit v2

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :try_start_1
    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onBufferProgress(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onBufferingStart()V
    .locals 4

    .prologue
    .line 356
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 358
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 367
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 356
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlaySource()I

    move-result v0

    .line 370
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrentPlayableModel()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 372
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getCurrentPos()I

    move-result v1

    .line 373
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onTrackBuffering(Lcom/ximalaya/ting/android/opensdk/model/track/Track;ZI)V

    .line 377
    :cond_0
    return-void

    .line 359
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onBufferingStart()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onBufferingStop()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v3

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v1, v2

    .line 383
    :goto_0
    if-lt v1, v4, :cond_1

    .line 392
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 381
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlaySource()I

    move-result v0

    .line 395
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrentPlayableModel()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 397
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getCurrentPos()I

    move-result v1

    .line 398
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onTrackBuffering(Lcom/ximalaya/ting/android/opensdk/model/track/Track;ZI)V

    .line 402
    :cond_0
    return-void

    .line 384
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :try_start_2
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onBufferingStop()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v3

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v1, v2

    .line 323
    :goto_0
    if-lt v1, v4, :cond_0

    .line 332
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 321
    monitor-exit v3

    .line 334
    return v2

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 325
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :try_start_1
    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onPlayPause()V
    .locals 4

    .prologue
    .line 264
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v2

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 266
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 275
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 264
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getInstanse(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$8(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$9(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationId:I
    invoke-static {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$10(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)I

    move-result v3

    .line 277
    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->updateViewStateAtPause(Landroid/app/NotificationManager;Landroid/app/Notification;I)V

    .line 279
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlaySource()I

    move-result v0

    .line 280
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrentPlayableModel()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 282
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getCurrentPos()I

    move-result v1

    .line 283
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onPauseTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V

    .line 287
    :cond_0
    :goto_1
    return-void

    .line 267
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onPlayPause()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 284
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onRadioPause(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)V

    goto :goto_1
.end method

.method public onPlayProgress(II)V
    .locals 10

    .prologue
    const/16 v7, 0x1388

    const/4 v4, 0x0

    .line 231
    iget-object v5, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v5

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrentPlayableModel()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v3

    .line 234
    if-eqz v3, :cond_0

    instance-of v2, v3, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v2, :cond_0

    .line 235
    move-object v0, v3

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-object v2, v0

    .line 236
    if-le p1, v7, :cond_1

    .line 237
    add-int/lit16 v6, p2, -0x1388

    if-ge p1, v6, :cond_1

    .line 238
    iget-object v6, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->getDataId()J

    move-result-wide v8

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->saveSoundHistoryPos(JI)V
    invoke-static {v6, v8, v9, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;JI)V

    .line 239
    invoke-virtual {v2, p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setLastPlayedMills(I)V

    .line 248
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6

    move v3, v4

    .line 249
    :goto_1
    if-lt v3, v6, :cond_3

    .line 258
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 231
    monitor-exit v5

    return-void

    .line 241
    :cond_1
    add-int/lit16 v6, p2, -0x1388

    if-ge p1, v6, :cond_2

    .line 242
    if-gt p1, v7, :cond_0

    .line 243
    :cond_2
    iget-object v6, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->getDataId()J

    move-result-wide v8

    const/4 v3, 0x0

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->saveSoundHistoryPos(JI)V
    invoke-static {v6, v8, v9, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;JI)V

    .line 244
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setLastPlayedMills(I)V

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 250
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 251
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    invoke-interface {v2, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onPlayProgress(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 254
    :catch_0
    move-exception v2

    .line 255
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public onPlayStart()V
    .locals 5

    .prologue
    .line 198
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v2

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 200
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 209
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 198
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrentPlayableModel()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getInstanse(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$8(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotification:Landroid/app/Notification;
    invoke-static {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$9(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/app/Notification;

    move-result-object v3

    iget-object v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationId:I
    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$10(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)I

    move-result v4

    .line 212
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->updateModelDetail(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Landroid/app/NotificationManager;Landroid/app/Notification;I)V

    .line 214
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlaySource()I

    move-result v0

    .line 215
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrentPlayableModel()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 217
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getCurrentPos()I

    move-result v1

    .line 218
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getDuration()I

    move-result v2

    .line 219
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->isOnlineSource()Z

    move-result v3

    .line 220
    iget-object v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onPlayTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;ZII)V

    .line 227
    :cond_0
    :goto_1
    return-void

    .line 201
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onPlayStart()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 223
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onRadioStart(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)V

    goto :goto_1
.end method

.method public onPlayStop()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v2

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 172
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 181
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 170
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlaySource()I

    move-result v0

    .line 184
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 185
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrentPlayableModel()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 188
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getCurrentPos()I

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onStopTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 173
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onPlayStop()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 191
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onRadioStop(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;)V

    goto :goto_1
.end method

.method public onSoundPlayComplete()V
    .locals 5

    .prologue
    .line 291
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v2

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getNextIndex()I

    move-result v3

    .line 296
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 297
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 306
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 307
    if-ltz v3, :cond_2

    .line 308
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    const/4 v1, 0x1

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->play(IZ)Z
    invoke-static {v0, v3, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$11(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;IZ)Z

    .line 291
    :cond_0
    :goto_1
    monitor-exit v2

    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :try_start_1
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onSoundPlayComplete()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 311
    :cond_2
    :try_start_3
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_SINGLE:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayMode()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->setPlayMode(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onSoundPrepared()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;I)V

    .line 111
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v2

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 111
    monitor-exit v2

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onSoundPrepared()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onSoundSwitch(III)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->mLock:[B

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v1, v3

    .line 130
    :goto_0
    if-lt v1, v4, :cond_4

    .line 139
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 128
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlaySource()I

    move-result v4

    .line 142
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayableModel(I)Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayableModel(I)Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v1

    .line 144
    const-string v5, "XmPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "onSoundSwitch "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "|"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "|"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 145
    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "|"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v6, v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "|"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "|"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastDuration:I
    invoke-static {v6}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v5, v2}, Lcom/ximalaya/ting/android/opensdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastDuration:I
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)I

    move-result v2

    add-int/lit16 v2, v2, -0x1388

    if-gt p3, v2, :cond_0

    .line 149
    const/16 v2, 0x1388

    if-ge p3, v2, :cond_1

    :cond_0
    move p3, v3

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->getDataId()J

    move-result-wide v6

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->saveSoundHistoryPos(JI)V
    invoke-static {v2, v6, v7, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;JI)V

    .line 154
    :cond_2
    const/4 v2, 0x2

    if-ne v4, v2, :cond_7

    .line 155
    instance-of v2, v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v2, :cond_6

    instance-of v2, v1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v2, :cond_6

    .line 156
    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 157
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v2

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v2, v1, v0, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onSwitchTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/ting/android/opensdk/model/track/Track;I)V

    .line 166
    :cond_3
    :goto_2
    return-void

    .line 131
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-interface {v0, p1, p2, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->onSoundSwitch(III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    move v2, v3

    .line 145
    goto/16 :goto_1

    .line 160
    :cond_6
    const-string v0, "XmPlayerService"

    const-string v1, "Class Cast Exception: Cannot Cast To Track!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 162
    :cond_7
    const/4 v0, 0x3

    if-ne v4, v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getLastRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->onRadioSwitch(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)V

    goto :goto_2
.end method
