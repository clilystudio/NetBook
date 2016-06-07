package com.ximalaya.ting.android.opensdk.player.service;

import com.ximalaya.ting.android.player.XMediaPlayer.OnBufferingUpdateListener;
import com.ximalaya.ting.android.player.XMediaplayerImpl;

class XmPlayerControl$6
  implements XMediaPlayer.OnBufferingUpdateListener
{
  public void onBufferingUpdate(XMediaplayerImpl paramXMediaplayerImpl, int paramInt)
  {
    if (XmPlayerControl.access$1(this.this$0) != null)
      XmPlayerControl.access$1(this.this$0).onBufferProgress(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerControl.6
 * JD-Core Version:    0.6.0
 */