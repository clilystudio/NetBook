package com.ximalaya.ting.android.opensdk.player.service;

import com.ximalaya.ting.android.player.XMediaPlayer.OnPreparedListener;
import com.ximalaya.ting.android.player.XMediaplayerImpl;

class XmPlayerControl$2
  implements XMediaPlayer.OnPreparedListener
{
  public void onPrepared(XMediaplayerImpl paramXMediaplayerImpl)
  {
    XmPlayerControl.access$0(this.this$0, 2);
    XmPlayerControl.access$2(this.this$0, paramXMediaplayerImpl.getDuration());
    if (XmPlayerControl.access$1(this.this$0) != null)
      XmPlayerControl.access$1(this.this$0).onSoundPrepared();
    if (XmPlayerControl.access$3(this.this$0))
    {
      this.this$0.play();
      XmPlayerControl.access$4(this.this$0, false);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerControl.2
 * JD-Core Version:    0.6.0
 */