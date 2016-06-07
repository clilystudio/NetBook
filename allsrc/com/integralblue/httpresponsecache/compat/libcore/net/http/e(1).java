package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

final class e extends b
{
  private static final byte[] b = { 13, 10 };
  private static final byte[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final byte[] d = { 48, 13, 10, 13, 10 };
  private final byte[] e = { 0, 0, 0, 0, 0, 0, 0, 0, 13, 10 };
  private final OutputStream f;
  private final int g;
  private final ByteArrayOutputStream h;

  public e(OutputStream paramOutputStream, int paramInt)
  {
    this.f = paramOutputStream;
    int i = 4;
    int j = paramInt - 4;
    while (j > 0)
    {
      i++;
      j >>= 4;
    }
    this.g = Math.max(1, paramInt - i);
    this.h = new ByteArrayOutputStream(paramInt);
  }

  private void a(int paramInt)
  {
    int i = 8;
    do
    {
      byte[] arrayOfByte = this.e;
      i--;
      arrayOfByte[i] = c[(paramInt & 0xF)];
      paramInt >>>= 4;
    }
    while (paramInt != 0);
    this.f.write(this.e, i, 10 - i);
  }

  private void b()
  {
    int i = this.h.size();
    if (i <= 0)
      return;
    a(i);
    this.h.writeTo(this.f);
    this.h.reset();
    this.f.write(b);
  }

  public final void close()
  {
    monitorenter;
    try
    {
      boolean bool = this.a;
      if (bool);
      while (true)
      {
        return;
        this.a = true;
        b();
        this.f.write(d);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void flush()
  {
    monitorenter;
    try
    {
      boolean bool = this.a;
      if (bool);
      while (true)
      {
        return;
        b();
        this.f.flush();
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    monitorenter;
    while (true)
    {
      int i;
      try
      {
        a();
        a.a(paramArrayOfByte.length, paramInt1, paramInt2);
        if (paramInt2 > 0)
        {
          if ((this.h.size() <= 0) && (paramInt2 >= this.g))
            continue;
          i = Math.min(paramInt2, this.g - this.h.size());
          this.h.write(paramArrayOfByte, paramInt1, i);
          if (this.h.size() != this.g)
            break label131;
          b();
          break label131;
          i = this.g;
          a(i);
          this.f.write(paramArrayOfByte, paramInt1, i);
          this.f.write(b);
        }
      }
      finally
      {
        monitorexit;
      }
      monitorexit;
      return;
      label131: paramInt1 += i;
      paramInt2 -= i;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.e
 * JD-Core Version:    0.6.0
 */