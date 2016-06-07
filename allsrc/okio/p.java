package okio;

import java.io.OutputStream;

final class p
  implements x
{
  p(z paramz, OutputStream paramOutputStream)
  {
  }

  public final z a()
  {
    return this.a;
  }

  public final void a_(f paramf, long paramLong)
  {
    B.a(paramf.b, 0L, paramLong);
    while (paramLong > 0L)
    {
      this.a.g();
      v localv = paramf.a;
      int i = (int)Math.min(paramLong, localv.c - localv.b);
      this.b.write(localv.a, localv.b, i);
      localv.b = (i + localv.b);
      paramLong -= i;
      paramf.b -= i;
      if (localv.b != localv.c)
        continue;
      paramf.a = localv.a();
      w.a(localv);
    }
  }

  public final void close()
  {
    this.b.close();
  }

  public final void flush()
  {
    this.b.flush();
  }

  public final String toString()
  {
    return "sink(" + this.b + ")";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.p
 * JD-Core Version:    0.6.0
 */