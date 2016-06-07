package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.arcsoft.hpay100.a.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

final class I extends b
{
  private final int b;
  private final ByteArrayOutputStream c;

  public I()
  {
    this.b = -1;
    this.c = new ByteArrayOutputStream();
  }

  public I(int paramInt)
  {
    this.b = paramInt;
    this.c = new ByteArrayOutputStream(paramInt);
  }

  public final void a(OutputStream paramOutputStream)
  {
    this.c.writeTo(paramOutputStream);
  }

  public final int b()
  {
    monitorenter;
    try
    {
      close();
      int i = this.c.size();
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public final void close()
  {
    monitorenter;
    try
    {
      boolean bool = this.a;
      if (bool);
      do
      {
        return;
        this.a = true;
      }
      while (this.c.size() >= this.b);
      throw new IOException("content-length promised " + this.b + " bytes, but received " + this.c.size());
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
    try
    {
      a();
      a.a(paramArrayOfByte.length, paramInt1, paramInt2);
      if ((this.b != -1) && (this.c.size() > this.b - paramInt2))
        throw new IOException("exceeded content-length limit of " + this.b + " bytes");
    }
    finally
    {
      monitorexit;
    }
    this.c.write(paramArrayOfByte, paramInt1, paramInt2);
    monitorexit;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.I
 * JD-Core Version:    0.6.0
 */