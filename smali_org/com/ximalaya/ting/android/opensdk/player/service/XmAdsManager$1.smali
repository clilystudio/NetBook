.class Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;
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
        "Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;",
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
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Z)V

    .line 242
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-object v2, v2, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    .line 243
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->onSuccess(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    return-void
.end method

.method public onSuccess(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-boolean v1, v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-object v2, v2, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    move-result v0

    .line 216
    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 220
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getRet()I

    move-result v0

    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getAdvertisList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getAdvertisList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getAdvertisList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-static {v0, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Z)V

    .line 226
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-object v2, v2, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iput-object p1, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->ads:Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    .line 230
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->downloadAndPlayAds(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    .line 235
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->uploadAdsLog(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    goto :goto_0
.end method
