package org.apache.thrift.transport;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class a extends c
{
  private InputStream a = null;
  private OutputStream b = null;

  protected a()
  {
  }

  public a(OutputStream paramOutputStream)
  {
    this.b = paramOutputStream;
  }

  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    throw new d(1, "Cannot read from null inputStream");
  }

  public final void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.b == null)
      throw new d(1, "Cannot write to null outputStream");
    try
    {
      this.b.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException localIOException)
    {
    }
    throw new d(0, localIOException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.thrift.transport.a
 * JD-Core Version:    0.6.0
 */