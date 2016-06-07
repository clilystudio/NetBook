package u.aly;

public class cr$a
  implements da
{
  protected boolean a = false;
  protected boolean b = true;
  protected int c;

  public cr$a()
  {
    this(false, true);
  }

  public cr$a(boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramBoolean1, paramBoolean2, 0);
  }

  public cr$a(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    this.a = paramBoolean1;
    this.b = paramBoolean2;
    this.c = paramInt;
  }

  public bN a(bZ parambZ)
  {
    cr localcr = new cr(parambZ, this.a, this.b);
    if (this.c != 0)
      localcr.b(this.c);
    return localcr;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.cr.a
 * JD-Core Version:    0.6.0
 */