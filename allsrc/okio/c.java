package okio;

import java.io.IOException;

final class c
  implements y
{
  c(a parama, y paramy)
  {
  }

  public final long a(f paramf, long paramLong)
  {
    this.b.c();
    try
    {
      long l = this.a.a(paramf, paramLong);
      this.b.a(true);
      return l;
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

  public final z a()
  {
    return this.b;
  }

  public final void close()
  {
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

  public final String toString()
  {
    return "AsyncTimeout.source(" + this.a + ")";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.c
 * JD-Core Version:    0.6.0
 */