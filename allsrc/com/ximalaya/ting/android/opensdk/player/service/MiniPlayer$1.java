package com.ximalaya.ting.android.opensdk.player.service;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;

class MiniPlayer$1
  implements MediaPlayer.OnErrorListener
{
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    MiniPlayer.access$0(this.this$0, -1);
    if (MiniPlayer.access$1(this.this$0) != null)
      return MiniPlayer.access$1(this.this$0).onError(null, paramInt1, paramInt2);
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.MiniPlayer.1
 * JD-Core Version:    0.6.0
 */