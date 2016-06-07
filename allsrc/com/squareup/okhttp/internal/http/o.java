package com.squareup.okhttp.internal.http;

import android.support.design.widget.K;
import com.squareup.okhttp.internal.l;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okio.f;
import okio.h;
import okio.i;
import okio.y;
import okio.z;

final class o
  implements y
{
  private boolean a;

  o(m paramm, i parami, K paramK, h paramh)
  {
  }

  public final long a(f paramf, long paramLong)
  {
    long l;
    try
    {
      l = this.b.a(paramf, paramLong);
      if (l == -1L)
      {
        if (!this.a)
        {
          this.a = true;
          this.d.close();
        }
        return -1L;
      }
    }
    catch (IOException localIOException)
    {
      if (!this.a)
        this.a = true;
      throw localIOException;
    }
    paramf.a(this.d.c(), paramf.b() - l, l);
    this.d.r();
    return l;
  }

  public final z a()
  {
    return this.b.a();
  }

  public final void close()
  {
    if ((!this.a) && (!l.a(this, 100, TimeUnit.MILLISECONDS)))
      this.a = true;
    this.b.close();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.o
 * JD-Core Version:    0.6.0
 */