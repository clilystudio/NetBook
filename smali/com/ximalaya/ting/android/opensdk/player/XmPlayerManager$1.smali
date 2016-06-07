.class Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    const-string v0, "XmPlayerServiceManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Z)V

    .line 137
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-static {p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$5(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;)V

    .line 138
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$2(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    .line 139
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$3(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    .line 140
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mGetDownloadPlayPathCallbackStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$6(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V

    .line 143
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setAppSecret(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotificationId:I
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$7(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)I

    move-result v1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotification:Landroid/app/Notification;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$8(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Landroid/app/Notification;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setNotification(ILandroid/app/Notification;)V

    .line 146
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnectListener:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$9(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnectListener:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$9(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;->onConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 110
    :try_start_0
    const-string v0, "XmPlayerServiceManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Z)V

    .line 112
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$2(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->unregistePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    .line 115
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$3(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->unregisteAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    .line 116
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V

    .line 117
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPageSize:I
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$4(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPageSize:I
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$4(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPageSize(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$5(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
