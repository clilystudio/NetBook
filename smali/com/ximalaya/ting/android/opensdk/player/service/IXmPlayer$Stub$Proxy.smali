.class Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 380
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearPlayCache()V
    .locals 5

    .prologue
    .line 872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 875
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 877
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 883
    return-void

    .line 879
    :catchall_0
    move-exception v0

    .line 880
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 882
    throw v0
.end method

.method public getCurrIndex()I
    .locals 5

    .prologue
    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 602
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 604
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 605
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 608
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    return v0

    .line 607
    :catchall_0
    move-exception v0

    .line 608
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 610
    throw v0
.end method

.method public getDuration()I
    .locals 5

    .prologue
    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 619
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 621
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 622
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 625
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 628
    return v0

    .line 624
    :catchall_0
    move-exception v0

    .line 625
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    return-object v0
.end method

.method public getParam()Ljava/util/Map;
    .locals 5

    .prologue
    .line 837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 841
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 843
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 844
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 845
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 848
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 851
    return-object v0

    .line 847
    :catchall_0
    move-exception v0

    .line 848
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 849
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 850
    throw v0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 824
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 826
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 827
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 830
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 833
    return-object v0

    .line 829
    :catchall_0
    move-exception v0

    .line 830
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 832
    throw v0
.end method

.method public getPlayListSize()I
    .locals 5

    .prologue
    .line 855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 859
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 861
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 862
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 865
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 868
    return v0

    .line 864
    :catchall_0
    move-exception v0

    .line 865
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 867
    throw v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 749
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 751
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 752
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 755
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 758
    return-object v0

    .line 754
    :catchall_0
    move-exception v0

    .line 755
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    throw v0
.end method

.method public getPlaySourceType()I
    .locals 5

    .prologue
    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 717
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 719
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 720
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 723
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 726
    return v0

    .line 722
    :catchall_0
    move-exception v0

    .line 723
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    throw v0
.end method

.method public getPlayerStatus()I
    .locals 5

    .prologue
    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 585
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 587
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 588
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 591
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 594
    return v0

    .line 590
    :catchall_0
    move-exception v0

    .line 591
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 593
    throw v0
.end method

.method public getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .locals 5

    .prologue
    .line 691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 692
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 695
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 697
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 698
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    return-object v0

    .line 702
    :cond_0
    const/4 v0, 0x0

    .line 704
    goto :goto_0

    .line 705
    :catchall_0
    move-exception v0

    .line 706
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    throw v0
.end method

.method public getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 5

    .prologue
    .line 668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 672
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 675
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 676
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 687
    return-object v0

    .line 680
    :cond_0
    const/4 v0, 0x0

    .line 682
    goto :goto_0

    .line 683
    :catchall_0
    move-exception v0

    .line 684
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 686
    throw v0
.end method

.method public hasNextSound()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 568
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 570
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 571
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 574
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 577
    return v0

    .line 573
    :catchall_0
    move-exception v0

    .line 574
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    throw v0
.end method

.method public hasPreSound()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 551
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 552
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 553
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 554
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 557
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    return v0

    .line 556
    :catchall_0
    move-exception v0

    .line 557
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    throw v0
.end method

.method public isAdsActive()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 653
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 654
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 655
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 656
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 659
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 662
    return v0

    .line 658
    :catchall_0
    move-exception v0

    .line 659
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 661
    throw v0
.end method

.method public isOnlineSource()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 534
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 536
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 537
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 540
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    return v0

    .line 539
    :catchall_0
    move-exception v0

    .line 540
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 542
    throw v0
.end method

.method public isPlaying()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 636
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 637
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 638
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 639
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 642
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 645
    return v0

    .line 641
    :catchall_0
    move-exception v0

    .line 642
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 644
    throw v0
.end method

.method public pausePlay()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 482
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 484
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 485
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 488
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 491
    return v0

    .line 487
    :catchall_0
    move-exception v0

    .line 488
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    throw v0
.end method

