package com.ximalaya.ting.android.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class SMediaPlayer$3
  implements MediaPlayer.OnCompletionListener
{
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    SMediaPlayer.access$6(this.this$0, 11);
    this.val$listener.onCompletion(this.this$0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.SMediaPlayer.3
 * JD-Core Version:    0.6.0
 */