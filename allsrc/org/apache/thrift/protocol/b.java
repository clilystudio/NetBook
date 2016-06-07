package org.apache.thrift.protocol;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.apache.thrift.a;

public final class b extends f
{
  private static final k b = new k("");
  private static final c c = new c("", 0, 0);
  private static final byte[] d;
  private a e = new a(15);
  private short f = 0;
  private c g = null;
  private Boolean h = null;
  private byte[] i = new byte[5];
  private byte[] j = new byte[10];
  private byte[] k = new byte[1];
  private byte[] l = new byte[1];

  static
  {
    byte[] arrayOfByte = new byte[16];
    d = arrayOfByte;
    arrayOfByte[0] = 0;
    d[2] = 1;
    d[3] = 3;
    d[6] = 4;
    d[8] = 5;
    d[10] = 6;
    d[4] = 7;
    d[11] = 8;
    d[15] = 9;
    d[14] = 10;
    d[13] = 11;
    d[12] = 12;
  }

  public b(org.apache.thrift.transport.c paramc)
  {
    super(paramc);
  }

  private void a(byte paramByte)
  {
    this.k[0] = paramByte;
    org.apache.thrift.transport.c localc = this.a;
    byte[] arrayOfByte = this.k;
    localc.b(arrayOfByte, 0, arrayOfByte.length);
  }

  private void a(byte paramByte, int paramInt)
  {
    if (paramInt <= 14)
    {
      a((byte)(paramInt << 4 | d[paramByte]));
      return;
    }
    a((byte)(0xF0 | d[paramByte]));
    b(paramInt);
  }

