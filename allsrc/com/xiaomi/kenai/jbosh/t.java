package com.xiaomi.kenai.jbosh;

final class t extends a<String>
{
  private t(String paramString)
  {
    super(paramString);
    paramString.split("\\ +");
  }

  static t a(String paramString)
  {
    if (paramString == null)
      return null;
    return new t(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.t
 * JD-Core Version:    0.6.0
 */