package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.ByteString;
import okio.f;

final class l
  implements c
{
  private final okio.h a;
  private final boolean b;
  private final f c;
  private final g d;
  private int e;
  private boolean f;

  l(okio.h paramh, boolean paramBoolean)
  {
    this.a = paramh;
    this.b = paramBoolean;
    this.c = new f();
    this.d = new g(this.c);
    this.e = 16384;
  }

  private void a(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
  {
    if (h.b().isLoggable(Level.FINE))
      h.b().fine(j.a(false, paramInt1, paramInt2, paramByte1, paramByte2));
    if (paramInt2 > this.e)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(this.e);
      arrayOfObject2[1] = Integer.valueOf(paramInt2);
      throw h.b("FRAME_SIZE_ERROR length > %d: %d", arrayOfObject2);
    }
    if ((0x80000000 & paramInt1) != 0)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      throw h.b("reserved bit set: %s", arrayOfObject1);
    }
    h.a(this.a, paramInt2);
    this.a.h(paramByte1 & 0xFF);
    this.a.h(paramByte2 & 0xFF);
    this.a.f(0x7FFFFFFF & paramInt1);
  }

  private void b(int paramInt, long paramLong)
  {
    if (paramLong > 0L)
    {
      int i = (int)Math.min(this.e, paramLong);
      paramLong -= i;
      if (paramLong == 0L);
      for (byte b1 = 4; ; b1 = 0)
      {
        a(paramInt, i, 9, b1);
        this.a.a_(this.c, i);
        break;
      }
    }
  }

  public final void a()
  {
    monitorenter;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    boolean bool = this.b;
    if (!bool);
    while (true)
    {
      monitorexit;
      return;
      if (h.b().isLoggable(Level.FINE))
      {
        Logger localLogger = h.b();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = h.a().hex();
        localLogger.fine(String.format(">> CONNECTION %s", arrayOfObject));
      }
      this.a.b(h.a().toByteArray());
      this.a.flush();
    }
  }

  public final void a(int paramInt, long paramLong)
  {
    monitorenter;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    if ((paramLong == 0L) || (paramLong > 2147483647L))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramLong);
      throw h.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", arrayOfObject);
    }
    a(paramInt, 4, 8, 0);
    this.a.f((int)paramLong);
    this.a.flush();
    monitorexit;
  }

  public final void a(int paramInt, ErrorCode paramErrorCode)
  {
    monitorenter;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    if (paramErrorCode.spdyRstCode == -1)
      throw new IllegalArgumentException();
    a(paramInt, 4, 3, 0);
    this.a.f(paramErrorCode.httpCode);
    this.a.flush();
    monitorexit;
  }

  public final void a(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte)
  {
    monitorenter;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    if (paramErrorCode.httpCode == -1)
      throw h.b("errorCode.httpCode == -1", new Object[0]);
    a(0, 8 + paramArrayOfByte.length, 7, 0);
    this.a.f(paramInt);
    this.a.f(paramErrorCode.httpCode);
    if (paramArrayOfByte.length > 0)
      this.a.b(paramArrayOfByte);
    this.a.flush();
    monitorexit;
  }

  public final void a(w paramw)
  {
    monitorenter;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    this.e = paramw.d(this.e);
    a(0, 0, 4, 1);
    this.a.flush();
    monitorexit;
  }

  public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    monitorenter;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    byte b1 = 0;
    if (paramBoolean)
      b1 = 1;
    a(0, 8, 6, b1);
    this.a.f(paramInt1);
    this.a.f(paramInt2);
    this.a.flush();
    monitorexit;
  }

  public final void a(boolean paramBoolean, int paramInt1, f paramf, int paramInt2)
  {
    monitorenter;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    byte b1 = 0;
    if (paramBoolean)
      b1 = 1;
    a(paramInt1, paramInt2, 0, b1);
    if (paramInt2 > 0)
      this.a.a_(paramf, paramInt2);
    monitorexit;
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<d> paramList)
  {
    monitorenter;
    if (paramBoolean2)
      try
      {
        throw new UnsupportedOperationException();
      }
      finally
      {
        monitorexit;
      }
    if (this.f)
      throw new IOException("closed");
    if (this.f)
      throw new IOException("closed");
    if (this.c.b() != 0L)
      throw new IllegalStateException();
    this.d.a(paramList);
    long l = this.c.b();
    int i = (int)Math.min(this.e, l);
    byte b1;
    if (l == i)
      b1 = 4;
    while (true)
    {
      a(paramInt1, i, 1, b1);
      this.a.a_(this.c, i);
      if (l > i)
        b(paramInt1, l - i);
      monitorexit;
      return;
      b1 = 0;
      if (!paramBoolean1)
        continue;
      b1 = (byte)(b1 | 0x1);
    }
  }

  public final void b()
  {
    monitorenter;
    try
    {
      if (this.f)
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
    int i = 0;
    monitorenter;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
      monitorexit;
    }
    a(0, 6 * paramw.b(), 4, 0);
    int j;
    if (i < 10)
    {
      if (!paramw.a(i))
        break label110;
      if (i != 4)
        break label116;
      j = 3;
    }
    while (true)
    {
      label62: this.a.g(j);
      this.a.f(paramw.b(i));
      break label110;
      this.a.flush();
      monitorexit;
      return;
      label110: label116: 
      do
      {
        j = i;
        break label62;
        i++;
        break;
      }
      while (i != 7);
      j = 4;
    }
  }

  public final int c()
  {
    return this.e;
  }

  public final void close()
  {
    monitorenter;
    try
    {
      this.f = true;
      this.a.close();
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
 * Qualified Name:     com.squareup.okhttp.internal.spdy.l
 * JD-Core Version:    0.6.0
 */