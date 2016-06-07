.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    .line 195
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateRinging()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    .line 232
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 215
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateIdle()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateRinging()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->callStateRinging()V
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
