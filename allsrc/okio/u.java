package okio;

import java.io.IOException;
import java.io.InputStream;

final class u extends InputStream
{
  u(t paramt)
  {
  }

  public final int available()
  {
    if (t.a(this.a))
      throw new IOException("closed");
    return (int)Math.min(this.a.a.b, 2147483647L);
  }

  public final void close()
  {
    this.a.close();
  }

  public final int read()
  {
    if (t.a(this.a))
      throw new IOException("closed");
    if ((this.a.a.b == 0L) && (this.a.b.a(this.a.a, 2048L) == -1L))
      return -1;
    return 0xFF & this.a.a.f();
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (t.a(this.a))
      throw new IOException("closed");
    B.a(paramArrayOfByte.length, paramInt1, paramInt2);
    if ((this.a.a.b == 0L) && (this.a.b.a(this.a.a, 2048L) == -1L))
      return -1;
    return this.a.a.a(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final String toString()
  {
    return this.a + ".inputStream()";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     okio.u
 * JD-Core Version:    0.6.0
 */