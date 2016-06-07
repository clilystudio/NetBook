package com.ushaqi.zhuishushenqi.api;

public final class b
{
  private static b a = null;
  private static ApiService b = null;

  public static b a()
  {
    if (a == null)
      a = new b();
    return a;
  }

  public static ApiService b()
  {
    if (b == null)
      b = new ApiService(f.a());
    return b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.api.b
 * JD-Core Version:    0.6.0
 */