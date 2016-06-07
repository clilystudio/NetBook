package com.ximalaya.ting.android.opensdk.player.service;

import android.util.Log;
import com.ximalaya.ting.android.player.XMediaPlayer.OnErrorListener;
import com.ximalaya.ting.android.player.XMediaplayerImpl;

class XmPlayerControl$4
  implements XMediaPlayer.OnErrorListener
{
  public boolean onError(XMediaplayerImpl paramXMediaplayerImpl, int paramInt1, int paramInt2)
  {
    Log.e("XmPlayerControl", "onError what:" + paramInt1 + ",extra:" + paramInt2);
    XmPlayerControl.access$0(this.this$0, 7);
    if (XmPlayerControl.access$1(this.this$0) != null)
      XmPlayerControl.access$1(this.this$0).onError(new XmPlayerException(paramInt1, paramInt2));
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerControl.4
 * JD-Core Version:    0.6.0
 */