package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class m
  implements y
{
  private int a = 0;
  private final i b;
  private final Inflater c;
  private final n d;
  private final CRC32 e = new CRC32();

  public m(y paramy)
  {
    if (paramy == null)
      throw new IllegalArgumentException("source == null");
    this.c = new Inflater(true);
    this.b = o.a(paramy);
    this.d = new n(this.b, this.c);
  }

  private static void a(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 != paramInt1)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      arrayOfObject[2] = Integer.valueOf(paramInt1);
      throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", arrayOfObject));
    }
  }

  private void a(f paramf, long paramLong1, long paramLong2)
  {
    for (v localv = paramf.a; paramLong1 >= localv.c - localv.b; localv = localv.f)
      paramLong1 -= localv.c - localv.b;
    while (paramLong2 > 0L)
    {
      int i = (int)(paramLong1 + localv.b);
      int j = (int)Math.min(localv.c - i, paramLong2);
      this.e.update(localv.a, i, j);
      paramLong2 -= j;
      localv = localv.f;
      paramLong1 = 0L;
    }
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (paramLong == 0L)
      return 0L;
    if (this.a == 0)
    {
      this.b.a(10L);
      int i = this.b.c().b(3L);
      int j;
      if ((0x1 & i >> 1) == 1)
        j = 1;
      while (true)
      {
        if (j != 0)
          a(this.b.c(), 0L, 10L);
        a("ID1ID2", 8075, this.b.g());
        this.b.f(8L);
        if ((0x1 & i >> 2) == 1)
        {
          this.b.a(2L);
          if (j != 0)
            a(this.b.c(), 0L, 2L);
          int k = this.b.c().i();
          this.b.a(k);
          if (j != 0)
            a(this.b.c(), 0L, k);
          this.b.f(k);
        }
        if ((0x1 & i >> 3) != 1)
          break;
        long l4 = this.b.a(0);
        if (l4 == -1L)
        {
          throw new EOFException();
          j = 0;
          continue;
        }
        if (j != 0)
          a(this.b.c(), 0L, 1L + l4);
        this.b.f(1L + l4);
      }
      if ((0x1 & i >> 4) == 1)
      {
        long l3 = this.b.a(0);
        if (l3 == -1L)
          throw new EOFException();
        if (j != 0)
          a(this.b.c(), 0L, 1L + l3);
        this.b.f(1L + l3);
      }
      if (j != 0)
      {
        a("FHCRC", this.b.i(), (short)(int)this.e.getValue());
        this.e.reset();
      }
      this.a = 1;
    }
    if (this.a == 1)
    {
      long l1 = paramf.b;
      long l2 = this.d.a(paramf, paramLong);
      if (l2 != -1L)
      {
        a(paramf, l1, l2);
        return l2;
      }
      this.a = 2;
    }
    if (this.a == 2)
    {
      a("CRC", this.b.j(), (int)this.e.getValue());
      a("ISIZE", this.b.j(), this.c.getTotalOut());
      this.a = 3;
      if (!this.b.d())
        throw new IOException("gzip finished without exhausting source");
    }
    return -1L;
  }

  public final z a()
  {
    return this.b.a();
  }

  public final void close()
  {
    this.d.close();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.m
 * JD-Core Version:    0.6.0
 */