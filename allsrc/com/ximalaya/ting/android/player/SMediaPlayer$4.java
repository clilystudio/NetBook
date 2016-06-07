package com.ximalaya.ting.android.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;

class SMediaPlayer$4
  implements MediaPlayer.OnErrorListener
{
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    SMediaPlayer.access$7(this.this$0);
    if (this.val$listener != null)
    {
      boolean bool = this.val$listener.onError(this.this$0, paramInt1, paramInt2);
      if (!bool)
        SMediaPlayer.access$6(this.this$0, 8);
      return bool;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.SMediaPlayer.4
 * JD-Core Version:    0.6.0
 */