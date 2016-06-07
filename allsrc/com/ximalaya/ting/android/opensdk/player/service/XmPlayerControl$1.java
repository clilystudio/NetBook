package com.ximalaya.ting.android.opensdk.player.service;

import com.ximalaya.ting.android.player.XMediaPlayer.OnCompletionListener;
import com.ximalaya.ting.android.player.XMediaplayerImpl;

class XmPlayerControl$1
  implements XMediaPlayer.OnCompletionListener
{
  public void onCompletion(XMediaplayerImpl paramXMediaplayerImpl)
  {
    XmPlayerControl.access$0(this.this$0, 6);
    if (XmPlayerControl.access$1(this.this$0) != null)
      XmPlayerControl.access$1(this.this$0).onSoundPlayComplete();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerControl.1
 * JD-Core Version:    0.6.0
 */