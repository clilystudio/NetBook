package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.b.h;
import java.io.FilterInputStream;
import java.io.InputStream;

final class q extends FilterInputStream
{
  q(InputStream paramInputStream, h paramh)
  {
    super(paramInputStream);
  }

  public final void close()
  {
    this.a.close();
    super.close();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.q
 * JD-Core Version:    0.6.0
 */