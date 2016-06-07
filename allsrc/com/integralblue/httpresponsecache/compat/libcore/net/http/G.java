package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import com.integralblue.httpresponsecache.compat.java.net.ResponseSource;
import java.net.URI;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public final class G
{
  private final URI a;
  private final C b;
  private Date c;
  private Date d;
  private Date e;
  private long f;
  private long g;
  private boolean h;
  private boolean i;
  private int j = -1;
  private int k = -1;
  private boolean l;
  private boolean m;
  private String n;
  private int o = -1;
  private Set<String> p = Collections.emptySet();
  private String q;
  private String r;
  private int s = -1;
  private String t;

  public G(URI paramURI, C paramC)
  {
    this.a = paramURI;
    this.b = paramC;
    H localH = new H(this);
    int i1 = 0;
    if (i1 < paramC.e())
    {
      String str1 = paramC.a(i1);
      String str2 = paramC.b(i1);
      if ("Cache-Control".equalsIgnoreCase(str1))
        a.a(str2, localH);
      while (true)
      {
        i1++;
        break;
        if ("Date".equalsIgnoreCase(str1))
        {
          this.c = k.a(str2);
          continue;
        }
        if ("Expires".equalsIgnoreCase(str1))
        {
          this.e = k.a(str2);
          continue;
        }
        if ("Last-Modified".equalsIgnoreCase(str1))
        {
          this.d = k.a(str2);
          continue;
        }
        if ("ETag".equalsIgnoreCase(str1))
        {
          this.n = str2;
          continue;
        }
        if ("Pragma".equalsIgnoreCase(str1))
        {
          if (!str2.equalsIgnoreCase("no-cache"))
            continue;
          this.h = true;
          continue;
        }
        if ("Age".equalsIgnoreCase(str1))
        {
          this.o = a.e(str2);
          continue;
        }
        if ("Vary".equalsIgnoreCase(str1))
        {
          if (this.p.isEmpty())
            this.p = new TreeSet(String.CASE_INSENSITIVE_ORDER);
          for (String str3 : str2.split(","))
            this.p.add(str3.trim());
          continue;
        }
        if ("Content-Encoding".equalsIgnoreCase(str1))
        {
          this.q = str2;
          continue;
        }
        if ("Transfer-Encoding".equalsIgnoreCase(str1))
        {
          this.r = str2;
          continue;
        }
        if ("Content-Length".equalsIgnoreCase(str1))
        {
          try
          {
            this.s = Integer.parseInt(str2);
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
          continue;
        }
        if ("Connection".equalsIgnoreCase(str1))
        {
          this.t = str2;
          continue;
        }
        if ("X-Android-Sent-Millis".equalsIgnoreCase(str1))
        {
          this.f = Long.parseLong(str2);
          continue;
        }
        if (!"X-Android-Received-Millis".equalsIgnoreCase(str1))
          continue;
        this.g = Long.parseLong(str2);
      }
    }
  }

  private static boolean a(String paramString)
  {
    return (!paramString.equalsIgnoreCase("Connection")) && (!paramString.equalsIgnoreCase("Keep-Alive")) && (!paramString.equalsIgnoreCase("Proxy-Authenticate")) && (!paramString.equalsIgnoreCase("Proxy-Authorization")) && (!paramString.equalsIgnoreCase("TE")) && (!paramString.equalsIgnoreCase("Trailers")) && (!paramString.equalsIgnoreCase("Transfer-Encoding")) && (!paramString.equalsIgnoreCase("Upgrade"));
  }

  public final ResponseSource a(long paramLong, E paramE)
  {
    long l1 = 0L;
    if (!a(paramE))
      return ResponseSource.NETWORK;
    if ((paramE.d()) || (paramE.r()))
      return ResponseSource.NETWORK;
    long l2;
    long l4;
    long l5;
    label131: long l6;
    if (this.c != null)
    {
      l2 = Math.max(l1, this.g - this.c.getTime());
      if (this.o != -1)
        l2 = Math.max(l2, java.util.concurrent.TimeUnit.SECONDS.toMillis(this.o));
      long l3 = this.g - this.f;
      l4 = paramLong - this.g + (l2 + l3);
      if (this.j == -1)
        break label310;
      l5 = java.util.concurrent.TimeUnit.SECONDS.toMillis(this.j);
      if (paramE.e() != -1)
        l5 = Math.min(l5, java.util.concurrent.TimeUnit.SECONDS.toMillis(paramE.e()));
      if (paramE.g() == -1)
        break label525;
      l6 = java.util.concurrent.TimeUnit.SECONDS.toMillis(paramE.g());
    }
    while (true)
    {
      if ((!this.m) && (paramE.f() != -1))
        l1 = java.util.concurrent.TimeUnit.SECONDS.toMillis(paramE.f());
      if ((!this.h) && (l4 + l6 < l1 + l5))
      {
        if (l4 + l6 >= l5)
          this.b.a("Warning", "110 HttpURLConnection \"Response is stale\"");
        if (l4 > com.integralblue.httpresponsecache.compat.java.util.concurrent.TimeUnit.HOURS.toMillis(24L))
          if ((this.j != -1) || (this.e != null))
            break label456;
        label310: label442: label456: for (int i1 = 1; ; i1 = 0)
        {
          if (i1 != 0)
            this.b.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
          return ResponseSource.CACHE;
          l2 = l1;
          break;
          if (this.e != null)
          {
            long l9;
            if (this.c != null)
              l9 = this.c.getTime();
            while (true)
            {
              l5 = this.e.getTime() - l9;
              if (l5 > l1)
                break;
              l5 = l1;
              break;
              l9 = this.g;
            }
          }
          if ((this.d != null) && (this.a.getRawQuery() == null))
          {
            long l7;
            if (this.c != null)
              l7 = this.c.getTime();
            while (true)
            {
              long l8 = l7 - this.d.getTime();
              if (l8 <= l1)
                break label442;
              l5 = l8 / 10L;
              break;
              l7 = this.f;
            }
            l5 = l1;
            break label131;
          }
          l5 = l1;
          break label131;
        }
      }
      if (this.d != null)
        paramE.a(this.d);
      while (true)
      {
        if (this.n != null)
          paramE.f(this.n);
        if (!paramE.r())
          break;
        return ResponseSource.CONDITIONAL_CACHE;
        if (this.c == null)
          continue;
        paramE.a(this.c);
      }
      return ResponseSource.NETWORK;
      label525: l6 = l1;
    }
  }

  public final void a(long paramLong1, long paramLong2)
  {
    this.f = paramLong1;
    this.b.a("X-Android-Sent-Millis", Long.toString(paramLong1));
    this.g = paramLong2;
    this.b.a("X-Android-Received-Millis", Long.toString(paramLong2));
  }

  public final boolean a()
  {
    return "gzip".equalsIgnoreCase(this.q);
  }

  public final boolean a(E paramE)
  {
    int i1 = this.b.c();
    if ((i1 != 200) && (i1 != 203) && (i1 != 300) && (i1 != 301) && (i1 != 410));
    do
      return false;
    while (((paramE.i()) && (!this.l) && (!this.m) && (this.k == -1)) || (this.i));
    return true;
  }

  public final boolean a(G paramG)
  {
    if (paramG.b.c() == 304);
    do
      return true;
    while ((this.d != null) && (paramG.d != null) && (paramG.d.getTime() < this.d.getTime()));
    return false;
  }

  public final boolean a(Map<String, List<String>> paramMap1, Map<String, List<String>> paramMap2)
  {
    Iterator localIterator = this.p.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!a.a(paramMap1.get(str), paramMap2.get(str)))
        return false;
    }
    return true;
  }

  public final G b(G paramG)
  {
    C localC = new C();
    localC.a(this.b.a());
    String str1 = this.b.d("Content-Encoding");
    paramG.b.d("Content-Encoding");
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = this.b.e();
      i3 = 0;
      if (i1 >= i2)
        break;
      String str3 = this.b.a(i1);
      String str4 = this.b.b(i1);
      if (((str3.equals("Warning")) && (str4.startsWith("1"))) || (a(str3)))
        continue;
      localC.a(str3, str4);
    }
    while (i3 < paramG.b.e())
    {
      String str2 = paramG.b.a(i3);
      if (a(str2))
        localC.a(str2, paramG.b.b(i3));
      i3++;
    }
    if (str1 == null)
      localC.c("Content-Encoding");
    while (true)
    {
      localC.d("Content-Encoding");
      return new G(this.a, localC);
      localC.a("Content-Encoding", str1);
    }
  }

  public final void b()
  {
    this.q = null;
    this.b.c("Content-Encoding");
  }

  public final boolean c()
  {
    return "chunked".equalsIgnoreCase(this.r);
  }

  public final boolean d()
  {
    return "close".equalsIgnoreCase(this.t);
  }

  public final C e()
  {
    return this.b;
  }

  public final Set<String> f()
  {
    return this.p;
  }

  public final int g()
  {
    return this.s;
  }

  public final boolean h()
  {
    return this.p.contains("*");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.G
 * JD-Core Version:    0.6.0
 */