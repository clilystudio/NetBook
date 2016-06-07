package com.ushaqi.zhuishushenqi.ui.home;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.AdsResult;

final class H extends e<Void, Void, AdsResult>
{
  private H(HomeShelfFragment paramHomeShelfFragment)
  {
  }

  private static AdsResult a()
  {
    try
    {
      b.a();
      AdsResult localAdsResult = b.b().J("all");
      return localAdsResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.H
 * JD-Core Version:    0.6.0
 */