  private void a(c paramc, byte paramByte)
  {
    if (paramByte == -1)
    {
      int m = paramc.a;
      paramByte = d[m];
    }
    if ((paramc.b > this.f) && (paramc.b - this.f <= 15))
      a((byte)(paramByte | paramc.b - this.f << 4));
    while (true)
    {
      this.f = paramc.b;
      return;
      a(paramByte);
      b(c(paramc.b));
    }
  }

  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b(paramInt2);
    this.a.b(paramArrayOfByte, paramInt1, paramInt2);
  }

  private static byte b(byte paramByte)
  {
    switch ((byte)(paramByte & 0xF))
    {
    default:
      throw new g("don't know what type: " + (byte)(paramByte & 0xF));
    case 0:
      return 0;
    case 1:
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 6;
    case 5:
      return 8;
    case 6:
      return 10;
    case 7:
      return 4;
    case 8:
      return 11;
    case 9:
      return 15;
    case 10:
      return 14;
    case 11:
      return 13;
    case 12:
    }
    return 12;
  }

  private void b(int paramInt)
  {
    int n;
    for (int m = 0; ; m = n)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        byte[] arrayOfByte2 = this.i;
        int i1 = m + 1;
        arrayOfByte2[m] = (byte)paramInt;
        this.a.b(this.i, 0, i1);
        return;
      }
      byte[] arrayOfByte1 = this.i;
      n = m + 1;
      arrayOfByte1[m] = (byte)(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }

  private static int c(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }

  private static int d(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }

  private int s()
  {
    int m = 0;
    if (this.a.c() >= 5)
    {
      byte[] arrayOfByte = this.a.a();
      int i3 = this.a.b();
      int i4 = 0;
      int i5 = 0;
      while (true)
      {
        int i6 = arrayOfByte[(i3 + m)];
        i5 |= (i6 & 0x7F) << i4;
        if ((i6 & 0x80) != 128)
          break;
        i4 += 7;
        m++;
      }
      this.a.a(m + 1);
      return i5;
    }
    while (true)
    {
      int i2 = k();
      i1 |= (i2 & 0x7F) << n;
      if ((i2 & 0x80) == 128)
      {
        n += 7;
        continue;
      }
      return i1;
      int n = 0;
      int i1 = 0;
    }
  }

  public final void a()
  {
    this.e.a(this.f);
    this.f = 0;
  }

  public final void a(int paramInt)
  {
    b(c(paramInt));
  }

  public final void a(long paramLong)
  {
    long l1 = paramLong << 1 ^ paramLong >> 63;
    int n;
    for (int m = 0; ; m = n)
    {
      if ((0xFFFFFF80 & l1) == 0L)
      {
        byte[] arrayOfByte2 = this.j;
        int i1 = m + 1;
        arrayOfByte2[m] = (byte)(int)l1;
        this.a.b(this.j, 0, i1);
        return;
      }
      byte[] arrayOfByte1 = this.j;
      n = m + 1;
      arrayOfByte1[m] = (byte)(int)(0x80 | 0x7F & l1);
      l1 >>>= 7;
    }
  }

  public final void a(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      a(arrayOfByte, 0, arrayOfByte.length);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new org.apache.thrift.e("UTF-8 not supported!");
  }

  public final void a(ByteBuffer paramByteBuffer)
  {
    int m = paramByteBuffer.limit() - paramByteBuffer.position() - paramByteBuffer.arrayOffset();
    a(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), m);
  }

  public final void a(c paramc)
  {
    if (paramc.a == 2)
    {
      this.g = paramc;
      return;
    }
    a(paramc, -1);
  }

  public final void a(d paramd)
  {
    a(paramd.a, paramd.b);
  }

  public final void a(e parame)
  {
    if (parame.c == 0)
    {
      a((byte)0);
      return;
    }
    b(parame.c);
    int m = parame.a;
    int n = d[m] << 4;
    int i1 = parame.b;
    a((byte)(n | d[i1]));
  }

  public final void a(j paramj)
  {
    a(paramj.a, paramj.b);
  }

  public final void a(boolean paramBoolean)
  {
    byte b1 = 1;
    if (this.g != null)
    {
      c localc = this.g;
      if (paramBoolean);
      while (true)
      {
        a(localc, b1);
        this.g = null;
        return;
        b1 = 2;
      }
    }
    if (paramBoolean);
    while (true)
    {
      a(b1);
      return;
      b1 = 2;
    }
  }

  public final void b()
  {
    this.f = this.e.a();
  }

  public final void c()
  {
    a(0);
  }

  public final k d()
  {
    this.e.a(this.f);
    this.f = 0;
    return b;
  }

  public final void e()
  {
    this.f = this.e.a();
  }

  public final c f()
  {
    int m = k();
    if (m == 0)
      return c;
    int n = (short)((m & 0xF0) >> 4);
    short s;
    c localc;
    int i2;
    if (n == 0)
    {
      s = l();
      localc = new c("", b((byte)(m & 0xF)), s);
      int i1 = m & 0xF;
      if ((i1 != 1) && (i1 != 2))
        break label120;
      i2 = 1;
      label72: if (i2 != 0)
        if ((byte)(m & 0xF) != 1)
          break label126;
    }
    label120: label126: for (Boolean localBoolean = Boolean.TRUE; ; localBoolean = Boolean.FALSE)
    {
      this.h = localBoolean;
      this.f = localc.b;
      return localc;
      s = (short)(n + this.f);
      break;
      i2 = 0;
      break label72;
    }
  }

  public final e g()
  {
    int m = s();
    if (m == 0);
    for (int n = 0; ; n = k())
      return new e(b((byte)(n >> 4)), b((byte)(n & 0xF)), m);
  }

  public final d h()
  {
    byte b1 = k();
    int m = 0xF & b1 >> 4;
    if (m == 15)
      m = s();
    return new d(b(b1), m);
  }

  public final j i()
  {
    return new j(h());
  }

  public final boolean j()
  {
    int m = 1;
    if (this.h != null)
    {
      m = this.h.booleanValue();
      this.h = null;
    }
    do
      return m;
    while (k() == m);
    return false;
  }

  public final byte k()
  {
    if (this.a.c() > 0)
    {
      int m = this.a.a()[this.a.b()];
      this.a.a(1);
      return m;
    }
    this.a.d(this.l, 0, 1);
    return this.l[0];
  }

  public final short l()
  {
    return (short)d(s());
  }

  public final int m()
  {
    return d(s());
  }

  public final long n()
  {
    long l1 = 0L;
    int m = this.a.c();
    int n = 0;
    if (m >= 10)
    {
      byte[] arrayOfByte = this.a.a();
      int i2 = this.a.b();
      int i3 = 0;
      while (true)
      {
        int i4 = arrayOfByte[(i2 + n)];
        l1 |= (i4 & 0x7F) << i3;
        if ((i4 & 0x80) != 128)
          break;
        i3 += 7;
        n++;
      }
      this.a.a(n + 1);
      return l1 >>> 1 ^ -(l1 & 1L);
    }
    while (true)
    {
      int i1 = k();
      l1 |= (i1 & 0x7F) << n;
      if ((i1 & 0x80) != 128)
        break;
      n += 7;
    }
  }

  public final double o()
  {
    byte[] arrayOfByte = new byte[8];
    this.a.d(arrayOfByte, 0, 8);
    return Double.longBitsToDouble((0xFF & arrayOfByte[7]) << 56 | (0xFF & arrayOfByte[6]) << 48 | (0xFF & arrayOfByte[5]) << 40 | (0xFF & arrayOfByte[4]) << 32 | (0xFF & arrayOfByte[3]) << 24 | (0xFF & arrayOfByte[2]) << 16 | (0xFF & arrayOfByte[1]) << 8 | 0xFF & arrayOfByte[0]);
  }

  public final String p()
  {
    int m = s();
    if (m == 0)
      return "";
    try
    {
      if (this.a.c() >= m)
      {
        String str = new String(this.a.a(), this.a.b(), m, "UTF-8");
        this.a.a(m);
        return str;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new org.apache.thrift.e("UTF-8 not supported!");
    }
    byte[] arrayOfByte;
    if (m == 0)
      arrayOfByte = new byte[0];
    while (true)
    {
      return new String(arrayOfByte, "UTF-8");
      arrayOfByte = new byte[m];
      this.a.d(arrayOfByte, 0, m);
    }
  }

  public final ByteBuffer q()
  {
    int m = s();
    if (m == 0)
      return ByteBuffer.wrap(new byte[0]);
    byte[] arrayOfByte = new byte[m];
    this.a.d(arrayOfByte, 0, m);
    return ByteBuffer.wrap(arrayOfByte);
  }

  public final void r()
  {
    this.e.b();
    this.f = 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.apache.thrift.protocol.b
 * JD-Core Version:    0.6.0
 */