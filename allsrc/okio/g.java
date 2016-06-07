package okio;

import java.io.InputStream;

final class g extends InputStream
{
  g(f paramf)
  {
  }

  public final int available()
  {
    return (int)Math.min(this.a.b, 2147483647L);
  }

  public final void close()
  {
  }

  public final int read()
  {
    if (this.a.b > 0L)
      return 0xFF & this.a.f();
    return -1;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.a.a(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final String toString()
  {
    return this.a + ".inputStream()";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.g
 * JD-Core Version:    0.6.0
 */