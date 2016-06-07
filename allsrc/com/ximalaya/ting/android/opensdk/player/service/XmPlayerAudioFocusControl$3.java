package com.ximalaya.ting.android.opensdk.player.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;

class XmPlayerAudioFocusControl$3 extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL"))
    {
      XmPlayerAudioFocusControl.access$1(this.this$0);
      return;
    }
    switch (((TelephonyManager)paramContext.getSystemService("phone")).getCallState())
    {
    default:
      return;
    case 0:
      XmPlayerAudioFocusControl.access$0(this.this$0);
      return;
    case 1:
      XmPlayerAudioFocusControl.access$1(this.this$0);
      return;
    case 2:
    }
    XmPlayerAudioFocusControl.access$1(this.this$0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerAudioFocusControl.3
 * JD-Core Version:    0.6.0
 */