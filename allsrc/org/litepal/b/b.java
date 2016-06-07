package org.litepal.b;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.litepal.d.c;
import org.litepal.exceptions.DataSupportException;

public class b
{
  String[] a;

  static Object a(Object paramObject, String paramString, Object[] paramArrayOfObject, Class<?> paramClass, Class<?>[] paramArrayOfClass)
  {
    if (paramArrayOfObject == null);
    try
    {
      paramArrayOfObject = new Object[0];
      if (paramArrayOfClass == null)
        paramArrayOfClass = new Class[0];
      Method localMethod = paramClass.getMethod(paramString, paramArrayOfClass);
      localMethod.setAccessible(true);
      Object localObject = localMethod.invoke(paramObject, paramArrayOfObject);
      return localObject;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
    throw new DataSupportException(DataSupportException.noSuchMethodException(paramClass.getSimpleName(), paramString));
  }

  static void a(Object paramObject1, String paramString, Object paramObject2, Class<?> paramClass)
  {
    try
    {
      Field localField = paramClass.getDeclaredField(paramString);
      localField.setAccessible(true);
      localField.set(paramObject1, paramObject2);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
    }
    throw new DataSupportException(DataSupportException.noSuchFieldExceptioin(paramClass.getSimpleName(), paramString));
  }

  public final double a(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      double d = new k(c.a()).a(paramString1, paramString2, this.a);
      monitorexit;
      return d;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final int a(String paramString)
  {
    monitorenter;
    try
    {
      int i = new k(c.a()).a(paramString, this.a);
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final <T> T a(String paramString1, String paramString2, Class<T> paramClass)
  {
    monitorenter;
    try
    {
      Object localObject2 = new k(c.a()).a(paramString1, paramString2, this.a, paramClass);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public final <T> T b(String paramString1, String paramString2, Class<T> paramClass)
  {
    monitorenter;
    try
    {
      Object localObject2 = new k(c.a()).b(paramString1, paramString2, this.a, paramClass);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }

  public final <T> T c(String paramString1, String paramString2, Class<T> paramClass)
  {
    monitorenter;
    try
    {
      Object localObject2 = new k(c.a()).c(paramString1, paramString2, this.a, paramClass);
      monitorexit;
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      monitorexit;
    }
    throw localObject1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.b.b
 * JD-Core Version:    0.6.0
 */