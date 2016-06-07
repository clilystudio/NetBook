package com.integralblue.httpresponsecache.compat.libcore.net.http;

import com.b.a;
import java.io.FilterOutputStream;
import java.io.OutputStream;

final class t extends FilterOutputStream
{
  t(s params, OutputStream paramOutputStream, p paramp, a parama)
  {
    super(paramOutputStream);
  }

  public final void close()
  {
    synchronized (this.b.a)
    {
      if (s.a(this.b))
        return;
      s.a(this.b, true);
      p.a(this.b.a);
      super.close();
      this.a.a();
      return;
    }
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.t
 * JD-Core Version:    0.6.0
 */