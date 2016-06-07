package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.C;
import com.koushikdutta.async.Y;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;
import java.nio.ByteBuffer;
import java.util.zip.Inflater;

public class j extends C
{
  private Inflater a;
  private v b = new v();

  static
  {
    if (!j.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      c = bool;
      return;
    }
  }

  public j()
  {
    this(new Inflater());
  }

  public j(Inflater paramInflater)
  {
    this.a = paramInflater;
  }

  public void a(y paramy, v paramv)
  {
    ByteBuffer localByteBuffer1;
    while (true)
    {
      ByteBuffer localByteBuffer2;
      try
      {
        localByteBuffer1 = v.b(paramv.c() << 1);
        if (paramv.l() <= 0)
          break;
        localByteBuffer2 = paramv.k();
        if (!localByteBuffer2.hasRemaining())
          break label188;
        int i = localByteBuffer2.remaining();
        this.a.setInput(localByteBuffer2.array(), localByteBuffer2.arrayOffset() + localByteBuffer2.position(), localByteBuffer2.remaining());
        localByteBuffer1.position(this.a.inflate(localByteBuffer1.array(), localByteBuffer1.arrayOffset() + localByteBuffer1.position(), localByteBuffer1.remaining()) + localByteBuffer1.position());
        if (localByteBuffer1.hasRemaining())
          break label168;
        localByteBuffer1.flip();
        this.b.a(localByteBuffer1);
        if ((!c) && (i == 0))
          throw new AssertionError();
      }
      catch (Exception localException)
      {
        a_(localException);
        return;
      }
      localByteBuffer1 = v.b(localByteBuffer1.capacity() << 1);
      label168: if ((!this.a.needsInput()) && (!this.a.finished()))
        continue;
      label188: v.c(localByteBuffer2);
    }
    localByteBuffer1.flip();
    this.b.a(localByteBuffer1);
    Y.a(this, this.b);
  }

  protected final void a_(Exception paramException)
  {
    this.a.end();
    if ((paramException != null) && (this.a.getRemaining() > 0))
      paramException = new DataRemainingException("data still remaining in inflater", paramException);
    super.a_(paramException);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.filter.j
 * JD-Core Version:    0.6.0
 */