package com.clilystudio.app.netbook.util.adutil;

import android.content.Context;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public final class BaiduShelfAdContainer extends k
{
  private static Class<?> a;

  public final void a(Context paramContext, String paramString)
  {
    if (b());
    try
    {
      Class localClass1 = Class.forName("com.baidu.mobad.feeds.BaiduNative$BaiduNativeNetworkListener");
      Object localObject1 = Proxy.newProxyInstance(localClass1.getClassLoader(), new Class[] { localClass1 }, new h(this, paramString));
      Class localClass2 = Class.forName("com.baidu.mobad.feeds.BaiduNative");
      Class[] arrayOfClass = { Context.class, localClass1 };
      Object[] arrayOfObject1 = { paramContext, localObject1 };
      Object localObject2 = localClass2.getConstructor(arrayOfClass).newInstance(arrayOfObject1);
      Class localClass3 = Class.forName("com.baidu.mobad.feeds.RequestParameters$Builder");
      Object localObject3 = localClass3.newInstance();
      a(localClass3, "keywords", String.class, localObject3, new Object[] { "" });
      Class localClass4 = Integer.TYPE;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(3);
      a(localClass3, "setAdsType", localClass4, localObject3, arrayOfObject2);
      Class localClass5 = Boolean.TYPE;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Boolean.valueOf(false);
      a(localClass3, "confirmDownloading", localClass5, localObject3, arrayOfObject3);
      Object localObject4 = a(localClass3, "build", null, localObject3, new Object[0]);
      localClass2.getDeclaredMethod("makeRequest", new Class[] { Class.forName("com.baidu.mobad.feeds.RequestParameters") }).invoke(localObject2, new Object[] { localObject4 });
      return;
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
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.adutil.BaiduShelfAdContainer
 * JD-Core Version:    0.6.2
 */