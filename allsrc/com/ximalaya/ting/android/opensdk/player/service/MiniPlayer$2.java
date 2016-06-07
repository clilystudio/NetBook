package com.ximalaya.ting.android.opensdk.player.service;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class MiniPlayer$2
  implements MediaPlayer.OnCompletionListener
{
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    MiniPlayer.access$0(this.this$0, 5);
    if (MiniPlayer.access$2(this.this$0) != null)
      MiniPlayer.access$2(this.this$0).onCompletion(paramMediaPlayer);
    if (MiniPlayer.access$1(this.this$0) != null)
      MiniPlayer.access$1(this.this$0).onComplete();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.MiniPlayer.2
 * JD-Core Version:    0.6.0
 */