package com.squareup.okhttp;

import com.squareup.okhttp.internal.l;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okio.i;

public abstract class K
  implements Closeable
{
  private Reader a;

  private byte[] g()
  {
    long l = b();
    if (l > 2147483647L)
      throw new IOException("Cannot buffer entire body for content length: " + l);
    i locali = d();
    byte[] arrayOfByte;
    try
    {
      arrayOfByte = locali.o();
      l.a(locali);
      if ((l != -1L) && (l != arrayOfByte.length))
        throw new IOException("Content-Length and stream length disagree");
    }
    finally
    {
      l.a(locali);
    }
    return arrayOfByte;
  }

  private Charset h()
  {
    z localz = a();
    if (localz != null)
      return localz.a(l.c);
    return l.c;
  }

  public abstract z a();

  public abstract long b();

  public final InputStream c()
  {
    return d().e();
  }

  public void close()
  {
    d().close();
  }

  public abstract i d();

  public final Reader e()
  {
    Reader localReader = this.a;
    if (localReader != null)
      return localReader;
    InputStreamReader localInputStreamReader = new InputStreamReader(c(), h());
    this.a = localInputStreamReader;
    return localInputStreamReader;
  }

  public final String f()
  {
    return new String(g(), h().name());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.K
 * JD-Core Version:    0.6.0
 */