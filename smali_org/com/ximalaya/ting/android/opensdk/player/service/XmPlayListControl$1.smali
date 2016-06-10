.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 442
    const-string v0, "XmPlayListControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CommonRequest.getTrackList \u83b7\u53d6\u64ad\u653e\u5668\u4e0b\u4e00\u9875\u6570\u636e onError "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;Z)V

    .line 452
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->onSuccess(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;)V

    return-void
.end method

.method public onSuccess(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;)V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;Z)V

    .line 415
    const-string v0, "XmPlayListControl"

    const-string v1, "CommonRequest.getTrackList \u83b7\u53d6\u64ad\u653e\u5668\u4e0b\u4e00\u9875\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-nez p1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTotalPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;I)V

    .line 420
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;I)V

    .line 423
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;I)V

    .line 423
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
