package com.alipay.sdk.app;

public class o
{
  static String a;
  private int b = 0;
  private int c = 0;
  private int d = -2147483648;
  private int e = -2147483648;
  private int f = 0;
  private int g = 0;
  private boolean h = false;
  private boolean i = false;

  public static String a()
  {
    m localm = m.a(m.c.a());
    return a(localm.a(), localm.b(), "");
  }

  public static String a(int paramInt, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("resultStatus={").append(paramInt).append("};memo={").append(paramString1).append("};result={").append(paramString2).append("}");
    return localStringBuilder.toString();
  }

  public static String b()
  {
    m localm = m.a(m.e.a());
    return a(localm.a(), localm.b(), "");
  }

  public void a(int paramInt1, int paramInt2)
  {
    this.d = paramInt1;
    this.e = paramInt2;
    this.i = true;
    if (this.h)
    {
      if (paramInt2 != -2147483648)
        this.b = paramInt2;
      if (paramInt1 != -2147483648)
        this.c = paramInt1;
    }
    do
    {
      return;
      if (paramInt1 == -2147483648)
        continue;
      this.b = paramInt1;
    }
    while (paramInt2 == -2147483648);
    this.c = paramInt2;
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean == this.h)
      return;
    this.h = paramBoolean;
    if (this.i)
    {
      if (paramBoolean)
      {
        int m;
        if (this.e != -2147483648)
        {
          m = this.e;
          this.b = m;
          if (this.d == -2147483648)
            break label77;
        }
        label77: for (int n = this.d; ; n = this.g)
        {
          this.c = n;
          return;
          m = this.f;
          break;
        }
      }
      int j;
      if (this.d != -2147483648)
      {
        j = this.d;
        this.b = j;
        if (this.e == -2147483648)
          break label133;
      }
      label133: for (int k = this.e; ; k = this.g)
      {
        this.c = k;
        return;
        j = this.f;
        break;
      }
    }
    this.b = this.f;
    this.c = this.g;
  }

  public void b(int paramInt1, int paramInt2)
  {
    this.i = false;
    if (paramInt1 != -2147483648)
    {
      this.f = paramInt1;
      this.b = paramInt1;
    }
    if (paramInt2 != -2147483648)
    {
      this.g = paramInt2;
      this.c = paramInt2;
    }
  }

  public int c()
  {
    return this.b;
  }

  public int d()
  {
    return this.c;
  }

  public int e()
  {
    if (this.h)
      return this.c;
    return this.b;
  }

  public int f()
  {
    if (this.h)
      return this.b;
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.app.o
 * JD-Core Version:    0.6.0
 */