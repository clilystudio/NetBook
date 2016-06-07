package com.clilystudio.netbook.util.adutil;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class k
{
  protected static Object a(Class<?> paramClass1, String paramString, Class<?> paramClass2, Object paramObject, Object[] paramArrayOfObject)
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
  }

  public static boolean b()
  {
    try
    {
      Class.forName("com.baidu.mobad.feeds.BaiduNative");
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    return false;
  }

  public static boolean c()
  {
    try
    {
      Class.forName("com.qq.e.ads.nativ.NativeAD");
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.adutil.k
 * JD-Core Version:    0.6.0
 */