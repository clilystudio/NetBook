package com.ximalaya.ting.android.opensdk.player.service;

import android.util.Log;
import com.squareup.okhttp.I;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;

class XmAdsManager$4
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
    Log.e("XmAdsManager", "onFailure " + paramInt + ", " + paramString);
  }

  public void onResponse(I paramI)
  {
    Log.e("XmAdsManager", "onResponse " + paramI);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmAdsManager.4
 * JD-Core Version:    0.6.0
 */