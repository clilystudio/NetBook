package org.litepal.d.b;

public final class d extends e
{
  public final String[] a(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null))
    {
      String[] arrayOfString = new String[2];
      arrayOfString[0] = paramString1;
      if ((paramString2.equals("int")) || (paramString2.equals("java.lang.Integer")))
      {
        arrayOfString[1] = "INTEGER";
        return arrayOfString;
      }
      if ((paramString2.equals("long")) || (paramString2.equals("java.lang.Long")))
      {
        arrayOfString[1] = "INTEGER";
        return arrayOfString;
      }
      if ((paramString2.equals("short")) || (paramString2.equals("java.lang.Short")))
      {
        arrayOfString[1] = "INTEGER";
        return arrayOfString;
      }
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.b.d
 * JD-Core Version:    0.6.0
 */