package com.ximalaya.ting.android.player;

class XMediaPlayerWrapper$1
  implements XMediaPlayer.OnErrorListener
{
  public boolean onError(XMediaplayerImpl paramXMediaplayerImpl, int paramInt1, int paramInt2)
  {
    if (paramInt2 == -1011)
    {
      XMediaPlayerWrapper.access$0(this.this$0);
      return true;
    }
    if (XMediaPlayerWrapper.access$1(this.this$0) != null)
      return XMediaPlayerWrapper.access$1(this.this$0).onError(XMediaPlayerWrapper.access$2(this.this$0), paramInt1, paramInt2);
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaPlayerWrapper.1
 * JD-Core Version:    0.6.0
 */