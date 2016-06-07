package okio;

import java.io.OutputStream;
import java.util.Arrays;

final class SegmentedByteString extends ByteString
{
  final transient int[] directory;
  final transient byte[][] segments;

  SegmentedByteString(f paramf, int paramInt)
  {
    super(null);
    B.a(paramf.b, 0L, paramInt);
    v localv1 = paramf.a;
    int j = 0;
    int k = 0;
    while (k < paramInt)
    {
      if (localv1.c == localv1.b)
        throw new AssertionError("s.limit == s.pos");
      k += localv1.c - localv1.b;
      j++;
      localv1 = localv1.f;
    }
    this.segments = new byte[j][];
    this.directory = new int[j << 1];
    v localv2 = paramf.a;
    int m = 0;
    while (i < paramInt)
    {
      this.segments[m] = localv2.a;
      i += localv2.c - localv2.b;
      this.directory[m] = i;
      this.directory[(m + this.segments.length)] = localv2.b;
      localv2.d = true;
      m++;
      localv2 = localv2.f;
    }
  }

  private int a(int paramInt)
  {
    int i = Arrays.binarySearch(this.directory, 0, this.segments.length, paramInt + 1);
    if (i >= 0)
      return i;
    return i ^ 0xFFFFFFFF;
  }

  private ByteString a()
  {
    return new ByteString(toByteArray());
  }

  private Object writeReplace()
  {
    return a();
  }

  public final String base64()
  {
    return a().base64();
  }

  public final String base64Url()
  {
    return a().base64Url();
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    return ((paramObject instanceof ByteString)) && (((ByteString)paramObject).size() == size()) && (rangeEquals(0, (ByteString)paramObject, 0, size()));
  }

  public final byte getByte(int paramInt)
  {
    B.a(this.directory[(-1 + this.segments.length)], paramInt, 1L);
    int i = a(paramInt);
    if (i == 0);
    for (int j = 0; ; j = this.directory[(i - 1)])
    {
      int k = this.directory[(i + this.segments.length)];
      return this.segments[i][(k + (paramInt - j))];
    }
  }

  public final int hashCode()
  {
    int i = this.hashCode;
    if (i != 0)
      return i;
    int j = 1;
    int k = this.segments.length;
    int m = 0;
    int n = 0;
    while (m < k)
    {
      byte[] arrayOfByte = this.segments[m];
      int i1 = this.directory[(k + m)];
      int i2 = this.directory[m];
      int i3 = i1 + (i2 - n);
      int i4 = j;
      for (int i5 = i1; i5 < i3; i5++)
        i4 = i4 * 31 + arrayOfByte[i5];
      m++;
      n = i2;
      j = i4;
    }
    this.hashCode = j;
    return j;
  }

  public final String hex()
  {
    return a().hex();
  }

  public final ByteString md5()
  {
    return a().md5();
  }

  public final boolean rangeEquals(int paramInt1, ByteString paramByteString, int paramInt2, int paramInt3)
  {
    if (paramInt1 > size() - paramInt3)
      return false;
    int i = a(paramInt1);
    label20: if (paramInt3 > 0)
    {
      if (i == 0);
      for (int j = 0; ; j = this.directory[(i - 1)])
      {
        int k = Math.min(paramInt3, j + (this.directory[i] - j) - paramInt1);
        int m = this.directory[(i + this.segments.length)] + (paramInt1 - j);
        if (!paramByteString.rangeEquals(paramInt2, this.segments[i], m, k))
          break;
        paramInt1 += k;
        paramInt2 += k;
        paramInt3 -= k;
        i++;
        break label20;
      }
    }
    return true;
  }

  public final boolean rangeEquals(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    if ((paramInt1 > size() - paramInt3) || (paramInt2 > paramArrayOfByte.length - paramInt3))
      return false;
    int i = a(paramInt1);
    label29: if (paramInt3 > 0)
    {
      if (i == 0);
      for (int j = 0; ; j = this.directory[(i - 1)])
      {
        int k = Math.min(paramInt3, j + (this.directory[i] - j) - paramInt1);
        int m = this.directory[(i + this.segments.length)] + (paramInt1 - j);
        if (!B.a(this.segments[i], m, paramArrayOfByte, paramInt2, k))
          break;
        paramInt1 += k;
        paramInt2 += k;
        paramInt3 -= k;
        i++;
        break label29;
      }
    }
    return true;
  }

  public final ByteString sha256()
  {
    return a().sha256();
  }

  public final int size()
  {
    return this.directory[(-1 + this.segments.length)];
  }

  public final ByteString substring(int paramInt)
  {
    return a().substring(paramInt);
  }

  public final ByteString substring(int paramInt1, int paramInt2)
  {
    return a().substring(paramInt1, paramInt2);
  }

  public final ByteString toAsciiLowercase()
  {
    return a().toAsciiLowercase();
  }

  public final ByteString toAsciiUppercase()
  {
    return a().toAsciiUppercase();
  }

  public final byte[] toByteArray()
  {
    int i = 0;
    byte[] arrayOfByte = new byte[this.directory[(-1 + this.segments.length)]];
    int j = this.segments.length;
    int n;
    for (int k = 0; i < j; k = n)
    {
      int m = this.directory[(j + i)];
      n = this.directory[i];
      System.arraycopy(this.segments[i], m, arrayOfByte, k, n - k);
      i++;
    }
    return arrayOfByte;
  }

  public final String toString()
  {
    return a().toString();
  }

  public final String utf8()
  {
    return a().utf8();
  }

  public final void write(OutputStream paramOutputStream)
  {
    int i = 0;
    if (paramOutputStream == null)
      throw new IllegalArgumentException("out == null");
    int j = this.segments.length;
    int n;
    for (int k = 0; i < j; k = n)
    {
      int m = this.directory[(j + i)];
      n = this.directory[i];
      paramOutputStream.write(this.segments[i], m, n - k);
      i++;
    }
  }

  final void write(f paramf)
  {
    int i = 0;
    int j = this.segments.length;
    int k = 0;
    if (i < j)
    {
      int m = this.directory[(j + i)];
      int n = this.directory[i];
      v localv = new v(this.segments[i], m, m + n - k);
      if (paramf.a == null)
      {
        localv.g = localv;
        localv.f = localv;
        paramf.a = localv;
      }
      while (true)
      {
        i++;
        k = n;
        break;
        paramf.a.g.a(localv);
      }
    }
    paramf.b += k;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.SegmentedByteString
 * JD-Core Version:    0.6.0
 */