package com.integralblue.httpresponsecache.compat.libcore.net.http;

import java.io.IOException;
import java.io.OutputStream;

abstract class b extends OutputStream
{
  protected boolean a;

  protected final void a()
  {
    if (this.a)
      throw new IOException("stream closed");
  }

  public final void write(int paramInt)
  {
    byte[] arrayOfByte = new byte[1];
    arrayOfByte[0] = (byte)paramInt;
    write(arrayOfByte);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.b
 * JD-Core Version:    0.6.0
 */