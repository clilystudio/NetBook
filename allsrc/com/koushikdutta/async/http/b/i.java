package com.koushikdutta.async.http.b;

final class i
  implements b
{
  i(h paramh)
  {
  }

  public final void a(String paramString1, String paramString2)
  {
    if ((!paramString1.equalsIgnoreCase("no-cache")) && (!paramString1.equalsIgnoreCase("no-store")))
    {
      if (!paramString1.equalsIgnoreCase("max-age"))
        break label33;
      a.a(paramString2);
    }
    label33: 
    do
    {
      return;
      if (!paramString1.equalsIgnoreCase("s-maxage"))
        continue;
      a.a(paramString2);
      return;
    }
    while (paramString1.equalsIgnoreCase("public"));
    paramString1.equalsIgnoreCase("must-revalidate");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.b.i
 * JD-Core Version:    0.6.0
 */