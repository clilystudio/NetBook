package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.l;
import java.net.ProtocolException;
import okio.f;
import okio.x;
import okio.z;

public final class u
  implements x
{
  private boolean a;
  private final int b;
  private final f c = new f();

  public u()
  {
    this(-1);
  }

  public u(int paramInt)
  {
    this.b = paramInt;
  }

  public final z a()
  {
    return z.a;
  }

  public final void a(x paramx)
  {
    f localf = new f();
    this.c.a(localf, 0L, this.c.b());
    paramx.a_(localf, localf.b());
  }

  public final void a_(f paramf, long paramLong)
  {
    if (this.a)
      throw new IllegalStateException("closed");
    l.a(paramf.b(), 0L, paramLong);
    if ((this.b != -1) && (this.c.b() > this.b - paramLong))
      throw new ProtocolException("exceeded content-length limit of " + this.b + " bytes");
    this.c.a_(paramf, paramLong);
  }

  public final long b()
  {
    return this.c.b();
  }

  public final void close()
  {
    if (this.a);
    do
    {
      return;
      this.a = true;
    }
    while (this.c.b() >= this.b);
    throw new ProtocolException("content-length promised " + this.b + " bytes, but received " + this.c.b());
  }

  public final void flush()
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.u
 * JD-Core Version:    0.6.0
 */