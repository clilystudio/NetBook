package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.RequestException;
import com.squareup.okhttp.internal.http.RouteException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

public final class f
{
  volatile boolean a;
  C b;
  com.squareup.okhttp.internal.http.m c;
  private final A d;
  private boolean e;

  f(A paramA, C paramC)
  {
    this.d = paramA.w();
    this.b = paramC;
  }

  private I a(boolean paramBoolean)
  {
    return new g(this, 0, this.b, paramBoolean).a(this.b);
  }

  private String b()
  {
    try
    {
      String str1 = new URL(this.b.a(), "/...").toString();
      String str2 = "call" + " to " + str1;
      return str2;
    }
    catch (MalformedURLException localMalformedURLException)
    {
    }
    return "call";
  }

  public final I a()
  {
    monitorenter;
    try
    {
      if (this.e)
        throw new IllegalStateException("Already Executed");
    }
    finally
    {
      monitorexit;
    }
    this.e = true;
    monitorexit;
    I localI;
    try
    {
      this.d.r().a(this);
      localI = a(false);
      if (localI == null)
        throw new IOException("Canceled");
    }
    finally
    {
      this.d.r().b(this);
    }
    this.d.r().b(this);
    return localI;
  }

  final I a(C paramC, boolean paramBoolean)
  {
    E localE = paramC.f();
    D localD;
    if (localE != null)
    {
      localD = paramC.g();
      z localz = localE.a();
      if (localz != null)
        localD.a("Content-Type", localz.toString());
      long l = localE.b();
      if (l != -1L)
      {
        localD.a("Content-Length", Long.toString(l));
        localD.b("Transfer-Encoding");
      }
    }
    for (C localC1 = localD.a(); ; localC1 = paramC)
    {
      this.c = new com.squareup.okhttp.internal.http.m(this.d, localC1, false, false, paramBoolean, null, null, null, null);
      int j;
      for (int i = 0; ; i = j)
      {
        I localI;
        C localC2;
        try
        {
          this.c.a();
          this.c.i();
          localI = this.c.e();
          localC2 = this.c.j();
          if (localC2 == null)
          {
            if (!paramBoolean)
              this.c.g();
            return localI;
            localD.a("Transfer-Encoding", "chunked");
            localD.b("Content-Length");
          }
        }
        catch (RequestException localRequestException)
        {
          throw localRequestException.getCause();
        }
        catch (RouteException localRouteException)
        {
          while (true)
          {
            com.squareup.okhttp.internal.http.m localm2 = this.c.a(localRouteException);
            if (localm2 == null)
              break;
            this.c = localm2;
          }
          throw localRouteException.getLastConnectException();
        }
        catch (IOException localIOException)
        {
          while (true)
          {
            com.squareup.okhttp.internal.http.m localm1 = this.c.a(localIOException, null);
            if (localm1 == null)
              break;
            this.c = localm1;
          }
          throw localIOException;
        }
        j = i + 1;
        if (j > 20)
          throw new ProtocolException("Too many follow-up requests: " + j);
        if (!this.c.b(localC2.a()))
          this.c.g();
        m localm = this.c.h();
        this.c = new com.squareup.okhttp.internal.http.m(this.d, localC2, false, false, paramBoolean, localm, null, null, localI);
      }
    }
  }

  public final void a(i parami)
  {
    monitorenter;
    try
    {
      if (this.e)
        throw new IllegalStateException("Already Executed");
    }
    finally
    {
      monitorexit;
    }
    this.e = true;
    monitorexit;
    this.d.r().a(new h(this, parami, false, 0));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.f
 * JD-Core Version:    0.6.0
 */