.method public play(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 429
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 432
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 433
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 436
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    return v0

    .line 435
    :catchall_0
    move-exception v0

    .line 436
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    throw v0
.end method

.method public playNext()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 412
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 414
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 415
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 418
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 421
    return v0

    .line 417
    :catchall_0
    move-exception v0

    .line 418
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 419
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    throw v0
.end method

.method public playPre()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 395
    :try_start_0
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    iget-object v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 397
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 398
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 404
    return v0

    :cond_0
    move v0, v1

    .line 398
    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    .line 401
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 403
    throw v0
.end method

.method public playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 797
    :try_start_0
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 798
    if-eqz p1, :cond_0

    .line 799
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->writeToParcel(Landroid/os/Parcel;I)V

    .line 805
    :goto_0
    iget-object v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 806
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 807
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 810
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 813
    return v0

    .line 803
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    .line 810
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 811
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 812
    throw v0

    :cond_1
    move v0, v1

    .line 807
    goto :goto_1
.end method

.method public registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V
    .locals 5

    .prologue
    .line 953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 956
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 958
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 959
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 965
    return-void

    .line 957
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 961
    :catchall_0
    move-exception v0

    .line 962
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 964
    throw v0
.end method

.method public registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V
    .locals 5

    .prologue
    .line 923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 926
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 927
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 928
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 929
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 935
    return-void

    .line 927
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 931
    :catchall_0
    move-exception v0

    .line 932
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    throw v0
.end method

.method public seekTo(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 516
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 519
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 520
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 523
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 526
    return v0

    .line 522
    :catchall_0
    move-exception v0

    .line 523
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 525
    throw v0
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 911
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 914
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 920
    return-void

    .line 916
    :catchall_0
    move-exception v0

    .line 917
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 919
    throw v0
.end method

.method public setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V
    .locals 5

    .prologue
    .line 983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 986
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 987
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 988
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 989
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 995
    return-void

    .line 987
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v0

    .line 992
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    throw v0
.end method

.method public setNotification(ILandroid/app/Notification;)V
    .locals 5

    .prologue
    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 889
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 890
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    if-eqz p2, :cond_0

    .line 892
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 898
    :goto_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 899
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 905
    return-void

    .line 896
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 901
    :catchall_0
    move-exception v0

    .line 902
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 903
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 904
    throw v0
.end method

.method public setPageSize(I)V
    .locals 5

    .prologue
    .line 762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 765
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 768
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    return-void

    .line 770
    :catchall_0
    move-exception v0

    .line 771
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    throw v0
.end method

.method public setPlayIndex(I)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 447
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 450
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 451
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 454
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    return v0

    .line 453
    :catchall_0
    move-exception v0

    .line 454
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    throw v0
.end method

.method public setPlayList(Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 780
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 782
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 783
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 784
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 790
    return-void

    .line 786
    :catchall_0
    move-exception v0

    .line 787
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 789
    throw v0
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 733
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 736
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 742
    return-void

    .line 738
    :catchall_0
    move-exception v0

    .line 739
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    throw v0
.end method

.method public startPlay()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 465
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 467
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 468
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 471
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    return v0

    .line 470
    :catchall_0
    move-exception v0

    .line 471
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 473
    throw v0
.end method

.method public stopPlay()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 499
    :try_start_0
    const-string v3, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 501
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 502
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 505
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    return v0

    .line 504
    :catchall_0
    move-exception v0

    .line 505
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    throw v0
.end method

.method public unregisteAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V
    .locals 5

    .prologue
    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 971
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 972
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 973
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 974
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 980
    return-void

    .line 972
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 976
    :catchall_0
    move-exception v0

    .line 977
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 979
    throw v0
.end method

.method public unregistePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V
    .locals 5

    .prologue
    .line 938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 941
    :try_start_0
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 942
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 943
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 944
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 950
    return-void

    .line 942
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 946
    :catchall_0
    move-exception v0

    .line 947
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    throw v0
.end method
