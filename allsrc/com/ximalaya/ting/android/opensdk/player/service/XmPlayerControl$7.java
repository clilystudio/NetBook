package com.ximalaya.ting.android.opensdk.player.service;

import com.ximalaya.ting.android.player.XMediaPlayer.OnPositionChangeListener;
import com.ximalaya.ting.android.player.XMediaplayerImpl;
import com.ximalaya.ting.android.player.XMediaplayerJNI.AudioType;

class XmPlayerControl$7
  implements XMediaPlayer.OnPositionChangeListener
{
  public void onPositionChange(XMediaplayerImpl paramXMediaplayerImpl, int paramInt)
  {
    if (!paramXMediaplayerImpl.getAudioType().equals(XMediaplayerJNI.AudioType.HLS_FILE))
    {
      int i = paramXMediaplayerImpl.getDuration();
      if ((i > 0) && (XmPlayerControl.access$1(this.this$0) != null))
        XmPlayerControl.access$1(this.this$0).onPlayProgress(paramInt, i);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerControl.7
 * JD-Core Version:    0.6.0
 */