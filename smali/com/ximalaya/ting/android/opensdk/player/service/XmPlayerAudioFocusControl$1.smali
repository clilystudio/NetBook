.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    .line 115
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateIdle()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateRinging()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateRinging()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
