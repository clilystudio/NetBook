package com.nostra13.universalimageloader.b;

import android.util.Log;
import com.nostra13.universalimageloader.core.f;

public final class d
{
  private static volatile boolean a = false;
  private static volatile boolean b = true;

  private static void a(int paramInt, Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    if (!b)
      return;
    if (paramArrayOfObject.length > 0);
    for (String str = String.format(paramString, paramArrayOfObject); ; str = paramString)
    {
      if (paramThrowable == null);
      while (true)
      {
        Log.println(paramInt, f.a, str);
        return;
        if (str == null)
          str = paramThrowable.getMessage();
        str = String.format("%1$s\n%2$s", new Object[] { str, Log.getStackTraceString(paramThrowable) });
      }
    }
  }

  public static void a(String paramString, Object[] paramArrayOfObject)
  {
    if (a)
      a(3, null, paramString, paramArrayOfObject);
  }

  public static void a(Throwable paramThrowable)
  {
    a(6, paramThrowable, null, new Object[0]);
  }

  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static void b(String paramString, Object[] paramArrayOfObject)
  {
    a(4, null, paramString, paramArrayOfObject);
  }

  public static void c(String paramString, Object[] paramArrayOfObject)
  {
    a(5, null, paramString, paramArrayOfObject);
  }

  public static void d(String paramString, Object[] paramArrayOfObject)
  {
    a(6, null, paramString, paramArrayOfObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.b.d
 * JD-Core Version:    0.6.0
 */