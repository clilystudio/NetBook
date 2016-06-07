package com.b;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

final class i
  implements Closeable
{
  private final InputStream a;
  private final Charset b;
  private byte[] c;
  private int d;
  private int e;

  private i(InputStream paramInputStream, int paramInt, Charset paramCharset)
  {
    if ((paramInputStream == null) || (paramCharset == null))
      throw new NullPointerException();
    if (!paramCharset.equals(b.a))
      throw new IllegalArgumentException("Unsupported encoding");
    this.a = paramInputStream;
    this.b = paramCharset;
    this.c = new byte[8192];
  }

  public i(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, 8192, paramCharset);
  }

  private void b()
  {
    int i = this.a.read(this.c, 0, this.c.length);
    if (i == -1)
      throw new EOFException();
    this.d = 0;
    this.e = i;
  }

  public final String a()
  {
    synchronized (this.a)
    {
      if (this.c == null)
        throw new IOException("LineReader is closed");
    }
    if (this.d >= this.e)
      b();
    for (int i = this.d; ; i++)
    {
      if (i != this.e)
      {
        if (this.c[i] != 10)
          continue;
        if ((i == this.d) || (this.c[(i - 1)] != 13))
          break label272;
      }
      label272: for (int k = i - 1; ; k = i)
      {
        String str2 = new String(this.c, this.d, k - this.d, this.b.name());
        this.d = (i + 1);
        monitorexit;
        return str2;
        j localj = new j(this, 80 + (this.e - this.d));
        while (true)
        {
          localj.write(this.c, this.d, this.e - this.d);
          this.e = -1;
          b();
          for (int j = this.d; j != this.e; j++)
          {
            if (this.c[j] != 10)
              continue;
            if (j != this.d)
              localj.write(this.c, this.d, j - this.d);
            this.d = (j + 1);
            String str1 = localj.toString();
            monitorexit;
            return str1;
          }
        }
      }
    }
  }

  public final void close()
  {
    synchronized (this.a)
    {
      if (this.c != null)
      {
        this.c = null;
        this.a.close();
      }
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.b.i
 * JD-Core Version:    0.6.0
 */