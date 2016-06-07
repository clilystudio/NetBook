package com.ximalaya.ting.android.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;

class SMediaPlayer$7
  implements MediaPlayer.OnSeekCompleteListener
{
  public void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    SMediaPlayer.access$13(this.this$0, false);
    this.val$listener.onSeekComplete(this.this$0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.SMediaPlayer.7
 * JD-Core Version:    0.6.0
 */