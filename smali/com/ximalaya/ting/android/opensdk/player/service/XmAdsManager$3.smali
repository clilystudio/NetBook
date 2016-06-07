.class Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;
.super Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

.field private final synthetic val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    .line 376
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-boolean v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 396
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-object v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->ads:Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getAdvertisList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    .line 387
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->getSoundUrl()Ljava/lang/String;

    move-result-object v2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/util/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->getSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAppCtx:Landroid/content/Context;
    invoke-static {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/ximalaya/ting/android/opensdk/util/FileUtilBase;->getAdsCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    iget-object v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iget-object v5, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)I
    invoke-static {v4, v2, v3, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Ljava/lang/String;Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)I

    move-result v2

    .line 392
    if-eqz v2, :cond_0

    move-object v0, v1

    .line 396
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 403
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-boolean v1, v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-object v2, v2, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    move-result v0

    .line 404
    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onAdsStopBuffering()V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-static {v0, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Z)V

    .line 415
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-object v2, v2, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    .line 416
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onAdsStopBuffering()V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsFileCache:Ljava/util/List;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 425
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsFileCache:Ljava/util/List;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->deleteAdsCacheFile(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$8(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Ljava/lang/String;)Z

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsFileCache:Ljava/util/List;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->playAdsInternal(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$9(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    goto :goto_0
.end method
