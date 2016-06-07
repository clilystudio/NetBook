package com.ximalaya.ting.android.player;

import android.os.Handler;

class SMediaPlayer$1
  implements Runnable
{
  public void run()
  {
    if (SMediaPlayer.access$0(this.this$0) == null)
      return;
    if ((SMediaPlayer.access$1(this.this$0) == 4) && (!SMediaPlayer.access$2(this.this$0)) && (!SMediaPlayer.access$3(this.this$0)))
      SMediaPlayer.access$0(this.this$0).onPositionChange(this.this$0, this.this$0.getCurrentPosition());
    SMediaPlayer.access$4(this.this$0).postDelayed(SMediaPlayer.access$5(this.this$0), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.SMediaPlayer.1
 * JD-Core Version:    0.6.0
 */