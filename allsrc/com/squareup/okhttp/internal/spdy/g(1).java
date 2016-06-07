package com.squareup.okhttp.internal.spdy;

import java.util.List;
import java.util.Map;
import okio.ByteString;
import okio.f;

final class g
{
  private final f a;

  g(f paramf)
  {
    this.a = paramf;
  }

  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2)
    {
      this.a.b(paramInt1 | 0x0);
      return;
    }
    this.a.b(paramInt2 | 0x0);
    int i = paramInt1 - paramInt2;
    while (i >= 128)
    {
      int j = i & 0x7F;
      this.a.b(j | 0x80);
      i >>>= 7;
    }
    this.a.b(i);
  }

  private void a(ByteString paramByteString)
  {
    a(paramByteString.size(), 127, 0);
    this.a.a(paramByteString);
  }

  final void a(List<d> paramList)
  {
    int i = paramList.size();
    int j = 0;
    if (j < i)
    {
      ByteString localByteString = ((d)paramList.get(j)).h.toAsciiLowercase();
      Integer localInteger = (Integer)e.b().get(localByteString);
      if (localInteger != null)
      {
        a(1 + localInteger.intValue(), 15, 0);
        a(((d)paramList.get(j)).i);
      }
      while (true)
      {
        j++;
        break;
        this.a.b(0);
        a(localByteString);
        a(((d)paramList.get(j)).i);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.g
 * JD-Core Version:    0.6.0
 */