package com.ushaqi.zhuishushenqi.util.adutil;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.AdvertData;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.List;

public final class l extends a
  implements View.OnClickListener
{
  private com.androidquery.a b;
  private View c;
  private View d;
  private Class<?> e;
  private Object f;
  private boolean g = false;

  public l(AdSplashImp paramAdSplashImp)
  {
    super(paramAdSplashImp);
  }

  private static Object a(Class<?> paramClass1, String paramString, Class<?> paramClass2, Object paramObject, Object[] paramArrayOfObject)
  {
    if (paramClass2 == null);
    try
    {
      Method localMethod;
      for (Object localObject = paramClass1.getDeclaredMethod(paramString, new Class[0]); ; localObject = localMethod)
      {
        return ((Method)localObject).invoke(paramObject, paramArrayOfObject);
        localMethod = paramClass1.getDeclaredMethod(paramString, new Class[] { paramClass2 });
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (NullPointerException localNullPointerException)
    {
      while (true)
        localNullPointerException.printStackTrace();
    }
  }

  public final void a()
  {
    Class localClass = this.e;
    Object localObject = this.f;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.d;
    a(localClass, "onClicked", View.class, localObject, arrayOfObject);
  }

  public final boolean a(View paramView)
  {
    try
    {
      this.a.a();
      this.b = new com.androidquery.a(paramView.getContext());
      this.c = paramView;
      this.d = this.c.findViewById(2131493264);
      this.d.setOnClickListener(this);
      Class localClass1 = Class.forName("com.qq.e.ads.nativ.NativeAD$NativeAdListener");
      Object localObject1 = Proxy.newProxyInstance(localClass1.getClassLoader(), new Class[] { localClass1 }, this);
      Class localClass2 = Class.forName("com.qq.e.ads.nativ.NativeAD");
      Class[] arrayOfClass1 = { Context.class, String.class, String.class, localClass1 };
      Object[] arrayOfObject1 = new Object[4];
      arrayOfObject1[0] = paramView.getContext();
      arrayOfObject1[1] = "1104888432";
      arrayOfObject1[2] = "4040702741756839";
      arrayOfObject1[3] = localObject1;
      Object localObject2 = localClass2.getConstructor(arrayOfClass1).newInstance(arrayOfObject1);
      Class[] arrayOfClass2 = new Class[1];
      arrayOfClass2[0] = Integer.TYPE;
      Method localMethod1 = localClass2.getDeclaredMethod("loadAD", arrayOfClass2);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(1);
      localMethod1.invoke(localObject2, arrayOfObject2);
      Class localClass3 = Class.forName("com.qq.e.ads.cfg.DownAPPConfirmPolicy");
      Object[] arrayOfObject3 = localClass3.getEnumConstants();
      Method localMethod2 = localClass2.getDeclaredMethod("setDownAPPConfirmPolicy", new Class[] { localClass3 });
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = arrayOfObject3[1];
      localMethod2.invoke(localObject2, arrayOfObject4);
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
    case -1769079577:
    case -1013111773:
    }
    while (true)
      switch (i)
      {
      default:
        return null;
        if (!str.equals("onADLoaded"))
          continue;
        i = 0;
        continue;
        if (!str.equals("onNoAD"))
          continue;
        i = 1;
      case 0:
      case 1:
      }
    this.e = Class.forName("com.qq.e.ads.nativ.NativeADDataRef");
    Iterator localIterator = ((List)paramArrayOfObject[0]).iterator();
    if (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      AdvertData localAdvertData = new AdvertData();
      localAdvertData.setApk(((Boolean)a(this.e, "isAPP", null, localObject, new Object[0])).booleanValue());
      this.a.a(localAdvertData.isApk());
      this.a.a(this);
      this.f = localObject;
      localAdvertData.setImg((String)a(this.e, "getImgUrl", null, localObject, new Object[0]));
      ((com.androidquery.a)this.b.a(this.d)).a((String)a(this.e, "getImgUrl", null, localObject, new Object[0]), false, true);
      Class localClass = this.e;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.c;
      a(localClass, "onExposured", View.class, localObject, arrayOfObject);
      this.a.b();
      this.g = true;
    }
    for (int j = 1; j == 0; j = 0)
    {
      this.a.c();
      return null;
      this.a.c();
      return null;
    }
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131493264:
    }
    do
      return;
    while (!this.g);
    a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.adutil.l
 * JD-Core Version:    0.6.0
 */