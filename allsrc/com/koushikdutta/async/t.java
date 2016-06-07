package com.koushikdutta.async;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import java.nio.ByteBuffer;

public class t
  implements A
{
  v a = new v();
  int b = 2147483647;
  private A c;
  private d d;
  private boolean e;

  static
  {
    if (!t.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      f = bool;
      return;
    }
  }

  public t(A paramA)
  {
    a(paramA);
  }

  public final void a()
  {
    if (this.a.d())
    {
      this.e = true;
      return;
    }
    this.c.a();
  }

  public final void a(int paramInt)
  {
    if ((!f) && (paramInt < 0))
      throw new AssertionError();
    this.b = paramInt;
  }

  public final void a(A paramA)
  {
    this.c = paramA;
    this.c.a(new u(this));
  }

  public final void a(a parama)
  {
    this.c.a(parama);
  }

  public final void a(d paramd)
  {
    this.d = paramd;
  }

  public void a(v paramv)
  {
    a(paramv, false);
  }

  protected final void a(v paramv, boolean paramBoolean)
  {
    if (!this.a.d())
      this.c.a(paramv);
    if (paramv.c() > 0)
    {
      int i = Math.min(paramv.c(), this.b);
      if (paramBoolean)
        i = paramv.c();
      if (i > 0)
        paramv.a(this.a, i);
    }
  }

  public void a(ByteBuffer paramByteBuffer)
  {
    if (this.a.c() >= this.b);
    int i;
    do
    {
      do
      {
        return;
        i = 1;
        if (this.a.d())
          continue;
        i = 0;
        this.c.a(paramByteBuffer);
      }
      while (!paramByteBuffer.hasRemaining());
      ByteBuffer localByteBuffer = v.b(paramByteBuffer.remaining());
      localByteBuffer.put(paramByteBuffer);
      localByteBuffer.flip();
      this.a.a(localByteBuffer);
    }
    while (i == 0);
    this.c.a(this.a);
  }

  public final d e()
  {
    return this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.t
 * JD-Core Version:    0.6.0
 */