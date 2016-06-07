package org.litepal.d.a;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b
{
  private String a;
  private Map<String, String> b = new HashMap();

  public final String a()
  {
    return this.a;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void a(String paramString1, String paramString2)
  {
    this.b.put(paramString1, paramString2);
  }

  public final Set<String> b()
  {
    return this.b.keySet();
  }

  public final void b(String paramString)
  {
    Iterator localIterator = b().iterator();
    String str;
    do
    {
      if (!localIterator.hasNext())
        return;
      str = (String)localIterator.next();
    }
    while (!str.equalsIgnoreCase(paramString));
    this.b.remove(str);
  }

  public final Map<String, String> c()
  {
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.litepal.d.a.b
 * JD-Core Version:    0.6.0
 */