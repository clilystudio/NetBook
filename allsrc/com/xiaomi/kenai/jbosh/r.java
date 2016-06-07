package com.xiaomi.kenai.jbosh;

final class r extends a<String>
{
  private r(String paramString)
  {
    super(paramString);
    paramString.split("[\\s,]+");
  }

  static r a(String paramString)
  {
    if (paramString == null)
      return null;
    return new r(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.r
 * JD-Core Version:    0.6.0
 */