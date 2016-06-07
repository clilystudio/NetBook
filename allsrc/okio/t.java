package okio;

import java.io.EOFException;
import java.io.InputStream;

final class t
  implements i
{
  public final f a;
  public final y b;
  private boolean c;

  public t(y paramy)
  {
    this(paramy, new f());
  }

  private t(y paramy, f paramf)
  {
    if (paramy == null)
      throw new IllegalArgumentException("source == null");
    this.a = paramf;
    this.b = paramy;
  }

  private boolean b(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.c)
      throw new IllegalStateException("closed");
    while (this.a.b < paramLong)
      if (this.b.a(this.a, 2048L) == -1L)
        return false;
    return true;
  }

  public final long a(byte paramByte)
  {
    long l1 = 0L;
    if (this.c)
      throw new IllegalStateException("closed");
    long l2;
    while (l1 >= this.a.b)
    {
      if (this.b.a(this.a, 2048L) != -1L)
        continue;
      l2 = -1L;
      return l2;
    }
    do
    {
      l2 = this.a.a(paramByte, l1);
      if (l2 != -1L)
        break;
      l1 = this.a.b;
    }
    while (this.b.a(this.a, 2048L) != -1L);
    return -1L;
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramf == null)
      throw new IllegalArgumentException("sink == null");
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.c)
      throw new IllegalStateException("closed");
    if ((this.a.b == 0L) && (this.b.a(this.a, 2048L) == -1L))
      return -1L;
    long l = Math.min(paramLong, this.a.b);
    return this.a.a(paramf, l);
  }

  public final z a()
  {
    return this.b.a();
  }

  public final void a(long paramLong)
  {
    if (!b(paramLong))
      throw new EOFException();
  }

  public final ByteString c(long paramLong)
  {
    a(paramLong);
    return this.a.c(paramLong);
  }

  public final f c()
  {
    return this.a;
  }

  public final void close()
  {
    if (this.c)
      return;
    this.c = true;
    this.b.close();
    this.a.p();
  }

  public final boolean d()
  {
    if (this.c)
      throw new IllegalStateException("closed");
    return (this.a.d()) && (this.b.a(this.a, 2048L) == -1L);
  }

  public final InputStream e()
  {
    return new u(this);
  }

  public final byte[] e(long paramLong)
  {
    a(paramLong);
    return this.a.e(paramLong);
  }

  public final byte f()
  {
    a(1L);
    return this.a.f();
  }

  public final void f(long paramLong)
  {
    if (this.c)
      throw new IllegalStateException("closed");
    while (true)
    {
      long l = Math.min(paramLong, this.a.b);
      this.a.f(l);
      paramLong -= l;
      if (paramLong <= 0L)
        break;
      if ((this.a.b != 0L) || (this.b.a(this.a, 2048L) != -1L))
        continue;
      throw new EOFException();
    }
  }

  public final short g()
  {
    a(2L);
    return this.a.g();
  }

  public final int h()
  {
    a(4L);
    return this.a.h();
  }

  public final short i()
  {
    a(2L);
    return this.a.i();
  }

  public final int j()
  {
    a(4L);
    return this.a.j();
  }

  public final long k()
  {
    a(1L);
    for (int i = 0; b(i + 1); i++)
    {
      byte b1 = this.a.b(i);
      if (((b1 >= 48) && (b1 <= 57)) || ((b1 >= 97) && (b1 <= 102)) || ((b1 >= 65) && (b1 <= 70)))
        continue;
      if (i != 0)
        break;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Byte.valueOf(b1);
      throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", arrayOfObject));
    }
    return this.a.k();
  }

  public final String n()
  {
    long l = a(10);
    if (l == -1L)
    {
      f localf = new f();
      this.a.a(localf, 0L, Math.min(32L, this.a.b));
      throw new EOFException("\\n not found: size=" + this.a.b + " content=" + localf.l().hex() + "...");
    }
    return this.a.d(l);
  }

  public final byte[] o()
  {
    this.a.a(this.b);
    return this.a.o();
  }

  public final String toString()
  {
    return "buffer(" + this.b + ")";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.t
 * JD-Core Version:    0.6.0
 */