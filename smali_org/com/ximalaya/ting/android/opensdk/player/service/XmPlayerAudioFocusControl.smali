.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private audioFoucusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverPhoneCall:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private telPauseFlag:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private telephonyManager1:Landroid/telephony/TelephonyManager;

.field private telephonyManager2:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telPauseFlag:Z

    .line 115
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$1;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 144
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$2;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$2;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$3;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$3;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mBroadcastReceiverPhoneCall:Landroid/content/BroadcastReceiver;

    .line 281
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioFoucusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->initListener()V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateIdle()V

    return-void
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateRinging()V

    return-void
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioFoucusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method private callStateIdle()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telPauseFlag:Z

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->startPlay()Z

    .line 247
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telPauseFlag:Z

    .line 248
    return-void
.end method

.method private callStateRinging()V
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telPauseFlag:Z

    .line 259
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->pausePlay()Z

    .line 262
    :cond_0
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mContext:Landroid/content/Context;

    .line 70
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 69
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioManager:Landroid/media/AudioManager;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->initTelephonyManager()V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mBroadcastReceiverPhoneCall:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private initTelephonyManager()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 89
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mContext:Landroid/content/Context;

    .line 90
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 89
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mContext:Landroid/content/Context;

    .line 96
    const-string v1, "phone1"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 95
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telephonyManager1:Landroid/telephony/TelephonyManager;

    .line 97
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telephonyManager1:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 98
    const/16 v2, 0x20

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mContext:Landroid/content/Context;

    .line 106
    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telephonyManager2:Landroid/telephony/TelephonyManager;

    .line 107
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->telephonyManager2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 108
    const/16 v2, 0x20

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public setAudioFocusAtPauseState()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioFoucusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 273
    const/4 v2, 0x3

    const/4 v3, -0x1

    .line 272
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 274
    return-void
.end method

.method public setAudioFocusAtStartState()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioFoucusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 267
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 266
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 268
    return-void
.end method

.method public setAudioFocusAtStopState()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioFoucusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 279
    return-void
.end method
