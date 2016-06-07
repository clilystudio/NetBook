package okio;

import java.io.InputStream;

final class q
  implements y
{
  q(z paramz, InputStream paramInputStream)
  {
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (paramLong == 0L)
      return 0L;
    this.a.g();
    v localv = paramf.e(1);
    int i = (int)Math.min(paramLong, 2048 - localv.c);
    int j = this.b.read(localv.a, localv.c, i);
    if (j == -1)
      return -1L;
    localv.c = (j + localv.c);
    paramf.b += j;
    return j;
  }

  public final z a()
  {
    return this.a;
  }

  public final void close()
  {
    this.b.close();
  }

  public final String toString()
  {
    return "source(" + this.b + ")";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.q
 * JD-Core Version:    0.6.0
 */