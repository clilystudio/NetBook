package com.b;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

final class f extends FilterOutputStream
{
  private f(a parama, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }

  public final void close()
  {
    try
    {
      this.out.close();
      return;
    }
    catch (IOException localIOException)
    {
      a.a(this.a, true);
    }
  }

  public final void flush()
  {
    try
    {
      this.out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      a.a(this.a, true);
    }
  }

  public final void write(int paramInt)
  {
    try
    {
      this.out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      a.a(this.a, true);
    }
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException localIOException)
    {
      a.a(this.a, true);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.b.f
 * JD-Core Version:    0.6.0
 */