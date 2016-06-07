package com.squareup.okhttp.internal.spdy;

import java.util.logging.Level;
import java.util.logging.Logger;
import okio.f;
import okio.y;
import okio.z;

final class i
  implements y
{
  int a;
  byte b;
  int c;
  int d;
  short e;
  private final okio.i f;

  public i(okio.i parami)
  {
    this.f = parami;
  }

  public final long a(f paramf, long paramLong)
  {
    if (this.d == 0)
    {
      this.f.f(this.e);
      this.e = 0;
      if ((0x4 & this.b) == 0);
    }
    long l;
    do
    {
      return -1L;
      int i = this.c;
      int j = h.a(this.f);
      this.d = j;
      this.a = j;
      byte b1 = this.f.f();
      this.b = this.f.f();
      if (h.b().isLoggable(Level.FINE))
        h.b().fine(j.a(true, this.c, this.a, b1, this.b));
      this.c = (0x7FFFFFFF & this.f.h());
      if (b1 != 9)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Byte.valueOf(b1);
        throw h.a("%s != TYPE_CONTINUATION", arrayOfObject);
      }
      if (this.c == i)
        break;
      throw h.a("TYPE_CONTINUATION streamId changed", new Object[0]);
      l = this.f.a(paramf, Math.min(paramLong, this.d));
    }
    while (l == -1L);
    this.d = (int)(this.d - l);
    return l;
  }

  public final z a()
  {
    return this.f.a();
  }

  public final void close()
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.i
 * JD-Core Version:    0.6.0
 */