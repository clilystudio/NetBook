package com.ximalaya.ting.android.opensdk.player.service;

import com.ximalaya.ting.android.player.XMediaPlayer.OnInfoListener;
import com.ximalaya.ting.android.player.XMediaplayerImpl;

class XmPlayerControl$5
  implements XMediaPlayer.OnInfoListener
{
  public boolean onInfo(XMediaplayerImpl paramXMediaplayerImpl, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    if (paramInt1 == 10)
      if (paramInt2 == 701)
        XmPlayerControl.access$6(this.this$0, bool);
    while (true)
    {
      if (XmPlayerControl.access$1(this.this$0) != null)
      {
        if (XmPlayerControl.access$7(this.this$0))
          XmPlayerControl.access$1(this.this$0).onBufferingStart();
      }
      else
      {
        return bool;
        if (paramInt2 != 702)
          break label93;
        XmPlayerControl.access$6(this.this$0, false);
        continue;
      }
      XmPlayerControl.access$1(this.this$0).onBufferingStop();
      return bool;
      label93: bool = false;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerControl.5
 * JD-Core Version:    0.6.0
 */