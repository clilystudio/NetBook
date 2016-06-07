package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C;
import com.squareup.okhttp.E;
import com.squareup.okhttp.I;
import com.squareup.okhttp.L;
import com.squareup.okhttp.a;
import com.squareup.okhttp.internal.l;
import com.squareup.okhttp.y;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import okio.h;
import okio.o;

final class p
  implements y
{
  private final int a;
  private int b;

  p(m paramm, int paramInt, C paramC)
  {
    this.a = paramInt;
  }

  public final I a(C paramC)
  {
    this.b = (1 + this.b);
    if (this.a > 0)
    {
      android.support.design.widget.K localK2 = (android.support.design.widget.K)this.c.a.v().get(-1 + this.a);
      a locala = m.a(this.c).b().a();
      if ((!paramC.a().getHost().equals(locala.a())) || (l.a(paramC.a()) != locala.b()))
        throw new IllegalStateException("network interceptor " + localK2 + " must retain the same host and port");
      if (this.b > 1)
        throw new IllegalStateException("network interceptor " + localK2 + " must call proceed() exactly once");
    }
    I localI2;
    if (this.a < this.c.a.v().size())
    {
      p localp = new p(this.c, 1 + this.a, paramC);
      android.support.design.widget.K localK1 = (android.support.design.widget.K)this.c.a.v().get(this.a);
      I localI1 = localK1.j();
      if (localp.b != 1)
        throw new IllegalStateException("network interceptor " + localK1 + " must call proceed() exactly once");
      localI2 = localI1;
    }
    int i;
    do
    {
      return localI2;
      m.b(this.c).a(paramC);
      m.a(this.c, paramC);
      if ((this.c.c()) && (paramC.f() != null))
      {
        h localh = o.a(m.b(this.c).a(paramC, paramC.f().b()));
        paramC.f().a(localh);
        localh.close();
      }
      localI2 = m.c(this.c);
      i = localI2.c();
    }
    while (((i != 204) && (i != 205)) || (localI2.g().b() <= 0L));
    throw new ProtocolException("HTTP " + i + " had non-zero Content-Length: " + localI2.g().b());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.p
 * JD-Core Version:    0.6.0
 */