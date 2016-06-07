package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class n
  implements y
{
  private final i a;
  private final Inflater b;
  private int c;
  private boolean d;

  n(i parami, Inflater paramInflater)
  {
    if (parami == null)
      throw new IllegalArgumentException("source == null");
    if (paramInflater == null)
      throw new IllegalArgumentException("inflater == null");
    this.a = parami;
    this.b = paramInflater;
  }

  public n(y paramy, Inflater paramInflater)
  {
    this(o.a(paramy), paramInflater);
  }

  private void c()
  {
    if (this.c == 0)
      return;
    int i = this.c - this.b.getRemaining();
    this.c -= i;
    this.a.f(i);
  }

  public final long a(f paramf, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.d)
      throw new IllegalStateException("closed");
    if (paramLong == 0L)
      return 0L;
    while (true)
    {
      boolean bool = b();
      try
      {
        v localv = paramf.e(1);
        int i = this.b.inflate(localv.a, localv.c, 2048 - localv.c);
        if (i > 0)
        {
          localv.c = (i + localv.c);
          paramf.b += i;
          return i;
        }
        if ((this.b.finished()) || (this.b.needsDictionary()))
        {
          c();
          if (localv.b != localv.c)
            break;
          paramf.a = localv.a();
          w.a(localv);
        }
        else
        {
          if (!bool)
            continue;
          throw new EOFException("source exhausted prematurely");
        }
      }
      catch (DataFormatException localDataFormatException)
      {
        throw new IOException(localDataFormatException);
      }
    }
    return -1L;
  }

  public final z a()
  {
    return this.a.a();
  }

  public final boolean b()
  {
    if (!this.b.needsInput())
      return false;
    c();
    if (this.b.getRemaining() != 0)
      throw new IllegalStateException("?");
    if (this.a.d())
      return true;
    v localv = this.a.c().a;
    this.c = (localv.c - localv.b);
    this.b.setInput(localv.a, localv.b, this.c);
    return false;
  }

  public final void close()
  {
    if (this.d)
      return;
    this.b.end();
    this.d = true;
    this.a.close();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.n
 * JD-Core Version:    0.6.0
 */