package com.ximalaya.ting.android.opensdk.player.service;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class XmAdsManager$2
  implements MediaPlayer.OnCompletionListener
{
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    XmAdsManager.access$1(this.this$0, false);
    XmAdsManager.access$0(this.this$0, true, this.val$tw.callback);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmAdsManager.2
 * JD-Core Version:    0.6.0
 */