package com.ximalaya.ting.android.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;

class SMediaPlayer$2
  implements MediaPlayer.OnBufferingUpdateListener
{
  public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    this.val$listener.onBufferingUpdate(this.this$0, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.SMediaPlayer.2
 * JD-Core Version:    0.6.0
 */