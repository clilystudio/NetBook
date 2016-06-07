package com.ushaqi.zhuishushenqi.util.adutil;

import android.content.Context;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public final class GdtShelfAdContainer extends k
{
  private static Class<?> a;

  public final void a(Context paramContext, String paramString)
  {
    if (c());
    while (true)
    {
      String str;
      try
      {
        Class localClass1 = Class.forName("com.qq.e.ads.nativ.NativeAD$NativeAdListener");
        Object localObject1 = Proxy.newProxyInstance(localClass1.getClassLoader(), new Class[] { localClass1 }, new m(this, paramString));
        Class localClass2 = Class.forName("com.qq.e.ads.nativ.NativeAD");
        Class[] arrayOfClass1 = { Context.class, String.class, String.class, localClass1 };
        Object[] arrayOfObject1 = new Object[4];
        arrayOfObject1[0] = paramContext;
        arrayOfObject1[1] = "1104888432";
        switch (paramString.hashCode())
        {
        case 115029:
          arrayOfObject1[2] = str;
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
          return;
          if (!paramString.equals("top"))
            break;
          i = 0;
          break;
        case 2042924257:
          if (!paramString.equals("bookshelf"))
            break;
          i = 1;
          break;
        case 3029737:
          if (!paramString.equals("book"))
            break;
          i = 2;
          break;
        case 3433103:
          if (!paramString.equals("page"))
            break;
          i = 3;
          break label375;
          str = "7060904703332144";
          continue;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        localClassNotFoundException.printStackTrace();
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localNoSuchMethodException.printStackTrace();
        return;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        localInvocationTargetException.printStackTrace();
        return;
      }
      catch (InstantiationException localInstantiationException)
      {
        localInstantiationException.printStackTrace();
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
        return;
      }
      int i = -1;
      switch (i)
      {
      case 3:
      default:
        str = "6000100621268802";
        continue;
        return;
      case 0:
        str = "6000100621268802";
        break;
      case 1:
        str = "5050108773429867";
        break;
      case 2:
        label375: str = "8050804783531153";
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.adutil.GdtShelfAdContainer
 * JD-Core Version:    0.6.0
 */