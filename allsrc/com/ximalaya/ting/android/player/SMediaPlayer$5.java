package com.ximalaya.ting.android.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;

class SMediaPlayer$5
  implements MediaPlayer.OnInfoListener
{
  public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Logger.log(XMediaplayerJNI.Tag, "SMediaPlayer OnInfoListener:" + paramInt1 + "extra:" + paramInt2);
    switch (paramInt1)
    {
    default:
    case 701:
    case 702:
    }
    while (true)
    {
      return this.val$listener.onInfo(this.this$0, 10, paramInt1);
      SMediaPlayer.access$8(this.this$0, true);
      continue;
      SMediaPlayer.access$8(this.this$0, false);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.SMediaPlayer.5
 * JD-Core Version:    0.6.0
 */