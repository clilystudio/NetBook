package u.aly;

import java.io.ByteArrayOutputStream;

public final class bF
{
  private final ByteArrayOutputStream a = new ByteArrayOutputStream();
  private final bX b = new bX(this.a);
  private bN c;

  public bF()
  {
    this(new cs.a());
  }

  private bF(da paramda)
  {
    this.c = paramda.a(this.b);
  }

  public final byte[] a(bz parambz)
  {
    this.a.reset();
    parambz.b(this.c);
    return this.a.toByteArray();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bF
 * JD-Core Version:    0.6.0
 */