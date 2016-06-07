package com.d.a.c;

import android.content.Context;
import android.support.v7.app.k;
import java.util.zip.Adler32;

public final class c
{
  private static b a = null;
  private static Object b = new Object();

  public static b a(Context paramContext)
  {
    monitorenter;
    while (true)
    {
      try
      {
        if (a == null)
          continue;
        localb = a;
        return localb;
        if (paramContext != null)
        {
          localb = b(paramContext);
          a = localb;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      b localb = null;
    }
  }

  private static b b(Context paramContext)
  {
    if (paramContext != null)
      new b();
    while (true)
    {
      String str1;
      synchronized (b)
      {
        str1 = d.a(paramContext).a();
        if (k.a(str1))
          continue;
        if (str1.endsWith("\n"))
        {
          str2 = str1.substring(0, -1 + str1.length());
          b localb = new b();
          long l = System.currentTimeMillis();
          String str3 = com.alipay.sdk.b.b.b(paramContext);
          String str4 = com.alipay.sdk.b.b.c(paramContext);
          localb.c(str3);
          localb.a(str3);
          localb.a(l);
          localb.b(str4);
          localb.d(str2);
          Object[] arrayOfObject = new Object[5];
          arrayOfObject[0] = localb.e();
          arrayOfObject[1] = localb.d();
          arrayOfObject[2] = Long.valueOf(localb.a());
          arrayOfObject[3] = localb.c();
          arrayOfObject[4] = localb.b();
          String str5 = String.format("%s%s%s%s%s", arrayOfObject);
          if (k.a(str5))
            continue;
          Adler32 localAdler32 = new Adler32();
          localAdler32.reset();
          localAdler32.update(str5.getBytes());
          localAdler32.getValue();
          return localb;
          return null;
        }
      }
      String str2 = str1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.d.a.c.c
 * JD-Core Version:    0.6.0
 */