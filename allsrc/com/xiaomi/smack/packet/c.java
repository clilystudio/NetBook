package com.xiaomi.smack.packet;

public final class c
{
  public static final c a = new c("get");
  public static final c b = new c("set");
  public static final c c;
  private static c d = new c("result");
  private String e;

  static
  {
    c = new c("error");
  }

  private c(String paramString)
  {
    this.e = paramString;
  }

  public static c a(String paramString)
  {
    if (paramString == null);
    String str;
    do
    {
      return null;
      str = paramString.toLowerCase();
      if (a.toString().equals(str))
        return a;
      if (b.toString().equals(str))
        return b;
      if (c.toString().equals(str))
        return c;
    }
    while (!d.toString().equals(str));
    return d;
  }

  public final String toString()
  {
    return this.e;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.c
 * JD-Core Version:    0.6.0
 */