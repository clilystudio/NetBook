package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class cs extends bN
{
  private static final bR b = new bR("");
  private static final bK c = new bK("", 0, 0);
  private static final byte[] d;
  private by e = new by(15);
  private short f = 0;
  private bK g = null;
  private Boolean h = null;
  private final long i;
  private byte[] j = new byte[5];
  private byte[] k = new byte[10];
  private byte[] l = new byte[1];
  private byte[] m = new byte[1];

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

  public cs(bZ parambZ, long paramLong)
  {
    super(parambZ);
    this.i = paramLong;
  }

  private void a(bK parambK, byte paramByte)
  {
    if (paramByte == -1)
    {
      int n = parambK.b;
      paramByte = d[n];
    }
    if ((parambK.c > this.f) && (parambK.c - this.f <= 15))
      b((byte)(paramByte | parambK.c - this.f << 4));
    while (true)
    {
      this.f = parambK.c;
      return;
      b(paramByte);
      a(parambK.c);
    }
  }

  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b(paramInt2);
    this.a.b(paramArrayOfByte, paramInt1, paramInt2);
  }

  private void b(byte paramByte)
  {
    this.l[0] = paramByte;
    this.a.a(this.l);
  }

  private void b(int paramInt)
  {
    int i1;
    for (int n = 0; ; n = i1)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        byte[] arrayOfByte2 = this.j;
        int i2 = n + 1;
        arrayOfByte2[n] = (byte)paramInt;
        this.a.b(this.j, 0, i2);
        return;
      }
      byte[] arrayOfByte1 = this.j;
      i1 = n + 1;
      arrayOfByte1[n] = (byte)(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }

  private static byte c(byte paramByte)
  {
    switch ((byte)(paramByte & 0xF))
    {
    default:
      throw new cz("don't know what type: " + (byte)(paramByte & 0xF));
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

  private static int c(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }

  private void d(int paramInt)
  {
    if (paramInt < 0)
      throw new cz("Negative length: " + paramInt);
    if ((this.i != -1L) && (paramInt > this.i))
      throw new cz("Length exceeded max allowed: " + paramInt);
  }

  private static int e(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }

  private int t()
  {
    int n = 0;
    if (this.a.d() >= 5)
    {
      byte[] arrayOfByte = this.a.b();
      int i4 = this.a.c();
      int i5 = 0;
      int i6 = 0;
      while (true)
      {
        int i7 = arrayOfByte[(i4 + n)];
        i6 |= (i7 & 0x7F) << i5;
        if ((i7 & 0x80) != 128)
          break;
        i5 += 7;
        n++;
      }
      this.a.a(n + 1);
      return i6;
    }
    while (true)
    {
      int i3 = k();
      i2 |= (i3 & 0x7F) << i1;
      if ((i3 & 0x80) == 128)
      {
        i1 += 7;
        continue;
      }
      return i2;
      int i1 = 0;
      int i2 = 0;
    }
  }

  public final void a()
  {
    this.e.a(this.f);
    this.f = 0;
  }

  public final void a(byte paramByte)
  {
    b(paramByte);
  }

  public final void a(double paramDouble)
  {
    byte[] arrayOfByte = new byte[8];
    long l1 = Double.doubleToLongBits(paramDouble);
    arrayOfByte[0] = (byte)(int)(l1 & 0xFF);
    arrayOfByte[1] = (byte)(int)(0xFF & l1 >> 8);
    arrayOfByte[2] = (byte)(int)(0xFF & l1 >> 16);
    arrayOfByte[3] = (byte)(int)(0xFF & l1 >> 24);
    arrayOfByte[4] = (byte)(int)(0xFF & l1 >> 32);
    arrayOfByte[5] = (byte)(int)(0xFF & l1 >> 40);
    arrayOfByte[6] = (byte)(int)(0xFF & l1 >> 48);
    arrayOfByte[7] = (byte)(int)(0xFF & l1 >> 56);
    this.a.a(arrayOfByte);
  }

  public final void a(int paramInt)
  {
    b(c(paramInt));
  }

  public final void a(long paramLong)
  {
    long l1 = paramLong << 1 ^ paramLong >> 63;
    int i1;
    for (int n = 0; ; n = i1)
    {
      if ((0xFFFFFF80 & l1) == 0L)
      {
        byte[] arrayOfByte2 = this.k;
        int i2 = n + 1;
        arrayOfByte2[n] = (byte)(int)l1;
        this.a.b(this.k, 0, i2);
        return;
      }
      byte[] arrayOfByte1 = this.k;
      i1 = n + 1;
      arrayOfByte1[n] = (byte)(int)(0x80 | 0x7F & l1);
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
    throw new cf("UTF-8 not supported!");
  }

  public final void a(ByteBuffer paramByteBuffer)
  {
    int n = paramByteBuffer.limit() - paramByteBuffer.position();
    a(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), n);
  }

  public final void a(bK parambK)
  {
    if (parambK.b == 2)
    {
      this.g = parambK;
      return;
    }
    a(parambK, -1);
  }

  public final void a(bL parambL)
  {
    int n = parambL.a;
    int i1 = parambL.b;
    if (i1 <= 14)
    {
      b((byte)(i1 << 4 | d[n]));
      return;
    }
    b((byte)(0xF0 | d[n]));
    b(i1);
  }

  public final void a(bM parambM)
  {
    if (parambM.c == 0)
    {
      b((byte)0);
      return;
    }
    b(parambM.c);
    int n = parambM.a;
    int i1 = d[n] << 4;
    int i2 = parambM.b;
    b((byte)(i1 | d[i2]));
  }

  public final void a(short paramShort)
  {
    b(c(paramShort));
  }

  public final void a(boolean paramBoolean)
  {
    byte b1 = 1;
    if (this.g != null)
    {
      bK localbK = this.g;
      if (paramBoolean);
      while (true)
      {
        a(localbK, b1);
        this.g = null;
        return;
        b1 = 2;
      }
    }
    if (paramBoolean);
    while (true)
    {
      b(b1);
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
    b(0);
  }

  public final bR d()
  {
    this.e.a(this.f);
    this.f = 0;
    return b;
  }

  public final void e()
  {
    this.f = this.e.a();
  }

  public final bK f()
  {
    int n = k();
    if (n == 0)
      return c;
    int i1 = (short)((n & 0xF0) >> 4);
    short s;
    bK localbK;
    int i3;
    if (i1 == 0)
    {
      s = l();
      localbK = new bK("", c((byte)(n & 0xF)), s);
      int i2 = n & 0xF;
      if ((i2 == 1) || (i2 == 2))
        break label120;
      i3 = 0;
      label72: if (i3 != 0)
        if ((byte)(n & 0xF) != 1)
          break label126;
    }
    label120: label126: for (Boolean localBoolean = Boolean.TRUE; ; localBoolean = Boolean.FALSE)
    {
      this.h = localBoolean;
      this.f = localbK.c;
      return localbK;
      s = (short)(i1 + this.f);
      break;
      i3 = 1;
      break label72;
    }
  }

  public final bM g()
  {
    int n = t();
    if (n == 0);
    for (int i1 = 0; ; i1 = k())
      return new bM(c((byte)(i1 >> 4)), c((byte)(i1 & 0xF)), n);
  }

  public final bL h()
  {
    byte b1 = k();
    int n = 0xF & b1 >> 4;
    if (n == 15)
      n = t();
    return new bL(c(b1), n);
  }

  public final bQ i()
  {
    return new bQ(h());
  }

  public final boolean j()
  {
    int n = 1;
    if (this.h != null)
    {
      n = this.h.booleanValue();
      this.h = null;
    }
    do
      return n;
    while (k() == n);
    return false;
  }

  public final byte k()
  {
    if (this.a.d() > 0)
    {
      int n = this.a.b()[this.a.c()];
      this.a.a(1);
      return n;
    }
    this.a.d(this.m, 0, 1);
    return this.m[0];
  }

  public final short l()
  {
    return (short)e(t());
  }

  public final int m()
  {
    return e(t());
  }

  public final long n()
  {
    long l1 = 0L;
    int n = this.a.d();
    int i1 = 0;
    if (n >= 10)
    {
      byte[] arrayOfByte = this.a.b();
      int i3 = this.a.c();
      int i4 = 0;
      while (true)
      {
        int i5 = arrayOfByte[(i3 + i1)];
        l1 |= (i5 & 0x7F) << i4;
        if ((i5 & 0x80) != 128)
          break;
        i4 += 7;
        i1++;
      }
      this.a.a(i1 + 1);
      return l1 >>> 1 ^ -(l1 & 1L);
    }
    while (true)
    {
      int i2 = k();
      l1 |= (i2 & 0x7F) << i1;
      if ((i2 & 0x80) != 128)
        break;
      i1 += 7;
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
    int n = t();
    d(n);
    if (n == 0)
      return "";
    try
    {
      if (this.a.d() >= n)
      {
        String str = new String(this.a.b(), this.a.c(), n, "UTF-8");
        this.a.a(n);
        return str;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new cf("UTF-8 not supported!");
    }
    byte[] arrayOfByte;
    if (n == 0)
      arrayOfByte = new byte[0];
    while (true)
    {
      return new String(arrayOfByte, "UTF-8");
      arrayOfByte = new byte[n];
      this.a.d(arrayOfByte, 0, n);
    }
  }

  public final ByteBuffer q()
  {
    int n = t();
    d(n);
    if (n == 0)
      return ByteBuffer.wrap(new byte[0]);
    byte[] arrayOfByte = new byte[n];
    this.a.d(arrayOfByte, 0, n);
    return ByteBuffer.wrap(arrayOfByte);
  }

  public final void r()
  {
    this.e.b();
    this.f = 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cs
 * JD-Core Version:    0.6.0
 */