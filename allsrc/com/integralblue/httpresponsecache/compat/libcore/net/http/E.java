package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import java.net.URI;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class E
{
  private final C a;
  private boolean b;
  private int c = -1;
  private int d = -1;
  private int e = -1;
  private boolean f;
  private boolean g;
  private int h = -1;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String q;

  public E(URI paramURI, C paramC)
  {
    this.a = paramC;
    F localF = new F(this);
    int i1 = 0;
    if (i1 < paramC.e())
    {
      String str1 = paramC.a(i1);
      String str2 = paramC.b(i1);
      if ("Cache-Control".equalsIgnoreCase(str1))
        a.a(str2, localF);
      while (true)
      {
        i1++;
        break;
        if ("Pragma".equalsIgnoreCase(str1))
        {
          if (!str2.equalsIgnoreCase("no-cache"))
            continue;
          this.b = true;
          continue;
        }
        if ("If-None-Match".equalsIgnoreCase(str1))
        {
          this.p = str2;
          continue;
        }
        if ("If-Modified-Since".equalsIgnoreCase(str1))
        {
          this.o = str2;
          continue;
        }
        if ("Authorization".equalsIgnoreCase(str1))
        {
          this.g = true;
          continue;
        }
        if ("Content-Length".equalsIgnoreCase(str1))
        {
          try
          {
            this.h = Integer.parseInt(str2);
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
          continue;
        }
        if ("Transfer-Encoding".equalsIgnoreCase(str1))
        {
          this.i = str2;
          continue;
        }
        if ("User-Agent".equalsIgnoreCase(str1))
        {
          this.j = str2;
          continue;
        }
        if ("Host".equalsIgnoreCase(str1))
        {
          this.k = str2;
          continue;
        }
        if ("Connection".equalsIgnoreCase(str1))
        {
          this.l = str2;
          continue;
        }
        if ("Accept-Encoding".equalsIgnoreCase(str1))
        {
          this.m = str2;
          continue;
        }
        if ("Content-Type".equalsIgnoreCase(str1))
        {
          this.n = str2;
          continue;
        }
        if (!"Proxy-Authorization".equalsIgnoreCase(str1))
          continue;
        this.q = str2;
      }
    }
  }

  public final void a(int paramInt)
  {
    if (this.h != -1)
      this.a.c("Content-Length");
    this.a.a("Content-Length", Integer.toString(paramInt));
    this.h = paramInt;
  }

  public final void a(String paramString)
  {
    if (this.j != null)
      this.a.c("User-Agent");
    this.a.a("User-Agent", paramString);
    this.j = paramString;
  }

  public final void a(Date paramDate)
  {
    if (this.o != null)
      this.a.c("If-Modified-Since");
    String str = k.a(paramDate);
    this.a.a("If-Modified-Since", str);
    this.o = str;
  }

  public final void a(Map<String, List<String>> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = (String)localEntry.getKey();
      if ((!"Cookie".equalsIgnoreCase(str)) && (!"Cookie2".equalsIgnoreCase(str)))
        continue;
      this.a.a(str, (List)localEntry.getValue());
    }
  }

  public final boolean a()
  {
    return "chunked".equalsIgnoreCase(this.i);
  }

  public final void b(String paramString)
  {
    if (this.k != null)
      this.a.c("Host");
    this.a.a("Host", paramString);
    this.k = paramString;
  }

  public final boolean b()
  {
    return "close".equalsIgnoreCase(this.l);
  }

  public final C c()
  {
    return this.a;
  }

  public final void c(String paramString)
  {
    if (this.l != null)
      this.a.c("Connection");
    this.a.a("Connection", paramString);
    this.l = paramString;
  }

  public final void d(String paramString)
  {
    if (this.m != null)
      this.a.c("Accept-Encoding");
    this.a.a("Accept-Encoding", paramString);
    this.m = paramString;
  }

  public final boolean d()
  {
    return this.b;
  }

  public final int e()
  {
    return this.c;
  }

  public final void e(String paramString)
  {
    if (this.n != null)
      this.a.c("Content-Type");
    this.a.a("Content-Type", paramString);
    this.n = paramString;
  }

  public final int f()
  {
    return this.d;
  }

  public final void f(String paramString)
  {
    if (this.p != null)
      this.a.c("If-None-Match");
    this.a.a("If-None-Match", paramString);
    this.p = paramString;
  }

  public final int g()
  {
    return this.e;
  }

  public final boolean h()
  {
    return this.f;
  }

  public final boolean i()
  {
    return this.g;
  }

  public final int j()
  {
    return this.h;
  }

  public final String k()
  {
    return this.j;
  }

  public final String l()
  {
    return this.k;
  }

  public final String m()
  {
    return this.l;
  }

  public final String n()
  {
    return this.m;
  }

  public final String o()
  {
    return this.n;
  }

  public final String p()
  {
    return this.q;
  }

  public final void q()
  {
    if (this.i != null)
      this.a.c("Transfer-Encoding");
    this.a.a("Transfer-Encoding", "chunked");
    this.i = "chunked";
  }

  public final boolean r()
  {
    return (this.o != null) || (this.p != null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.E
 * JD-Core Version:    0.6.0
 */