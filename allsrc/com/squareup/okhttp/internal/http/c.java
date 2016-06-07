package com.squareup.okhttp.internal.http;

import android.support.design.widget.am;
import com.squareup.okhttp.C;
import com.squareup.okhttp.D;
import com.squareup.okhttp.I;
import com.squareup.okhttp.J;
import com.squareup.okhttp.d;
import com.squareup.okhttp.u;
import java.net.URL;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public final class c
{
  private long a;
  private C b;
  private I c;
  private Date d;
  private String e;
  private Date f;
  private String g;
  private Date h;
  private long i;
  private long j;
  private String k;
  private int l = -1;

  public c(long paramLong, C paramC, I paramI)
  {
    this.a = paramLong;
    this.b = paramC;
    this.c = paramI;
    if (paramI != null)
    {
      u localu = paramI.f();
      int m = 0;
      int n = localu.a();
      if (m < n)
      {
        String str1 = localu.a(m);
        String str2 = localu.b(m);
        if ("Date".equalsIgnoreCase(str1))
        {
          this.d = k.a(str2);
          this.e = str2;
        }
        while (true)
        {
          m++;
          break;
          if ("Expires".equalsIgnoreCase(str1))
          {
            this.h = k.a(str2);
            continue;
          }
          if ("Last-Modified".equalsIgnoreCase(str1))
          {
            this.f = k.a(str2);
            this.g = str2;
            continue;
          }
          if ("ETag".equalsIgnoreCase(str1))
          {
            this.k = str2;
            continue;
          }
          if ("Age".equalsIgnoreCase(str1))
          {
            this.l = am.b(str2, -1);
            continue;
          }
          if (r.a.equalsIgnoreCase(str1))
          {
            this.i = Long.parseLong(str2);
            continue;
          }
          if (!r.b.equalsIgnoreCase(str1))
            continue;
          this.j = Long.parseLong(str2);
        }
      }
    }
  }

  private static boolean a(C paramC)
  {
    return (paramC.a("If-Modified-Since") != null) || (paramC.a("If-None-Match") != null);
  }

  public final b a()
  {
    b localb;
    if (this.c == null)
      localb = new b(this.b, null, 0);
    while (true)
    {
      if ((localb.a != null) && (this.b.h().i()))
        localb = new b(null, null, 0);
      return localb;
      if ((this.b.i()) && (this.c.e() == null))
      {
        localb = new b(this.b, null, 0);
        continue;
      }
      if (!b.a(this.c, this.b))
      {
        localb = new b(this.b, null, 0);
        continue;
      }
      d locald1 = this.b.h();
      if ((locald1.a()) || (a(this.b)))
      {
        localb = new b(this.b, null, 0);
        continue;
      }
      long l1;
      label188: long l4;
      label271: J localJ;
      if (this.d != null)
      {
        l1 = Math.max(0L, this.j - this.d.getTime());
        if (this.l != -1)
          l1 = Math.max(l1, TimeUnit.SECONDS.toMillis(this.l));
        long l2 = this.j - this.i;
        long l3 = this.a - this.j + (l1 + l2);
        d locald2 = this.c.j();
        if (locald2.c() == -1)
          break label485;
        l4 = TimeUnit.SECONDS.toMillis(locald2.c());
        if (locald1.c() != -1)
          l4 = Math.min(l4, TimeUnit.SECONDS.toMillis(locald1.c()));
        long l5 = 0L;
        if (locald1.h() != -1)
          l5 = TimeUnit.SECONDS.toMillis(locald1.h());
        long l6 = 0L;
        d locald3 = this.c.j();
        if ((!locald3.f()) && (locald1.g() != -1))
          l6 = TimeUnit.SECONDS.toMillis(locald1.g());
        if ((locald3.a()) || (l3 + l5 >= l6 + l4))
          break label638;
        localJ = this.c.h();
        if (l5 + l3 >= l4)
          localJ.b("Warning", "110 HttpURLConnection \"Response is stale\"");
        if (l3 > 86400000L)
          if ((this.c.j().c() != -1) || (this.h != null))
            break label632;
      }
      label485: label620: label632: for (int m = 1; ; m = 0)
      {
        if (m != 0)
          localJ.b("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
        localb = new b(null, localJ.a(), 0);
        break;
        l1 = 0L;
        break label188;
        if (this.h != null)
        {
          long l9;
          if (this.d != null)
            l9 = this.d.getTime();
          while (true)
          {
            l4 = this.h.getTime() - l9;
            if (l4 > 0L)
              break;
            l4 = 0L;
            break;
            l9 = this.j;
          }
        }
        if ((this.f != null) && (this.c.a().a().getQuery() == null))
        {
          long l7;
          if (this.d != null)
            l7 = this.d.getTime();
          while (true)
          {
            long l8 = l7 - this.f.getTime();
            if (l8 <= 0L)
              break label620;
            l4 = l8 / 10L;
            break;
            l7 = this.i;
          }
          l4 = 0L;
          break label271;
        }
        l4 = 0L;
        break label271;
      }
      label638: D localD = this.b.g();
      if (this.k != null)
        localD.a("If-None-Match", this.k);
      C localC;
      while (true)
      {
        localC = localD.a();
        if (!a(localC))
          break label743;
        localb = new b(localC, this.c, 0);
        break;
        if (this.f != null)
        {
          localD.a("If-Modified-Since", this.g);
          continue;
        }
        if (this.d == null)
          continue;
        localD.a("If-Modified-Since", this.e);
      }
      label743: localb = new b(localC, null, 0);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.c
 * JD-Core Version:    0.6.0
 */