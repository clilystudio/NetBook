package com.ximalaya.ting.android.opensdk.player.service;

import android.text.TextUtils;
import com.ximalaya.ting.android.opensdk.model.advertis.Advertis;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;
import com.ximalaya.ting.android.opensdk.util.DigestUtils;
import com.ximalaya.ting.android.opensdk.util.FileUtilBase;
import com.ximalaya.ting.android.opensdk.util.MyAsyncTask;
import java.util.List;

class XmAdsManager$3 extends MyAsyncTask<Void, Void, String>
{
  protected String doInBackground(Void[] paramArrayOfVoid)
  {
    String str2;
    if (this.val$tw.cancel)
      str2 = null;
    String str1;
    String str3;
    do
    {
      return str2;
      str1 = ((Advertis)this.val$tw.ads.getAdvertisList().get(0)).getSoundUrl();
      str2 = DigestUtils.md5Hex(str1) + XmAdsManager.getSuffixFromUrl(str1);
      str3 = FileUtilBase.getAdsCacheDir(XmAdsManager.access$5(this.this$0), str2);
    }
    while (XmAdsManager.access$6(this.this$0, str1, str3, this.val$tw) == 0);
    return null;
  }

  protected void onPostExecute(String paramString)
  {
    if (XmAdsManager.access$0(this.this$0, this.val$tw.cancel, this.val$tw.callback))
      if (XmAdsManager.access$2(this.this$0) != null)
        XmAdsManager.access$2(this.this$0).onAdsStopBuffering();
    while (true)
    {
      return;
      if (!TextUtils.isEmpty(paramString))
        break;
      XmAdsManager.access$1(this.this$0, false);
      XmAdsManager.access$0(this.this$0, true, this.val$tw.callback);
      if (XmAdsManager.access$2(this.this$0) == null)
        continue;
      XmAdsManager.access$2(this.this$0).onAdsStopBuffering();
      return;
    }
    if (XmAdsManager.access$7(this.this$0).size() > 10)
      XmAdsManager.access$8(this.this$0, (String)XmAdsManager.access$7(this.this$0).remove(0));
    XmAdsManager.access$7(this.this$0).add(paramString);
    XmAdsManager.access$9(this.this$0, this.val$tw);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmAdsManager.3
 * JD-Core Version:    0.6.0
 */