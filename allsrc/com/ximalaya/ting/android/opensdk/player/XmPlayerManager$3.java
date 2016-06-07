package com.ximalaya.ting.android.opensdk.player;

import android.os.Message;
import com.ximalaya.ting.android.opensdk.model.advertis.Advertis;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;
import com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher.Stub;

class XmPlayerManager$3 extends IXmAdsEventDispatcher.Stub
{
  public void onAdsStartBuffering()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(14).sendToTarget();
  }

  public void onAdsStopBuffering()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(15).sendToTarget();
  }

  public void onCompletePlayAds()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(17).sendToTarget();
  }

  public void onError(int paramInt1, int paramInt2)
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(18);
    localMessage.arg1 = paramInt1;
    localMessage.arg2 = paramInt2;
    localMessage.sendToTarget();
  }

  public void onGetAdsInfo(AdvertisList paramAdvertisList)
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(13);
    localMessage.obj = paramAdvertisList;
    localMessage.sendToTarget();
  }

  public void onStartGetAdsInfo()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(12).sendToTarget();
  }

  public void onStartPlayAds(Advertis paramAdvertis, int paramInt)
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(16);
    localMessage.arg1 = paramInt;
    localMessage.obj = paramAdvertis;
    localMessage.sendToTarget();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.XmPlayerManager.3
 * JD-Core Version:    0.6.0
 */