package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okio.ByteString;
import okio.i;
import okio.o;
import okio.y;

class f
{
  private final List<d> a = new ArrayList();
  private final i b;
  private int c;
  private int d;
  private d[] e = new d[8];
  private int f = -1 + this.e.length;
  private int g = 0;
  private int h = 0;

  f(int paramInt, y paramy)
  {
    this.c = paramInt;
    this.d = paramInt;
    this.b = o.a(paramy);
  }

  private int a(int paramInt1, int paramInt2)
  {
    int i = paramInt1 & paramInt2;
    if (i < paramInt2)
      return i;
    int k;
    for (int j = 0; ; j += 7)
    {
      k = e();
      if ((k & 0x80) == 0)
        break;
      paramInt2 += ((k & 0x7F) << j);
    }
    return paramInt2 + (k << j);
  }

  private void a(int paramInt, d paramd)
  {
    this.a.add(paramd);
    int i = paramd.j;
    if (i > this.d)
    {
      d();
      return;
    }
    b(i + this.h - this.d);
    if (1 + this.g > this.e.length)
    {
      d[] arrayOfd = new d[this.e.length << 1];
      System.arraycopy(this.e, 0, arrayOfd, this.e.length, this.e.length);
      this.f = (-1 + this.e.length);
      this.e = arrayOfd;
    }
    int j = this.f;
    this.f = (j - 1);
    this.e[j] = paramd;
    this.g = (1 + this.g);
    this.h = (i + this.h);
  }

  private int b(int paramInt)
  {
    int i = 0;
    if (paramInt > 0)
    {
      for (int j = -1 + this.e.length; (j >= this.f) && (paramInt > 0); j--)
      {
        paramInt -= this.e[j].j;
        this.h -= this.e[j].j;
        this.g = (-1 + this.g);
        i++;
      }
      System.arraycopy(this.e, 1 + this.f, this.e, i + (1 + this.f), this.g);
      this.f = (i + this.f);
    }
    return i;
  }

  private int c(int paramInt)
  {
    return paramInt + (1 + this.f);
  }

  private void c()
  {
    if (this.d < this.h)
    {
      if (this.d == 0)
        d();
    }
    else
      return;
    b(this.h - this.d);
  }

  private ByteString d(int paramInt)
  {
    if (e(paramInt))
      return e.a()[paramInt].h;
    return this.e[c(paramInt - e.a().length)].h;
  }

  private void d()
  {
    this.a.clear();
    Arrays.fill(this.e, null);
    this.f = (-1 + this.e.length);
    this.g = 0;
    this.h = 0;
  }

  private int e()
  {
    return 0xFF & this.b.f();
  }

  private static boolean e(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= -1 + e.a().length);
  }

  private ByteString f()
  {
    int i = e();
    if ((i & 0x80) == 128);
    int k;
    for (int j = 1; ; j = 0)
    {
      k = a(i, 127);
      if (j == 0)
        break;
      return ByteString.of(m.a().a(this.b.e(k)));
    }
    return this.b.c(k);
  }

  final void a()
  {
    while (!this.b.d())
    {
      int i = 0xFF & this.b.f();
      if (i == 128)
        throw new IOException("index == 0");
      if ((i & 0x80) == 128)
      {
        int j = -1 + a(i, 127);
        if (e(j))
        {
          d locald = e.a()[j];
          this.a.add(locald);
          continue;
        }
        int k = c(j - e.a().length);
        if ((k < 0) || (k > -1 + this.e.length))
          throw new IOException("Header index too large " + (j + 1));
        this.a.add(this.e[k]);
        continue;
      }
      if (i == 64)
      {
        a(-1, new d(e.a(f()), f()));
        continue;
      }
      if ((i & 0x40) == 64)
      {
        a(-1, new d(d(-1 + a(i, 63)), f()));
        continue;
      }
      if ((i & 0x20) == 32)
      {
        this.d = a(i, 31);
        if ((this.d < 0) || (this.d > this.c))
          throw new IOException("Invalid dynamic table size update " + this.d);
        c();
        continue;
      }
      if ((i == 16) || (i == 0))
      {
        ByteString localByteString1 = e.a(f());
        ByteString localByteString2 = f();
        this.a.add(new d(localByteString1, localByteString2));
        continue;
      }
      ByteString localByteString3 = d(-1 + a(i, 15));
      ByteString localByteString4 = f();
      this.a.add(new d(localByteString3, localByteString4));
    }
  }

  final void a(int paramInt)
  {
    this.c = paramInt;
    this.d = paramInt;
    c();
  }

  public final List<d> b()
  {
    ArrayList localArrayList = new ArrayList(this.a);
    this.a.clear();
    return localArrayList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.f
 * JD-Core Version:    0.6.0
 */