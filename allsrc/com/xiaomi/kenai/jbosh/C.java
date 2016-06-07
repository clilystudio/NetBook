package com.xiaomi.kenai.jbosh;

final class C extends a<String>
  implements Comparable
{
  private static final C a;
  private final int b;
  private final int c;

  static
  {
    try
    {
      a = a("1.8");
      return;
    }
    catch (aa localaa)
    {
    }
    throw new IllegalStateException(localaa);
  }

  private C(String paramString)
  {
    super(paramString);
    int i = paramString.indexOf('.');
    if (i <= 0)
      throw new aa("Illegal ver attribute value (not in major.minor form): " + paramString);
    String str1 = paramString.substring(0, i);
    try
    {
      this.b = Integer.parseInt(str1);
      if (this.b < 0)
        throw new aa("Major version may not be < 0");
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      throw new aa("Could not parse ver attribute value (major ver): " + str1, localNumberFormatException1);
    }
    String str2 = paramString.substring(i + 1);
    try
    {
      this.c = Integer.parseInt(str2);
      if (this.c < 0)
        throw new aa("Minor version may not be < 0");
    }
    catch (NumberFormatException localNumberFormatException2)
    {
      throw new aa("Could not parse ver attribute value (minor ver): " + str2, localNumberFormatException2);
    }
  }

  static C a(String paramString)
  {
    if (paramString == null)
      return null;
    return new C(paramString);
  }

  static C b()
  {
    return a;
  }

  public final int compareTo(Object paramObject)
  {
    if ((paramObject instanceof C))
    {
      C localC = (C)paramObject;
      if (this.b < localC.b);
      do
      {
        return -1;
        if (this.b > localC.b)
          return 1;
      }
      while (this.c < localC.c);
      if (this.c > localC.c)
        return 1;
      return 0;
    }
    return 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.C
 * JD-Core Version:    0.6.0
 */