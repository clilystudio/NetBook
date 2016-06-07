package com.ximalaya.ting.android.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

class SMediaPlayer$6
  implements MediaPlayer.OnPreparedListener
{
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    SMediaPlayer.access$9(this.this$0, "onPrepared");
    SMediaPlayer.access$6(this.this$0, 3);
    SMediaPlayer.access$10(this.this$0, false);
    SMediaPlayer.access$11(this.this$0, this.this$0.mMediaPlayer.getDuration());
    SMediaPlayer.access$12(this.this$0, this.this$0.mMediaPlayer.getCurrentPosition());
    this.val$listener.onPrepared(this.this$0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.SMediaPlayer.6
 * JD-Core Version:    0.6.0
 */