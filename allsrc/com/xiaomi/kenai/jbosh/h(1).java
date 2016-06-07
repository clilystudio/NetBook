package com.xiaomi.kenai.jbosh;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

public final class h extends p
{
  private final Map<f, String> a;
  private final String b;
  private final AtomicReference<String> c = new AtomicReference();

  static
  {
    Pattern.compile("<body(?:[\t\n\r ][^>]*?)?(/>|>)", 64);
  }

  private h(Map<f, String> paramMap, String paramString)
  {
    this.a = paramMap;
    this.b = paramString;
  }

  public static i a()
  {
    return new i(0);
  }

  public final i b()
  {
    return i.a(this);
  }

  public final Map<f, String> c()
  {
    return Collections.unmodifiableMap(this.a);
  }

  public final String d()
  {
    String str1 = (String)this.c.get();
    if (str1 == null)
    {
      f localf1 = f.a("body");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("<");
      localStringBuilder.append(localf1.b());
      Iterator localIterator = this.a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append(" ");
        f localf2 = (f)localEntry.getKey();
        String str2 = localf2.c();
        if ((str2 != null) && (str2.length() > 0))
        {
          localStringBuilder.append(str2);
          localStringBuilder.append(":");
        }
        localStringBuilder.append(localf2.b());
        localStringBuilder.append("='");
        localStringBuilder.append(((String)localEntry.getValue()).replace("'", "&apos;"));
        localStringBuilder.append("'");
      }
      localStringBuilder.append(" ");
      localStringBuilder.append("xmlns");
      localStringBuilder.append("='");
      localStringBuilder.append(localf1.a());
      localStringBuilder.append("'>");
      if (this.b != null)
        localStringBuilder.append(this.b);
      localStringBuilder.append("</body>");
      str1 = localStringBuilder.toString();
      this.c.set(str1);
    }
    return str1;
  }

  public final String e()
  {
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.h
 * JD-Core Version:    0.6.0
 */