.class public Lcn/sharesdk/onekeyshare/OnekeyShare;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcn/sharesdk/framework/PlatformActionListener;


# static fields
.field private static final MSG_ACTION_CCALLBACK:I = 0x2

.field private static final MSG_CANCEL_NOTIFY:I = 0x3

.field private static final MSG_TOAST:I = 0x1


# instance fields
.field private bgView:Landroid/view/View;

.field private callback:Lcn/sharesdk/framework/PlatformActionListener;

.field private context:Landroid/content/Context;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

.field private dialogMode:Z

.field private disableSSO:Z

.field private hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

.field private shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private silent:Z

.field private theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    .line 61
    iput-object p0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 593
    return-void
.end method


# virtual methods
.method public addHiddenPlatform(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public disableSSOWhenAuthorize()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    .line 277
    return-void
.end method

.method public getCallback()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method public getShareContentCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 503
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 587
    :cond_0
    :goto_0
    return v2

    .line 505
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 510
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 513
    :pswitch_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "share_completed"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 514
    if-lez v0, :cond_0

    .line 515
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 522
    const-string v1, "WechatClientNotExistException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WechatTimelineNotSupportedException"

    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WechatFavoriteNotSupportedException"

    .line 524
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "wechat_client_inavailable"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 526
    if-lez v0, :cond_0

    .line 527
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_2
    const-string v1, "GooglePlusClientNotExistException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 530
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "google_plus_client_inavailable"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 531
    if-lez v0, :cond_0

    .line 532
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_3
    const-string v1, "QQClientNotExistException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 535
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "qq_client_inavailable"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 536
    if-lez v0, :cond_0

    .line 537
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :cond_4
    const-string v1, "YixinClientNotExistException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "YixinTimelineNotSupportedException"

    .line 540
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 541
    :cond_5
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "yixin_client_inavailable"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 542
    if-lez v0, :cond_0

    .line 543
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    :cond_6
    const-string v1, "KakaoTalkClientNotExistException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 546
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "kakaotalk_client_inavailable"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 547
    if-lez v0, :cond_0

    .line 548
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_7
    const-string v1, "KakaoStoryClientNotExistException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 551
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "kakaostory_client_inavailable"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 552
    if-lez v0, :cond_0

    .line 553
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :cond_8
    const-string v1, "WhatsAppClientNotExistException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 556
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "whatsapp_client_inavailable"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 557
    if-lez v0, :cond_0

    .line 558
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_9
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "share_failed"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 562
    if-lez v0, :cond_0

    .line 563
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 570
    :pswitch_4
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v1, "share_canceled"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 571
    if-lez v0, :cond_0

    .line 572
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    .line 581
    if-eqz v0, :cond_0

    .line 582
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 510
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2

    .prologue
    .line 494
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 495
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 496
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 497
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 498
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 500
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 472
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 473
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 474
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 475
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 477
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 480
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 482
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 483
    iput v1, v0, Landroid/os/Message;->what:I

    .line 484
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 485
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 486
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 490
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 491
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 247
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public setCustomerLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/CustomerLogo;-><init>()V

    .line 267
    iput-object p3, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 268
    iput-object p1, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 269
    iput-object p2, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->disableLogo:Landroid/graphics/Bitmap;

    .line 270
    iput-object p4, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->listener:Landroid/view/View$OnClickListener;

    .line 271
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public setDialogMode()V
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 282
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "dialogMode"

    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    .line 307
    return-void
.end method

.method public setExecuteUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "executeurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public setImageArray([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageArray"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    return-void
.end method

.method public setInstallUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "installurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public setLatitude(F)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "latitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public setLongitude(F)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "longitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "musicUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .line 311
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .line 257
    return-void
.end method

.method public setShareFromQQAuthSupport(Z)V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "isShareTencentWeibo"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-void
.end method

.method public setSilent(Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    .line 222
    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "site"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public setSiteUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "siteUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public setTheme(Lcn/sharesdk/onekeyshare/OnekeyShareTheme;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .line 132
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public setTitleUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "titleUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public setVenueDescription(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueDescription"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public setViewToShare(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v2, "viewToShare"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public share(Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v4

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Platform;

    .line 318
    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    invoke-virtual {v1, v2}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 319
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    .line 331
    const-string v10, "KakaoTalk"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 332
    if-eqz v10, :cond_0

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v10

    if-nez v10, :cond_0

    .line 333
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 334
    iput v8, v0, Landroid/os/Message;->what:I

    .line 335
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v2, "kakaotalk_client_inavailable"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 336
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 341
    :cond_0
    const-string v10, "KakaoStory"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 342
    if-eqz v10, :cond_1

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v10

    if-nez v10, :cond_1

    .line 343
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 344
    iput v8, v0, Landroid/os/Message;->what:I

    .line 345
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v2, "kakaostory_client_inavailable"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 346
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 351
    :cond_1
    const-string v10, "Line"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 352
    if-eqz v10, :cond_2

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v10

    if-nez v10, :cond_2

    .line 353
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 354
    iput v8, v0, Landroid/os/Message;->what:I

    .line 355
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v2, "line_client_inavailable"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 356
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 361
    :cond_2
    const-string v10, "WhatsApp"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 362
    if-eqz v10, :cond_3

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v10

    if-nez v10, :cond_3

    .line 363
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 364
    iput v8, v0, Landroid/os/Message;->what:I

    .line 365
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v2, "whatsapp_client_inavailable"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 366
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 371
    :cond_3
    const-string v10, "Pinterest"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 372
    if-eqz v10, :cond_4

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v10

    if-nez v10, :cond_4

    .line 373
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 374
    iput v8, v0, Landroid/os/Message;->what:I

    .line 375
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v2, "pinterest_client_inavailable"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 376
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 381
    :cond_4
    const-string v10, "Instagram"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v10

    if-nez v10, :cond_5

    .line 382
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 383
    iput v8, v0, Landroid/os/Message;->what:I

    .line 384
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v2, "instagram_client_inavailable"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 385
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 390
    :cond_5
    const-string v10, "Laiwang"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 391
    const-string v11, "LaiwangMoments"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 392
    if-nez v10, :cond_6

    if-eqz v11, :cond_7

    .line 393
    :cond_6
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v10

    if-nez v10, :cond_7

    .line 394
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 395
    iput v8, v0, Landroid/os/Message;->what:I

    .line 396
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v2, "laiwang_client_inavailable"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 397
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 403
    :cond_7
    const-string v10, "YixinMoments"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "Yixin"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v2, v8

    .line 404
    :goto_1
    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v2

    if-nez v2, :cond_a

    .line 405
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 406
    iput v8, v0, Landroid/os/Message;->what:I

    .line 407
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v2, "yixin_client_inavailable"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 408
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    invoke-static {v0, p0}, Lcom/mob/tools/b/j;->a(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    :cond_9
    move v2, v4

    .line 403
    goto :goto_1

    .line 413
    :cond_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 415
    const-string v2, "imagePath"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 416
    if-eqz v2, :cond_d

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 418
    const-string v10, ".gif"

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 419
    const/16 v2, 0x9

    .line 451
    :goto_2
    const-string v10, "shareType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    if-nez v3, :cond_11

    .line 456
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v3, "sharing"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 457
    if-lez v2, :cond_b

    .line 458
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    :cond_b
    move v2, v8

    .line 462
    :goto_3
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v1, v3}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 463
    new-instance v3, Lcn/sharesdk/onekeyshare/ShareCore;

    invoke-direct {v3}, Lcn/sharesdk/onekeyshare/ShareCore;-><init>()V

    .line 464
    iget-object v10, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    invoke-virtual {v3, v10}, Lcn/sharesdk/onekeyshare/ShareCore;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 465
    invoke-virtual {v3, v1, v0}, Lcn/sharesdk/onekeyshare/ShareCore;->share(Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)Z

    move v3, v2

    .line 466
    goto/16 :goto_0

    .line 420
    :cond_c
    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 422
    const-string v2, "musicUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "musicUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v5

    .line 423
    goto :goto_2

    .line 427
    :cond_d
    const-string v2, "viewToShare"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 428
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_e

    .line 430
    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 432
    const-string v2, "musicUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "musicUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v5

    .line 433
    goto/16 :goto_2

    .line 437
    :cond_e
    const-string v2, "imageUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 438
    if-eqz v2, :cond_14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 440
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v10, ".gif"

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 441
    const/16 v2, 0x9

    goto/16 :goto_2

    .line 442
    :cond_f
    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 444
    const-string v2, "musicUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "musicUrl"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v5

    .line 445
    goto/16 :goto_2

    .line 467
    :cond_10
    return-void

    :cond_11
    move v2, v3

    goto/16 :goto_3

    :cond_12
    move v2, v6

    goto/16 :goto_2

    :cond_13
    move v2, v7

    goto/16 :goto_2

    :cond_14
    move v2, v8

    goto/16 :goto_2
.end method

.method public show(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 67
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    .line 70
    const/4 v0, 0x1

    invoke-static {v0, v3}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 79
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 83
    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    if-nez v2, :cond_0

    .line 84
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v1, v1, Lcn/sharesdk/framework/CustomPlatform;

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->share(Ljava/util/HashMap;)V

    .line 128
    :goto_0
    return-void

    .line 97
    :cond_1
    :try_start_0
    sget-object v0, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->SKYBLUE:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    if-ne v0, v1, :cond_2

    .line 98
    const-string v0, "cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setDialogMode(Z)V

    .line 108
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setShareParamsMap(Ljava/util/HashMap;)V

    .line 109
    iget-boolean v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setSilent(Z)V

    .line 110
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 111
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setBackgroundView(Landroid/view/View;)V

    .line 112
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setHiddenPlatforms(Ljava/util/HashMap;)V

    .line 113
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V

    .line 114
    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShare$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare$1;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShare;)V

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setThemeShareCallback(Lcn/sharesdk/onekeyshare/ThemeShareCallback;)V

    .line 121
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v2, "platform"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v2, "platform"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 124
    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 100
    :cond_2
    :try_start_1
    const-string v0, "cn.sharesdk.onekeyshare.theme.classic.PlatformListPage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {v0, p1, v3}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
