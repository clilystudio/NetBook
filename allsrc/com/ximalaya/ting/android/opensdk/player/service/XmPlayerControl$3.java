package com.ximalaya.ting.android.opensdk.player.service;

import com.ximalaya.ting.android.player.XMediaPlayer.OnSeekCompleteListener;
import com.ximalaya.ting.android.player.XMediaplayerImpl;

class XmPlayerControl$3
  implements XMediaPlayer.OnSeekCompleteListener
{
  public void onSeekComplete(XMediaplayerImpl paramXMediaplayerImpl)
  {
    if (XmPlayerControl.access$5(this.this$0) == 5)
      this.this$0.play();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerControl.3
 * JD-Core Version:    0.6.0
 */