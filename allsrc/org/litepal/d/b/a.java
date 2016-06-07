package org.litepal.d.b;

public final class a extends e
{
  public final String[] a(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null) && ((paramString2.equals("boolean")) || (paramString2.equals("java.lang.Boolean"))))
      return new String[] { paramString1, "INTEGER" };
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.b.a
 * JD-Core Version:    0.6.0
 */