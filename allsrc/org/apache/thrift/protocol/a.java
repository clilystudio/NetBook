package org.apache.thrift.protocol;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public final class a extends f
{
  private static final k b = new k();
  private int c;
  private boolean d = false;
  private byte[] e = new byte[1];
  private byte[] f = new byte[2];
  private byte[] g = new byte[4];
  private byte[] h = new byte[8];
  private byte[] i = new byte[1];
  private byte[] j = new byte[2];
  private byte[] k = new byte[4];
  private byte[] l = new byte[8];

  public a(org.apache.thrift.transport.c paramc, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramc);
  }

  private int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    d(paramInt2);
    return this.a.d(paramArrayOfByte, 0, paramInt2);
  }

  private void a(byte paramByte)
  {
    this.e[0] = paramByte;
    this.a.b(this.e, 0, 1);
  }

  private String c(int paramInt)
  {
    try
    {
      d(paramInt);
      byte[] arrayOfByte = new byte[paramInt];
      this.a.d(arrayOfByte, 0, paramInt);
      String str = new String(arrayOfByte, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new org.apache.thrift.e("JVM DOES NOT SUPPORT UTF-8");
  }

  private void d(int paramInt)
  {
    if (paramInt < 0)
      throw new org.apache.thrift.e("Negative length: " + paramInt);
    if (this.d)
    {
      this.c -= paramInt;
      if (this.c < 0)
        throw new org.apache.thrift.e("Message length exceeded: " + paramInt);
    }
  }

  public final void a()
  {
  }

  public final void a(int paramInt)
  {
    this.g[0] = (byte)(0xFF & paramInt >> 24);
    this.g[1] = (byte)(0xFF & paramInt >> 16);
    this.g[2] = (byte)(0xFF & paramInt >> 8);
    this.g[3] = (byte)(paramInt & 0xFF);
    this.a.b(this.g, 0, 4);
  }

  public final void a(long paramLong)
  {
    this.h[0] = (byte)(int)(0xFF & paramLong >> 56);
    this.h[1] = (byte)(int)(0xFF & paramLong >> 48);
    this.h[2] = (byte)(int)(0xFF & paramLong >> 40);
    this.h[3] = (byte)(int)(0xFF & paramLong >> 32);
    this.h[4] = (byte)(int)(0xFF & paramLong >> 24);
    this.h[5] = (byte)(int)(0xFF & paramLong >> 16);
    this.h[6] = (byte)(int)(0xFF & paramLong >> 8);
    this.h[7] = (byte)(int)(0xFF & paramLong);
    this.a.b(this.h, 0, 8);
  }

  public final void a(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      a(arrayOfByte.length);
      this.a.b(arrayOfByte, 0, arrayOfByte.length);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new org.apache.thrift.e("JVM DOES NOT SUPPORT UTF-8");
  }

  public final void a(ByteBuffer paramByteBuffer)
  {
    int m = paramByteBuffer.limit() - paramByteBuffer.position() - paramByteBuffer.arrayOffset();
    a(m);
    this.a.b(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), m);
  }

  public final void a(c paramc)
  {
    a(paramc.a);
    int m = paramc.b;
    this.f[0] = (byte)(0xFF & m >> 8);
    this.f[1] = (byte)(m & 0xFF);
    this.a.b(this.f, 0, 2);
  }

  public final void a(d paramd)
  {
    a(paramd.a);
    a(paramd.b);
  }

  public final void a(e parame)
  {
    a(parame.a);
    a(parame.b);
    a(parame.c);
  }

  public final void a(j paramj)
  {
    a(paramj.a);
    a(paramj.b);
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (byte b1 = 1; ; b1 = 0)
    {
      a(b1);
      return;
    }
  }

  public final void b()
  {
  }

  public final void b(int paramInt)
  {
    this.c = paramInt;
    this.d = true;
  }

  public final void c()
  {
    a(0);
  }

  public final k d()
  {
    return b;
  }

  public final void e()
  {
  }

  public final c f()
  {
    byte b1 = k();
    if (b1 == 0);
    for (short s = 0; ; s = l())
      return new c("", b1, s);
  }

  public final e g()
  {
    return new e(k(), k(), m());
  }

  public final d h()
  {
    return new d(k(), m());
  }

  public final j i()
  {
    return new j(k(), m());
  }

  public final boolean j()
  {
    return k() == 1;
  }

  public final byte k()
  {
    if (this.a.c() > 0)
    {
      int m = this.a.a()[this.a.b()];
      this.a.a(1);
      return m;
    }
    a(this.i, 0, 1);
    return this.i[0];
  }

  public final short l()
  {
    byte[] arrayOfByte = this.j;
    int m;
    if (this.a.c() >= 2)
    {
      arrayOfByte = this.a.a();
      m = this.a.b();
      this.a.a(2);
    }
    while (true)
    {
      return (short)((0xFF & arrayOfByte[m]) << 8 | 0xFF & arrayOfByte[(m + 1)]);
      a(this.j, 0, 2);
      m = 0;
    }
  }

  public final int m()
  {
    byte[] arrayOfByte = this.k;
    int m;
    if (this.a.c() >= 4)
    {
      arrayOfByte = this.a.a();
      m = this.a.b();
      this.a.a(4);
    }
    while (true)
    {
      return (0xFF & arrayOfByte[m]) << 24 | (0xFF & arrayOfByte[(m + 1)]) << 16 | (0xFF & arrayOfByte[(m + 2)]) << 8 | 0xFF & arrayOfByte[(m + 3)];
      a(this.k, 0, 4);
      m = 0;
    }
  }

  public final long n()
  {
    byte[] arrayOfByte = this.l;
    int m;
    if (this.a.c() >= 8)
    {
      arrayOfByte = this.a.a();
      m = this.a.b();
      this.a.a(8);
    }
    while (true)
    {
      return (0xFF & arrayOfByte[m]) << 56 | (0xFF & arrayOfByte[(m + 1)]) << 48 | (0xFF & arrayOfByte[(m + 2)]) << 40 | (0xFF & arrayOfByte[(m + 3)]) << 32 | (0xFF & arrayOfByte[(m + 4)]) << 24 | (0xFF & arrayOfByte[(m + 5)]) << 16 | (0xFF & arrayOfByte[(m + 6)]) << 8 | 0xFF & arrayOfByte[(m + 7)];
      a(this.l, 0, 8);
      m = 0;
    }
  }

  public final double o()
  {
    return Double.longBitsToDouble(n());
  }

  public final String p()
  {
    int m = m();
    if (this.a.c() >= m)
      try
      {
        String str = new String(this.a.a(), this.a.b(), m, "UTF-8");
        this.a.a(m);
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new org.apache.thrift.e("JVM DOES NOT SUPPORT UTF-8");
      }
    return c(m);
  }

  public final ByteBuffer q()
  {
    int m = m();
    d(m);
    if (this.a.c() >= m)
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(this.a.a(), this.a.b(), m);
      this.a.a(m);
      return localByteBuffer;
    }
    byte[] arrayOfByte = new byte[m];
    this.a.d(arrayOfByte, 0, m);
    return ByteBuffer.wrap(arrayOfByte);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.thrift.protocol.a
 * JD-Core Version:    0.6.0
 */