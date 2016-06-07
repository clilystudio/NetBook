package com.ushaqi.zhuishushenqi.util;

import com.ushaqi.zhuishushenqi.MyApplication;
import com.ushaqi.zhuishushenqi.model.AdsConfig2;
import com.ushaqi.zhuishushenqi.model.MenuAd;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private static a a = null;

  public static a a()
  {
    if (a == null)
      a = new a();
    return a;
  }

  private static void a(AdsConfig2 paramAdsConfig2)
  {
    MyApplication.a().a(paramAdsConfig2, "saved_adverts_reader_menu");
  }

  private static AdsConfig2 d()
  {
    return (AdsConfig2)MyApplication.a().b("saved_adverts_reader_menu");
  }

  public final boolean a(List<MenuAd> paramList)
  {
    if (paramList == null)
      return false;
    AdsConfig2 localAdsConfig21 = d();
    if (paramList.size() == 0)
    {
      if (localAdsConfig21 == null)
        return false;
      a(null);
      return true;
    }
    if (paramList == null)
    {
      paramList = null;
      if (localAdsConfig21 != null)
        break label80;
    }
    for (AdsConfig2 localAdsConfig22 = new AdsConfig2(); ; localAdsConfig22 = localAdsConfig21)
    {
      localAdsConfig22.setAdvertList(paramList);
      localAdsConfig22.setIndex(0);
      a(localAdsConfig22);
      return true;
      Collections.sort(paramList, new b(this));
      break;
      label80: List localList = localAdsConfig21.getAdvertList();
      int i;
      if ((paramList == null) || (localList == null))
        i = 0;
      while (i != 0)
      {
        return false;
        if (paramList.size() != localList.size())
        {
          i = 0;
          continue;
        }
        Iterator localIterator = paramList.iterator();
        while (true)
          if (localIterator.hasNext())
          {
            if (localList.contains((MenuAd)localIterator.next()))
              continue;
            i = 0;
            break;
          }
        i = 1;
      }
    }
  }

  public final MenuAd b()
  {
    AdsConfig2 localAdsConfig2 = d();
    if (localAdsConfig2 == null);
    List localList;
    int i;
    do
    {
      do
      {
        do
          return null;
        while (localAdsConfig2 == null);
        localList = localAdsConfig2.getAdvertList();
      }
      while (localList == null);
      i = localAdsConfig2.getIndex();
    }
    while ((i < 0) || (i >= localList.size()));
    return (MenuAd)localList.get(i);
  }

  public final void c()
  {
    AdsConfig2 localAdsConfig2 = d();
    if ((localAdsConfig2 == null) || (localAdsConfig2.getAdvertList() == null));
    int i;
    do
    {
      return;
      i = localAdsConfig2.getAdvertList().size();
    }
    while (i < 2);
    localAdsConfig2.setIndex((1 + localAdsConfig2.getIndex()) % i);
    a(localAdsConfig2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.a
 * JD-Core Version:    0.6.0
 */