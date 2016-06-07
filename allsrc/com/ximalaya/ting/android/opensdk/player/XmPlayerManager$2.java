package com.ximalaya.ting.android.opensdk.player;

import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback;
import com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback.Stub;

class XmPlayerManager$2 extends IXmGetDownloadPlayPathCallback.Stub
{
  public String getDownloadPlayPath(Track paramTrack)
  {
    if (XmPlayerManager.access$10(this.this$0) != null)
      return XmPlayerManager.access$10(this.this$0).getDownloadPlayPath(paramTrack);
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.XmPlayerManager.2
 * JD-Core Version:    0.6.0
 */