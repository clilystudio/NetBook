package com.ushaqi.zhuishushenqi.ui.home;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.UshaqiOnlineConfig;

final class m extends e<Void, Void, UshaqiOnlineConfig>
{
  private m(HomeParentActivity paramHomeParentActivity)
  {
  }

  private UshaqiOnlineConfig a()
  {
    try
    {
      UshaqiOnlineConfig localUshaqiOnlineConfig = b.b().a();
      return localUshaqiOnlineConfig;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.m
 * JD-Core Version:    0.6.0
 */