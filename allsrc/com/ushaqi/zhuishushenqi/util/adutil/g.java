package com.ushaqi.zhuishushenqi.util.adutil;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public final class g extends a
{
  public g(AdSplashImp paramAdSplashImp)
  {
    super(paramAdSplashImp);
  }

  public final boolean a(View paramView)
  {
    try
    {
      this.a.a();
      Class localClass1 = Class.forName("com.baidu.mobads.SplashAdListener");
      Object localObject = Proxy.newProxyInstance(localClass1.getClassLoader(), new Class[] { localClass1 }, this);
      Class localClass2 = Class.forName("com.baidu.mobads.SplashAd");
      Class localClass3 = Class.forName("com.baidu.mobads.SplashAd$SplashType");
      Object[] arrayOfObject1 = localClass3.getEnumConstants();
      Class[] arrayOfClass = new Class[6];
      arrayOfClass[0] = Context.class;
      arrayOfClass[1] = ViewGroup.class;
      arrayOfClass[2] = localClass1;
      arrayOfClass[3] = String.class;
      arrayOfClass[4] = Boolean.TYPE;
      arrayOfClass[5] = localClass3;
      Object[] arrayOfObject2 = new Object[6];
      arrayOfObject2[0] = paramView.getContext();
      arrayOfObject2[1] = paramView;
      arrayOfObject2[2] = localObject;
      arrayOfObject2[3] = "2009524";
      arrayOfObject2[4] = Boolean.valueOf(true);
      arrayOfObject2[5] = arrayOfObject1[1];
      localClass2.getConstructor(arrayOfClass).newInstance(arrayOfObject2);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    String str = paramMethod.getName();
    int i = -1;
    switch (str.hashCode())
    {
    default:
      switch (i)
      {
      case 0:
      default:
      case 1:
      case 2:
      case 3:
      }
    case 1960433767:
    case 676776255:
    case 273540089:
    case 157935686:
    }
    while (true)
    {
      return null;
      if (!str.equals("onAdDismissed"))
        break;
      i = 0;
      break;
      if (!str.equals("onAdFailed"))
        break;
      i = 1;
      break;
      if (!str.equals("onAdPresent"))
        break;
      i = 2;
      break;
      if (!str.equals("onAdClick"))
        break;
      i = 3;
      break;
      this.a.c();
      continue;
      this.a.a(true);
      this.a.b();
      continue;
      this.a.d();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.adutil.g
 * JD-Core Version:    0.6.0
 */