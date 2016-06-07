package com.ximalaya.ting.android.opensdk.player.service;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;
import java.util.List;

class XmAdsManager$1
  implements IDataCallBack<AdvertisList>
{
  public void onError(int paramInt, String paramString)
  {
    XmAdsManager.access$1(this.this$0, false);
    XmAdsManager.access$0(this.this$0, true, this.val$tw.callback);
  }

  public void onSuccess(AdvertisList paramAdvertisList)
  {
    if (XmAdsManager.access$0(this.this$0, this.val$tw.cancel, this.val$tw.callback))
      return;
    if ((paramAdvertisList == null) || (paramAdvertisList.getRet() != 0) || (paramAdvertisList.getAdvertisList() == null) || (paramAdvertisList.getAdvertisList().size() == 0) || (paramAdvertisList.getAdvertisList().get(0) == null))
    {
      XmAdsManager.access$1(this.this$0, false);
      XmAdsManager.access$0(this.this$0, true, this.val$tw.callback);
      return;
    }
    this.val$tw.ads = paramAdvertisList;
    if (XmAdsManager.access$2(this.this$0) != null)
      XmAdsManager.access$2(this.this$0).onGetAdsInfo(paramAdvertisList);
    XmAdsManager.access$3(this.this$0, this.val$tw);
    XmAdsManager.access$4(this.this$0, this.val$tw);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmAdsManager.1
 * JD-Core Version:    0.6.0
 */