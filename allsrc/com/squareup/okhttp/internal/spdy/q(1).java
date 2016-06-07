package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import okio.ByteString;
import okio.i;
import okio.n;
import okio.o;

final class q
{
  private final n a = new n(new r(this, parami), new s(this));
  private int b;
  private final i c = o.a(this.a);

  public q(i parami)
  {
  }

  private ByteString b()
  {
    int i = this.c.h();
    return this.c.c(i);
  }

  public final List<d> a(int paramInt)
  {
    this.b = (paramInt + this.b);
    int i = this.c.h();
    if (i < 0)
      throw new IOException("numberOfPairs < 0: " + i);
    if (i > 1024)
      throw new IOException("numberOfPairs > 1024: " + i);
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++)
    {
      ByteString localByteString1 = b().toAsciiLowercase();
      ByteString localByteString2 = b();
      if (localByteString1.size() == 0)
        throw new IOException("name.size == 0");
      localArrayList.add(new d(localByteString1, localByteString2));
    }
    if (this.b > 0)
    {
      this.a.b();
      if (this.b != 0)
        throw new IOException("compressedLimit > 0: " + this.b);
    }
    return localArrayList;
  }

  public final void a()
  {
    this.c.close();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.q
 * JD-Core Version:    0.6.0
 */