.class Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    .line 1300
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1301
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 1306
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1381
    :goto_0
    :pswitch_0
    return-void

    .line 1309
    :pswitch_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayStart()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$12(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto :goto_0

    .line 1313
    :pswitch_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayPause()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$13(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto :goto_0

    .line 1317
    :pswitch_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayStop()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$14(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto :goto_0

    .line 1321
    :pswitch_4
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayComplete()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$15(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto :goto_0

    .line 1325
    :pswitch_5
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleSoundPrepared()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$16(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto :goto_0

    .line 1329
    :pswitch_6
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleBufferStatusChange(Z)V
    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$17(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Z)V

    goto :goto_0

    .line 1333
    :pswitch_7
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayProgressChange(II)V
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$18(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;II)V

    goto :goto_0

    .line 1337
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1338
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1339
    const/4 v4, 0x2

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1338
    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleSoundChange(III)V
    invoke-static {v2, v3, v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$19(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;III)V

    goto :goto_0

    .line 1343
    :pswitch_9
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleBufferChange(I)V
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$20(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;I)V

    goto :goto_0

    .line 1347
    :pswitch_a
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$21(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V

    goto :goto_0

    .line 1351
    :pswitch_b
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleStartGetAdsInfo()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$22(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto :goto_0

    .line 1355
    :pswitch_c
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$23(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    goto :goto_0

    .line 1359
    :pswitch_d
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleAdsBufferingStart()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$24(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto/16 :goto_0

    .line 1363
    :pswitch_e
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleAdsBufferingStop()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$25(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto/16 :goto_0

    .line 1367
    :pswitch_f
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    invoke-static {v1, v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$26(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    goto/16 :goto_0

    .line 1371
    :pswitch_10
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleCompletePlayAds()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$27(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    goto/16 :goto_0

    .line 1375
    :pswitch_11
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayAdsError(II)V
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$28(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;II)V

    goto/16 :goto_0

    .line 1306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
