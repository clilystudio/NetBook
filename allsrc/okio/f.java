package okio;

import java.io.EOFException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class f
  implements Cloneable, h, i
{
  private static final byte[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  v a;
  long b;

  private String a(long paramLong, Charset paramCharset)
  {
    B.a(this.b, 0L, paramLong);
    if (paramCharset == null)
      throw new IllegalArgumentException("charset == null");
    if (paramLong > 2147483647L)
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    String str;
    if (paramLong == 0L)
      str = "";
    v localv;
    do
    {
      return str;
      localv = this.a;
      if (paramLong + localv.b > localv.c)
        return new String(e(paramLong), paramCharset);
      str = new String(localv.a, localv.b, (int)paramLong, paramCharset);
      localv.b = (int)(paramLong + localv.b);
      this.b -= paramLong;
    }
    while (localv.b != localv.c);
    this.a = localv.a();
    w.a(localv);
    return str;
  }

  private void c(byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = a(paramArrayOfByte, i, paramArrayOfByte.length - i);
      if (j == -1)
        throw new EOFException();
      i += j;
    }
  }

  private String i(long paramLong)
  {
    return a(paramLong, B.a);
  }

  private f s()
  {
    f localf = new f();
    if (this.b == 0L)
      return localf;
    localf.a = new v(this.a);
    v localv1 = localf.a;
    v localv2 = localf.a;
    v localv3 = localf.a;
    localv2.g = localv3;
    localv1.f = localv3;
    for (v localv4 = this.a.f; localv4 != this.a; localv4 = localv4.f)
      localf.a.g.a(new v(localv4));
    localf.b = this.b;
    return localf;
  }

  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    B.a(paramArrayOfByte.length, paramInt1, paramInt2);
    v localv = this.a;
    int i;
    if (localv == null)
      i = -1;
    do
    {
      return i;
      i = Math.min(paramInt2, localv.c - localv.b);
      System.arraycopy(localv.a, localv.b, paramArrayOfByte, paramInt1, i);
      localv.b = (i + localv.b);
      this.b -= i;
    }
    while (localv.b != localv.c);
    this.a = localv.a();
    w.a(localv);
    return i;
  }

  public final long a(byte paramByte)
  {
    return a(paramByte, 0L);
  }

  public final long a(byte paramByte, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("fromIndex < 0");
    v localv = this.a;
    if (localv == null)
      return -1L;
    long l1 = 0L;
    int i = localv.c - localv.b;
    if (paramLong >= i)
      paramLong -= i;
    while (true)
    {
      l1 += i;
      localv = localv.f;
      if (localv != this.a)
        break;
      return -1L;
      byte[] arrayOfByte = localv.a;
      long l2 = paramLong + localv.b;
      long l3 = localv.c;
      while (l2 < l3)
      {
        if (arrayOfByte[(int)l2] == paramByte)
          return l1 + l2 - localv.b;
        l2 += 1L;
      }
      paramLong = 0L;
    }
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramf == null)
      throw new IllegalArgumentException("sink == null");
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.b == 0L)
      return -1L;
    if (paramLong > this.b)
      paramLong = this.b;
    paramf.a_(this, paramLong);
    return paramLong;
  }

  public final long a(y paramy)
  {
    if (paramy == null)
      throw new IllegalArgumentException("source == null");
    long l1 = 0L;
    while (true)
    {
      long l2 = paramy.a(this, 2048L);
      if (l2 == -1L)
        break;
      l1 += l2;
    }
    return l1;
  }

  public final f a(int paramInt)
  {
    if (paramInt < 128)
    {
      b(paramInt);
      return this;
    }
    if (paramInt < 2048)
    {
      b(0xC0 | paramInt >> 6);
      b(0x80 | paramInt & 0x3F);
      return this;
    }
    if (paramInt < 65536)
    {
      if ((paramInt >= 55296) && (paramInt <= 57343))
        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
      b(0xE0 | paramInt >> 12);
      b(0x80 | 0x3F & paramInt >> 6);
      b(0x80 | paramInt & 0x3F);
      return this;
    }
    if (paramInt <= 1114111)
    {
      b(0xF0 | paramInt >> 18);
      b(0x80 | 0x3F & paramInt >> 12);
      b(0x80 | 0x3F & paramInt >> 6);
      b(0x80 | paramInt & 0x3F);
      return this;
    }
    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
  }

  public final f a(String paramString)
  {
    return a(paramString, 0, paramString.length());
  }

  public final f a(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null)
      throw new IllegalArgumentException("string == null");
    if (paramInt1 < 0)
      throw new IllegalAccessError("beginIndex < 0: " + paramInt1);
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException("endIndex < beginIndex: " + paramInt2 + " < " + paramInt1);
    int i1;
    int m;
    v localv;
    if (paramInt2 > paramString.length())
    {
      throw new IllegalArgumentException("endIndex > string.length: " + paramInt2 + " > " + paramString.length());
      int i4 = i1 + m - localv.c;
      localv.c = (i4 + localv.c);
      this.b += i4;
      paramInt1 = i1;
    }
    while (true)
    {
      if (paramInt1 >= paramInt2)
        break label532;
      int i = paramString.charAt(paramInt1);
      if (i < 128)
      {
        localv = e(1);
        byte[] arrayOfByte = localv.a;
        m = localv.c - paramInt1;
        int n = Math.min(paramInt2, 2048 - m);
        i1 = paramInt1 + 1;
        arrayOfByte[(m + paramInt1)] = (byte)i;
        while (true)
        {
          if (i1 >= n)
            break label280;
          int i2 = paramString.charAt(i1);
          if (i2 >= 128)
            break;
          int i3 = i1 + 1;
          arrayOfByte[(i1 + m)] = (byte)i2;
          i1 = i3;
        }
        label280: break;
      }
      if (i < 2048)
      {
        b(0xC0 | i >> 6);
        b(0x80 | i & 0x3F);
        paramInt1++;
        continue;
      }
      if ((i < 55296) || (i > 57343))
      {
        b(0xE0 | i >> 12);
        b(0x80 | 0x3F & i >> 6);
        b(0x80 | i & 0x3F);
        paramInt1++;
        continue;
      }
      if (paramInt1 + 1 < paramInt2);
      for (int j = paramString.charAt(paramInt1 + 1); ; j = 0)
      {
        if ((i <= 56319) && (j >= 56320) && (j <= 57343))
          break label445;
        b(63);
        paramInt1++;
        break;
      }
      label445: int k = 65536 + ((i & 0xFFFF27FF) << 10 | j & 0xFFFF23FF);
      b(0xF0 | k >> 18);
      b(0x80 | 0x3F & k >> 12);
      b(0x80 | 0x3F & k >> 6);
      b(0x80 | k & 0x3F);
      paramInt1 += 2;
    }
    label532: return this;
  }

  public final f a(ByteString paramByteString)
  {
    if (paramByteString == null)
      throw new IllegalArgumentException("byteString == null");
    paramByteString.write(this);
    return this;
  }

  public final f a(f paramf, long paramLong1, long paramLong2)
  {
    if (paramf == null)
      throw new IllegalArgumentException("out == null");
    B.a(this.b, paramLong1, paramLong2);
    if (paramLong2 == 0L)
      return this;
    paramf.b = (paramLong2 + paramf.b);
    for (v localv1 = this.a; paramLong1 >= localv1.c - localv1.b; localv1 = localv1.f)
      paramLong1 -= localv1.c - localv1.b;
    label92: v localv2;
    if (paramLong2 > 0L)
    {
      localv2 = new v(localv1);
      localv2.b = (int)(paramLong1 + localv2.b);
      localv2.c = Math.min(localv2.b + (int)paramLong2, localv2.c);
      if (paramf.a != null)
        break label202;
      localv2.g = localv2;
      localv2.f = localv2;
      paramf.a = localv2;
    }
    while (true)
    {
      paramLong2 -= localv2.c - localv2.b;
      localv1 = localv1.f;
      paramLong1 = 0L;
      break label92;
      break;
      label202: paramf.a.g.a(localv2);
    }
  }

  public final f a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("source == null");
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public final z a()
  {
    return z.a;
  }

  public final void a(long paramLong)
  {
    if (this.b < paramLong)
      throw new EOFException();
  }

  public final void a_(f paramf, long paramLong)
  {
    if (paramf == null)
      throw new IllegalArgumentException("source == null");
    if (paramf == this)
      throw new IllegalArgumentException("source == this");
    B.a(paramf.b, 0L, paramLong);
    v localv6;
    long l2;
    if (paramLong > 0L)
    {
      if (paramLong >= paramf.a.c - paramf.a.b)
        break label269;
      if (this.a == null)
        break label160;
      localv6 = this.a.g;
      if ((localv6 == null) || (!localv6.e))
        break label176;
      l2 = paramLong + localv6.c;
      if (!localv6.d)
        break label166;
    }
    label160: label166: for (int n = 0; ; n = localv6.b)
    {
      if (l2 - n > 2048L)
        break label176;
      paramf.a.a(localv6, (int)paramLong);
      paramf.b -= paramLong;
      this.b = (paramLong + this.b);
      return;
      localv6 = null;
      break;
    }
    label176: v localv7 = paramf.a;
    int m = (int)paramLong;
    if ((m <= 0) || (m > localv7.c - localv7.b))
      throw new IllegalArgumentException();
    v localv8 = new v(localv7);
    localv8.c = (m + localv8.b);
    localv7.b = (m + localv7.b);
    localv7.g.a(localv8);
    paramf.a = localv8;
    label269: v localv1 = paramf.a;
    long l1 = localv1.c - localv1.b;
    paramf.a = localv1.a();
    if (this.a == null)
    {
      this.a = localv1;
      v localv3 = this.a;
      v localv4 = this.a;
      v localv5 = this.a;
      localv4.g = localv5;
      localv3.f = localv5;
    }
    label504: 
    while (true)
    {
      paramf.b -= l1;
      this.b = (l1 + this.b);
      paramLong -= l1;
      break;
      v localv2 = this.a.g.a(localv1);
      if (localv2.g == localv2)
        throw new IllegalStateException();
      if (!localv2.g.e)
        continue;
      int i = localv2.c - localv2.b;
      int j = 2048 - localv2.g.c;
      if (localv2.g.d);
      for (int k = 0; ; k = localv2.g.b)
      {
        if (i > k + j)
          break label504;
        localv2.a(localv2.g, i);
        localv2.a();
        w.a(localv2);
        break;
      }
    }
  }

  public final byte b(long paramLong)
  {
    B.a(this.b, paramLong, 1L);
    for (v localv = this.a; ; localv = localv.f)
    {
      int i = localv.c - localv.b;
      if (paramLong < i)
        return localv.a[(localv.b + (int)paramLong)];
      paramLong -= i;
    }
  }

  public final long b()
  {
    return this.b;
  }

  public final f b(int paramInt)
  {
    v localv = e(1);
    byte[] arrayOfByte = localv.a;
    int i = localv.c;
    localv.c = (i + 1);
    arrayOfByte[i] = (byte)paramInt;
    this.b = (1L + this.b);
    return this;
  }

  public final f b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("source == null");
    B.a(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      v localv = e(1);
      int j = Math.min(i - paramInt1, 2048 - localv.c);
      System.arraycopy(paramArrayOfByte, paramInt1, localv.a, localv.c, j);
      paramInt1 += j;
      localv.c = (j + localv.c);
    }
    this.b += paramInt2;
    return this;
  }

  public final ByteString c(long paramLong)
  {
    return new ByteString(e(paramLong));
  }

  public final f c()
  {
    return this;
  }

  public final f c(int paramInt)
  {
    v localv = e(2);
    byte[] arrayOfByte = localv.a;
    int i = localv.c;
    int j = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 8);
    int k = j + 1;
    arrayOfByte[j] = (byte)paramInt;
    localv.c = k;
    this.b = (2L + this.b);
    return this;
  }

  public final void close()
  {
  }

  final String d(long paramLong)
  {
    if ((paramLong > 0L) && (b(paramLong - 1L) == 13))
    {
      String str2 = i(paramLong - 1L);
      f(2L);
      return str2;
    }
    String str1 = i(paramLong);
    f(1L);
    return str1;
  }

  public final f d(int paramInt)
  {
    v localv = e(4);
    byte[] arrayOfByte = localv.a;
    int i = localv.c;
    int j = i + 1;
    arrayOfByte[i] = (byte)(paramInt >>> 24);
    int k = j + 1;
    arrayOfByte[j] = (byte)(paramInt >>> 16);
    int m = k + 1;
    arrayOfByte[k] = (byte)(paramInt >>> 8);
    int n = m + 1;
    arrayOfByte[m] = (byte)paramInt;
    localv.c = n;
    this.b = (4L + this.b);
    return this;
  }

  public final boolean d()
  {
    return this.b == 0L;
  }

  public final InputStream e()
  {
    return new g(this);
  }

  final v e(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 2048))
      throw new IllegalArgumentException();
    v localv1;
    if (this.a == null)
    {
      this.a = w.a();
      v localv2 = this.a;
      v localv3 = this.a;
      localv1 = this.a;
      localv3.g = localv1;
      localv2.f = localv1;
    }
    do
    {
      return localv1;
      localv1 = this.a.g;
    }
    while ((paramInt + localv1.c <= 2048) && (localv1.e));
    return localv1.a(w.a());
  }

  public final byte[] e(long paramLong)
  {
    B.a(this.b, 0L, paramLong);
    if (paramLong > 2147483647L)
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    byte[] arrayOfByte = new byte[(int)paramLong];
    c(arrayOfByte);
    return arrayOfByte;
  }

  public final boolean equals(Object paramObject)
  {
    long l1 = 0L;
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof f))
      return false;
    f localf = (f)paramObject;
    if (this.b != localf.b)
      return false;
    if (this.b == l1)
      return true;
    v localv1 = this.a;
    v localv2 = localf.a;
    int i = localv1.b;
    int j = localv2.b;
    while (l1 < this.b)
    {
      long l2 = Math.min(localv1.c - i, localv2.c - j);
      int k = 0;
      while (k < l2)
      {
        byte[] arrayOfByte1 = localv1.a;
        int m = i + 1;
        int n = arrayOfByte1[i];
        byte[] arrayOfByte2 = localv2.a;
        int i1 = j + 1;
        if (n != arrayOfByte2[j])
          return false;
        k++;
        j = i1;
        i = m;
      }
      if (i == localv1.c)
      {
        localv1 = localv1.f;
        i = localv1.b;
      }
      if (j == localv2.c)
      {
        localv2 = localv2.f;
        j = localv2.b;
      }
      l1 += l2;
    }
    return true;
  }

  public final byte f()
  {
    if (this.b == 0L)
      throw new IllegalStateException("size == 0");
    v localv = this.a;
    int i = localv.b;
    int j = localv.c;
    byte[] arrayOfByte = localv.a;
    int k = i + 1;
    int m = arrayOfByte[i];
    this.b -= 1L;
    if (k == j)
    {
      this.a = localv.a();
      w.a(localv);
      return m;
    }
    localv.b = k;
    return m;
  }

  public final void f(long paramLong)
  {
    while (paramLong > 0L)
    {
      if (this.a == null)
        throw new EOFException();
      int i = (int)Math.min(paramLong, this.a.c - this.a.b);
      this.b -= i;
      paramLong -= i;
      v localv1 = this.a;
      localv1.b = (i + localv1.b);
      if (this.a.b != this.a.c)
        continue;
      v localv2 = this.a;
      this.a = localv2.a();
      w.a(localv2);
    }
  }

  public final void flush()
  {
  }

  public final f g(long paramLong)
  {
    if (paramLong == 0L)
      return b(48);
    int i = 1 + Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4;
    v localv = e(i);
    byte[] arrayOfByte = localv.a;
    int j = -1 + (i + localv.c);
    int k = localv.c;
    while (j >= k)
    {
      arrayOfByte[j] = c[(int)(0xF & paramLong)];
      paramLong >>>= 4;
      j--;
    }
    localv.c = (i + localv.c);
    this.b += i;
    return this;
  }

  public final short g()
  {
    if (this.b < 2L)
      throw new IllegalStateException("size < 2: " + this.b);
    v localv = this.a;
    int i = localv.b;
    int j = localv.c;
    if (j - i < 2)
      return (short)((0xFF & f()) << 8 | 0xFF & f());
    byte[] arrayOfByte = localv.a;
    int k = i + 1;
    int m = (0xFF & arrayOfByte[i]) << 8;
    int n = k + 1;
    int i1 = m | 0xFF & arrayOfByte[k];
    this.b -= 2L;
    if (n == j)
    {
      this.a = localv.a();
      w.a(localv);
    }
    while (true)
    {
      return (short)i1;
      localv.b = n;
    }
  }

  public final int h()
  {
    if (this.b < 4L)
      throw new IllegalStateException("size < 4: " + this.b);
    v localv = this.a;
    int i = localv.b;
    int j = localv.c;
    if (j - i < 4)
      return (0xFF & f()) << 24 | (0xFF & f()) << 16 | (0xFF & f()) << 8 | 0xFF & f();
    byte[] arrayOfByte = localv.a;
    int k = i + 1;
    int m = (0xFF & arrayOfByte[i]) << 24;
    int n = k + 1;
    int i1 = m | (0xFF & arrayOfByte[k]) << 16;
    int i2 = n + 1;
    int i3 = i1 | (0xFF & arrayOfByte[n]) << 8;
    int i4 = i2 + 1;
    int i5 = i3 | 0xFF & arrayOfByte[i2];
    this.b -= 4L;
    if (i4 == j)
    {
      this.a = localv.a();
      w.a(localv);
      return i5;
    }
    localv.b = i4;
    return i5;
  }

  public final int hashCode()
  {
    v localv = this.a;
    if (localv == null)
      return 0;
    int i = 1;
    do
    {
      int j = localv.b;
      int k = localv.c;
      while (j < k)
      {
        int m = i * 31 + localv.a[j];
        j++;
        i = m;
      }
      localv = localv.f;
    }
    while (localv != this.a);
    return i;
  }

  public final short i()
  {
    return B.a(g());
  }

  public final int j()
  {
    return B.a(h());
  }

  public final long k()
  {
    if (this.b == 0L)
      throw new IllegalStateException("size == 0");
    long l1 = 0L;
    int i = 0;
    int j = 0;
    label286: label322: 
    while (true)
    {
      v localv = this.a;
      byte[] arrayOfByte = localv.a;
      int k = localv.b;
      int m = localv.c;
      int n = k;
      int i2;
      if (n < m)
      {
        int i1 = arrayOfByte[n];
        if ((i1 >= 48) && (i1 <= 57))
          i2 = i1 - 48;
        while (true)
        {
          if ((0x0 & l1) == 0L)
            break label286;
          f localf = new f().g(l1).b(i1);
          throw new NumberFormatException("Number too large: " + localf.m());
          if ((i1 >= 97) && (i1 <= 102))
          {
            i2 = 10 + (i1 - 97);
            continue;
          }
          if ((i1 < 65) || (i1 > 70))
            break;
          i2 = 10 + (i1 - 65);
        }
        if (i == 0)
          throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(i1));
        j = 1;
      }
      if (n == m)
      {
        this.a = localv.a();
        w.a(localv);
      }
      while (true)
      {
        if ((j == 0) && (this.a != null))
          break label322;
        this.b -= i;
        return l1;
        long l2 = l1 << 4 | i2;
        int i3 = n + 1;
        i++;
        n = i3;
        l1 = l2;
        break;
        localv.b = n;
      }
    }
  }

  public final ByteString l()
  {
    return new ByteString(o());
  }

  public final String m()
  {
    try
    {
      String str = a(this.b, B.a);
      return str;
    }
    catch (EOFException localEOFException)
    {
    }
    throw new AssertionError(localEOFException);
  }

  public final String n()
  {
    long l = a(10, 0L);
    if (l == -1L)
    {
      f localf = new f();
      a(localf, 0L, Math.min(32L, this.b));
      throw new EOFException("\\n not found: size=" + this.b + " content=" + localf.l().hex() + "...");
    }
    return d(l);
  }

  public final byte[] o()
  {
    try
    {
      byte[] arrayOfByte = e(this.b);
      return arrayOfByte;
    }
    catch (EOFException localEOFException)
    {
    }
    throw new AssertionError(localEOFException);
  }

  public final void p()
  {
    try
    {
      f(this.b);
      return;
    }
    catch (EOFException localEOFException)
    {
    }
    throw new AssertionError(localEOFException);
  }

  public final ByteString q()
  {
    if (this.b > 2147483647L)
      throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.b);
    int i = (int)this.b;
    if (i == 0)
      return ByteString.EMPTY;
    return new SegmentedByteString(this, i);
  }

  public final String toString()
  {
    if (this.b == 0L)
      return "Buffer[size=0]";
    if (this.b <= 16L)
    {
      ByteString localByteString = s().l();
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.b);
      arrayOfObject2[1] = localByteString.hex();
      return String.format("Buffer[size=%s data=%s]", arrayOfObject2);
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(this.a.a, this.a.b, this.a.c - this.a.b);
      for (v localv = this.a.f; localv != this.a; localv = localv.f)
        localMessageDigest.update(localv.a, localv.b, localv.c - localv.b);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Long.valueOf(this.b);
      arrayOfObject1[1] = ByteString.of(localMessageDigest.digest()).hex();
      String str = String.format("Buffer[size=%s md5=%s]", arrayOfObject1);
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    throw new AssertionError();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.f
 * JD-Core Version:    0.6.0
 */