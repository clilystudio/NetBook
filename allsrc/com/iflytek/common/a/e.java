package com.iflytek.common.a;

import com.iflytek.common.c.d;

public class e
{
  private long a;
  private long b;
  private String[] c;
  private long d = 0L;
  private long e = 0L;
  private String f;
  private d g;

  public e(d paramd)
  {
    this.g = paramd;
    this.a = this.g.b("KEY_PERIOD_RUN", 0L);
    this.b = this.g.b("KEY_PERIOD_UPDATE", 259200000L);
    String str = this.g.b("KEY_PKG_RUN", null);
    if ((str != null) && (str.length() > 0))
      this.c = str.split(",");
    this.d = this.g.b("KEY_LAST_UPDATE", 0L);
    this.e = this.g.b("KEY_LAST_LAUNCH", 0L);
    this.f = this.g.b("KEY_APPID", null);
  }

  public long a()
  {
    return this.a;
  }

  public void a(long paramLong)
  {
    this.g.a("KEY_PERIOD_UPDATE", paramLong);
    this.b = paramLong;
  }

  public void a(String paramString)
  {
    this.f = paramString;
    this.g.a("KEY_APPID", paramString);
  }

  public void a(String[] paramArrayOfString)
  {
    String str1 = "";
    if (paramArrayOfString != null)
    {
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String str2 = paramArrayOfString[j];
        if ((str2 == null) || (str2.length() <= 0))
          continue;
        if (str1.length() > 0)
          str1 = str1 + ",";
        str1 = str1 + str2;
      }
    }
    this.g.a("KEY_PKG_RUN", str1);
    this.c = paramArrayOfString;
  }

  public long b()
  {
    return this.b;
  }

  public void b(long paramLong)
  {
    this.g.a("KEY_PERIOD_RUN", paramLong);
    this.a = paramLong;
  }

  public void c(long paramLong)
  {
    this.d = paramLong;
    this.g.a("KEY_LAST_UPDATE", paramLong);
  }

  public String[] c()
  {
    return this.c;
  }

  public long d()
  {
    return this.d;
  }

  public void d(long paramLong)
  {
    this.e = paramLong;
    this.g.a("KEY_LAST_LAUNCH", paramLong);
  }

  public long e()
  {
    return this.e;
  }

  public String f()
  {
    return this.f;
  }

  public String g()
  {
    Object localObject = "";
    if (this.c != null)
    {
      String[] arrayOfString = this.c;
      int i = arrayOfString.length;
      int j = 0;
      while (j < i)
      {
        String str1 = arrayOfString[j];
        String str2 = (String)localObject + str1 + ",";
        j++;
        localObject = str2;
      }
    }
    return (String)localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.a.e
 * JD-Core Version:    0.6.0
 */