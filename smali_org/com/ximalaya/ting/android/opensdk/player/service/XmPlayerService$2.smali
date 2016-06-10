.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;


# instance fields
.field private mLock:[B

.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->mLock:[B

    return-void
.end method


# virtual methods
.method public onAdsStartBuffering()V
    .locals 4

    .prologue
    .line 514
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->mLock:[B

    monitor-enter v2

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 516
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 525
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 514
    monitor-exit v2

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :try_start_1
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->onAdsStartBuffering()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onAdsStopBuffering()V
    .locals 4

    .prologue
    .line 497
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->mLock:[B

    monitor-enter v2

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 499
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 508
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 497
    monitor-exit v2

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 501
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :try_start_1
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->onAdsStopBuffering()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onCompletePlayAds()V
    .locals 4

    .prologue
    .line 480
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->mLock:[B

    monitor-enter v2

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 482
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 491
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 480
    monitor-exit v2

    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 484
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :try_start_1
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->onCompletePlayAds()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onError(II)V
    .locals 4

    .prologue
    .line 463
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->mLock:[B

    monitor-enter v2

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 465
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 474
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 463
    monitor-exit v2

    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->onError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 4

    .prologue
    .line 446
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->mLock:[B

    monitor-enter v2

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 448
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 457
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 446
    monitor-exit v2

    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :try_start_1
    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onStartGetAdsInfo()V
    .locals 4

    .prologue
    .line 429
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->mLock:[B

    monitor-enter v2

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 431
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 440
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 429
    monitor-exit v2

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 433
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :try_start_1
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->onStartGetAdsInfo()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 4

    .prologue
    .line 412
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->mLock:[B

    monitor-enter v2

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 414
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 423
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 412
    monitor-exit v2

    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 416
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
