package com.ximalaya.ting.android.opensdk.player.service;

import com.ximalaya.ting.android.opensdk.model.track.Track;

class XmPlayerService$3
  implements XmAdsManager.PlayAdsCallback
{
  public void onFinish()
  {
    try
    {
      XmPlayerService.access$27(this.this$0, this.val$sound, true);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmPlayerService.3
 * JD-Core Version:    0.6.0
 */