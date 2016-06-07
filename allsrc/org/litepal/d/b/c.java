package org.litepal.d.b;

public final class c extends e
{
  public final String[] a(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null))
    {
      String[] arrayOfString = new String[2];
      arrayOfString[0] = paramString1;
      if ((paramString2.equals("float")) || (paramString2.equals("java.lang.Float")))
      {
        arrayOfString[1] = "REAL";
        return arrayOfString;
      }
      if ((paramString2.equals("double")) || (paramString2.equals("java.lang.Double")))
      {
        arrayOfString[1] = "REAL";
        return arrayOfString;
      }
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.b.c
 * JD-Core Version:    0.6.0
 */