package com.xiaomi.smack;

public final class y
{
  public static final y a = new y("result");
  private static y b = new y("error");
  private String c;

  private y(String paramString)
  {
    this.c = paramString;
  }

  public static y a(String paramString)
  {
    if (paramString == null);
    String str;
    do
    {
      return null;
      str = paramString.toLowerCase();
      if (b.toString().equals(str))
        return b;
    }
    while (!a.toString().equals(str));
    return a;
  }

  public final String toString()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.y
 * JD-Core Version:    0.6.0
 */