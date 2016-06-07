package com.koushikdutta.async;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

final class aa
  implements d
{
  private int a = 0;
  private ByteBuffer b;
  private int c = 0;
  private int d = 262144;

  aa(A paramA, InputStream paramInputStream, long paramLong, a parama)
  {
  }

  private void b()
  {
    this.e.a(null);
    this.e.a(null);
    v.c(this.b);
    this.b = null;
    try
    {
      this.f.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public final void a()
  {
    try
    {
      boolean bool;
      do
      {
        if ((this.b == null) || (this.b.remaining() == 0))
        {
          v.c(this.b);
          this.b = v.b(Math.min(Math.max(this.c, 4096), this.d));
          long l = Math.min(this.g - this.a, this.b.capacity());
          int i = this.f.read(this.b.array(), 0, (int)l);
          if ((i == -1) || (this.a == this.g))
          {
            b();
            this.h.a(null);
            return;
          }
          this.c = (i << 1);
          this.a = (i + this.a);
          this.b.position(0);
          this.b.limit(i);
        }
        this.e.a(this.b);
        bool = this.b.hasRemaining();
      }
      while (!bool);
      return;
    }
    catch (Exception localException)
    {
      b();
      this.h.a(localException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.aa
 * JD-Core Version:    0.6.0
 */