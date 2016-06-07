package com.koushikdutta.async.http.b;

final class g
  implements b
{
  g(a parama)
  {
  }

  public final void a(String paramString1, String paramString2)
  {
    if (!paramString1.equalsIgnoreCase("no-cache"))
    {
      if (paramString1.equalsIgnoreCase("max-age"))
        a.a(paramString2);
    }
    else
      return;
    if (paramString1.equalsIgnoreCase("max-stale"))
    {
      a.a(paramString2);
      return;
    }
    if (paramString1.equalsIgnoreCase("min-fresh"))
    {
      a.a(paramString2);
      return;
    }
    paramString1.equalsIgnoreCase("only-if-cached");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.b.g
 * JD-Core Version:    0.6.0
 */