package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.l;
import java.io.IOException;
import java.util.List;
import java.util.zip.Deflater;
import okio.ByteString;
import okio.f;
import okio.h;
import okio.j;
import okio.o;

final class z
  implements c
{
  private final h a;
  private final f b;
  private final h c;
  private final boolean d;
  private boolean e;

  z(h paramh, boolean paramBoolean)
  {
    this.a = paramh;
    this.d = paramBoolean;
    Deflater localDeflater = new Deflater();
    localDeflater.setDictionary(x.a);
    this.b = new f();
    this.c = o.a(new j(this.b, localDeflater));
  }

  private void a(List<d> paramList)
  {
    if (this.b.b() != 0L)
      throw new IllegalStateException();
    this.c.f(paramList.size());
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      ByteString localByteString1 = ((d)paramList.get(j)).h;
      this.c.f(localByteString1.size());
      this.c.b(localByteString1);
      ByteString localByteString2 = ((d)paramList.get(j)).i;
      this.c.f(localByteString2.size());
      this.c.b(localByteString2);
    }
    this.c.flush();
  }

  public final void a()
  {
    monitorenter;
    monitorexit;
  }

  public final void a(int paramInt, long paramLong)
  {
    monitorenter;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    if ((paramLong == 0L) || (paramLong > 2147483647L))
      throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + paramLong);
    this.a.f(-2147287031);
    this.a.f(8);
    this.a.f(paramInt);
    this.a.f((int)paramLong);
    this.a.flush();
    monitorexit;
  }

  public final void a(int paramInt, ErrorCode paramErrorCode)
  {
    monitorenter;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    if (paramErrorCode.spdyRstCode == -1)
      throw new IllegalArgumentException();
    this.a.f(-2147287037);
    this.a.f(8);
    this.a.f(0x7FFFFFFF & paramInt);
    this.a.f(paramErrorCode.spdyRstCode);
    this.a.flush();
    monitorexit;
  }

  public final void a(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte)
  {
    monitorenter;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    if (paramErrorCode.spdyGoAwayCode == -1)
      throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
    this.a.f(-2147287033);
    this.a.f(8);
    this.a.f(paramInt);
    this.a.f(paramErrorCode.spdyGoAwayCode);
    this.a.flush();
    monitorexit;
  }

  public final void a(w paramw)
  {
  }

  public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    boolean bool1 = true;
    monitorenter;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    boolean bool2 = this.d;
    boolean bool3;
    if ((paramInt1 & 0x1) == bool1)
      bool3 = bool1;
    while (true)
    {
      if (paramBoolean != bool1)
        throw new IllegalArgumentException("payload != reply");
      this.a.f(-2147287034);
      this.a.f(4);
      this.a.f(paramInt1);
      this.a.flush();
      monitorexit;
      return;
      while (true)
      {
        if (bool2 == bool3)
          break label128;
        break;
        bool3 = false;
      }
      label128: bool1 = false;
    }
  }

  public final void a(boolean paramBoolean, int paramInt1, f paramf, int paramInt2)
  {
    monitorenter;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
      try
      {
        if (!this.e)
          break;
        throw new IOException("closed");
      }
      finally
      {
        monitorexit;
      }
    if (paramInt2 > 16777215L)
      throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt2);
    this.a.f(0x7FFFFFFF & paramInt1);
    this.a.f((i & 0xFF) << 24 | 0xFFFFFF & paramInt2);
    if (paramInt2 > 0)
      this.a.a_(paramf, paramInt2);
    monitorexit;
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<d> paramList)
  {
    monitorenter;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    a(paramList);
    int i = (int)(10L + this.b.b());
    int j;
    if (paramBoolean1)
      j = 1;
    while (true)
    {
      int m = k | j;
      this.a.f(-2147287039);
      this.a.f((m & 0xFF) << 24 | i & 0xFFFFFF);
      this.a.f(paramInt1 & 0x7FFFFFFF);
      this.a.f(paramInt2 & 0x7FFFFFFF);
      this.a.g(0);
      this.a.a(this.b);
      this.a.flush();
      monitorexit;
      return;
      j = 0;
      int k = 0;
      if (!paramBoolean2)
        continue;
      k = 2;
    }
  }

  public final void b()
  {
    monitorenter;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    this.a.flush();
    monitorexit;
  }

  public final void b(w paramw)
  {
    monitorenter;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    int i = paramw.b();
    int j = 4 + (i << 3);
    this.a.f(-2147287036);
    this.a.f(0x0 | j & 0xFFFFFF);
    this.a.f(i);
    for (int k = 0; ; k++)
      if (k <= 10)
      {
        if (!paramw.a(k))
          continue;
        int m = paramw.c(k);
        this.a.f((m & 0xFF) << 24 | k & 0xFFFFFF);
        this.a.f(paramw.b(k));
      }
      else
      {
        this.a.flush();
        monitorexit;
        return;
      }
  }

  public final int c()
  {
    return 16383;
  }

  public final void close()
  {
    monitorenter;
    try
    {
      this.e = true;
      l.a(this.a, this.c);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.z
 * JD-Core Version:    0.6.0
 */