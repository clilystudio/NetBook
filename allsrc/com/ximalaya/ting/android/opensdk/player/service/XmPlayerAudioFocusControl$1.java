package com.ximalaya.ting.android.opensdk.player.service;

import android.telephony.PhoneStateListener;

class XmPlayerAudioFocusControl$1 extends PhoneStateListener
{
  public void onCallStateChanged(int paramInt, String paramString)
  {
    super.onCallStateChanged(paramInt, paramString);
    switch (paramInt)
    {
    default:
      return;
    case 0:
      XmPlayerAudioFocusControl.access$0(this.this$0);
      return;
    case 2:
      XmPlayerAudioFocusControl.access$1(this.this$0);
      return;
    case 1:
    }
    XmPlayerAudioFocusControl.access$1(this.this$0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerAudioFocusControl.1
 * JD-Core Version:    0.6.0
 */