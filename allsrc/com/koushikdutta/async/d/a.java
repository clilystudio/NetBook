package com.koushikdutta.async.d;

import com.koushikdutta.async.v;
import java.nio.ByteBuffer;

public final class a
{
  private int a = v.c;
  private int b = 0;
  private int c = 4096;

  public final ByteBuffer a()
  {
    return v.b(Math.min(Math.max(this.b, this.c), this.a));
  }

  public final void a(long paramLong)
  {
    this.b = ((int)paramLong << 1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.d.a
 * JD-Core Version:    0.6.0
 */