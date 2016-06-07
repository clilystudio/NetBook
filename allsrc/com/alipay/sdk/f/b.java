package com.alipay.sdk.f;

import android.content.Context;
import android.text.TextUtils;

public final class b
{
  private static b c;
  public String a;
  public String b;

  public static b a()
  {
    monitorenter;
    try
    {
      if (c == null)
      {
        c = new b();
        Context localContext = com.alipay.sdk.e.b.a().a;
        a locala = new a(localContext);
        String str1 = com.alipay.sdk.util.a.a(localContext).a();
        String str2 = com.alipay.sdk.util.a.a(localContext).b();
        c.a = locala.b(str1, str2);
        c.b = locala.c(str1, str2);
        if (TextUtils.isEmpty(c.b))
        {
          b localb2 = c;
          String str3 = Long.toHexString(System.currentTimeMillis());
          if (str3.length() > 10)
            str3 = str3.substring(-10 + str3.length());
          localb2.b = str3;
        }
        locala.a(str1, str2, c.a, c.b);
      }
      b localb1 = c;
      return localb1;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.f.b
 * JD-Core Version:    0.6.0
 */