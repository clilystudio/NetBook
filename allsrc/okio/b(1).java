package okio;

import java.io.IOException;

final class b
  implements x
{
  b(a parama, x paramx)
  {
  }

  public final z a()
  {
    return this.b;
  }

  public final void a_(f paramf, long paramLong)
  {
    this.b.c();
    try
    {
      this.a.a_(paramf, paramLong);
      this.b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw this.b.a(localIOException);
    }
    finally
    {
      this.b.a(false);
    }
    throw localObject;
  }

  public final void close()
  {
    this.b.c();
    try
    {
      this.a.close();
      this.b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw this.b.a(localIOException);
    }
    finally
    {
      this.b.a(false);
    }
    throw localObject;
  }

  public final void flush()
  {
    this.b.c();
    try
    {
      this.a.flush();
      this.b.a(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw this.b.a(localIOException);
    }
    finally
    {
      this.b.a(false);
    }
    throw localObject;
  }

  public final String toString()
  {
    return "AsyncTimeout.sink(" + this.a + ")";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.b
 * JD-Core Version:    0.6.0
 */