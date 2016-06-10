.class public Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v4

    .line 42
    if-eqz v4, :cond_0

    .line 44
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_3

    move v3, v1

    .line 51
    :goto_1
    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 54
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 56
    const-wide/16 v8, 0x7d0

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 57
    :goto_2
    sparse-switch v3, :sswitch_data_0

    .line 94
    :cond_2
    :goto_3
    :try_start_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;->abortBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v3, v2

    .line 50
    goto :goto_1

    :cond_4
    move v0, v2

    .line 56
    goto :goto_2

    .line 63
    :sswitch_0
    invoke-virtual {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    invoke-virtual {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->pausePlay()Z

    goto :goto_3

    .line 69
    :cond_5
    invoke-virtual {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->startPlay()Z

    goto :goto_3

    .line 73
    :sswitch_1
    if-nez v0, :cond_2

    .line 78
    invoke-virtual {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playNext()Z

    goto :goto_3

    .line 83
    :sswitch_2
    if-nez v0, :cond_2

    .line 88
    invoke-virtual {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playPre()Z

    goto :goto_3

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_2
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method
