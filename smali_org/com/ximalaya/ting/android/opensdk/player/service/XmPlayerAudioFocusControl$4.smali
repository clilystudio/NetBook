.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private mIsStopAudio:Z

.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000

    const v2, 0x3e99999a

    .line 288
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    move-result-object v0

    .line 289
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 291
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->pausePlay()Z

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)Landroid/media/AudioManager;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->audioFoucusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    const/4 v1, -0x2

    if-ne p1, v1, :cond_3

    .line 301
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->pausePlay()Z

    .line 306
    iput-boolean v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;->mIsStopAudio:Z

    goto :goto_0

    .line 310
    :cond_3
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 314
    if-ne p1, v4, :cond_4

    .line 317
    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;->mIsStopAudio:Z

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->startPlay()Z

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$4;->mIsStopAudio:Z

    .line 323
    invoke-virtual {v0, v3, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->setVolume(FF)V

    goto :goto_0

    .line 327
    :cond_4
    const/4 v1, -0x3

    if-ne p1, v1, :cond_5

    .line 329
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0, v2, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->setVolume(FF)V

    goto :goto_0

    .line 334
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 336
    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0, v2, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->setVolume(FF)V

    goto :goto_0
.end method
