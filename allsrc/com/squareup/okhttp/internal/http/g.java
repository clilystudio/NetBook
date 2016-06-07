package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.l;
import com.squareup.okhttp.v;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.f;
import okio.i;

final class g extends e
{
  private long b = -1L;
  private boolean c = true;
  private final m d;

  g(d paramd, m paramm)
  {
    super(paramd, 0);
    this.d = paramm;
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.a)
      throw new IllegalStateException("closed");
    if (!this.c);
    do
    {
      return -1L;
      if ((this.b != 0L) && (this.b != -1L))
        break;
      if (this.b != -1L)
        d.b(this.e).n();
      try
      {
        this.b = d.b(this.e).k();
        String str = d.b(this.e).n().trim();
        if ((this.b < 0L) || ((!str.isEmpty()) && (!str.startsWith(";"))))
          throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.b + str + "\"");
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new ProtocolException(localNumberFormatException.getMessage());
      }
      if (this.b != 0L)
        continue;
      this.c = false;
      v localv = new v();
      this.e.a(localv);
      this.d.a(localv.a());
      a(true);
    }
    while (!this.c);
    long l = d.b(this.e).a(paramf, Math.min(paramLong, this.b));
    if (l == -1L)
    {
      b();
      throw new IOException("unexpected end of stream");
    }
    this.b -= l;
    return l;
  }

  public final void close()
  {
    if (this.a)
      return;
    if ((this.c) && (!l.a(this, 100, TimeUnit.MILLISECONDS)))
      b();
    this.a = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.g
 * JD-Core Version:    0.6.0
 */