package com.ushaqi.zhuishushenqi.pay.a;

import android.text.TextUtils;

public final class e
{
  private String a;
  private String b;
  private String c;

  public e(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return;
      for (String str : paramString.split(";"))
      {
        if (str.startsWith("resultStatus"))
          this.a = a(str, "resultStatus");
        if (str.startsWith("result"))
          this.b = a(str, "result");
        if (!str.startsWith("memo"))
          continue;
        this.c = a(str, "memo");
      }
    }
  }

  private static String a(String paramString1, String paramString2)
  {
    String str = paramString2 + "={";
    return paramString1.substring(paramString1.indexOf(str) + str.length(), paramString1.lastIndexOf("}"));
  }

  public final String a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final String toString()
  {
    return "resultStatus={" + this.a + "};memo={" + this.c + "};result={" + this.b + "}";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.pay.a.e
 * JD-Core Version:    0.6.0
 */