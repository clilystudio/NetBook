package org.mozilla.universalchardet.prober.d;

public final class b
{
  private m a;
  private int b;
  private int c;
  private int d;

  public b(m paramm)
  {
    this.a = paramm;
    this.b = 0;
  }

  public final int a()
  {
    return this.c;
  }

  public final int a(byte paramByte)
  {
    int i = this.a.a(paramByte);
    if (this.b == 0)
    {
      this.d = 0;
      this.c = this.a.a(i);
    }
    this.b = this.a.a(i, this.b);
    this.d = (1 + this.d);
    return this.b;
  }

  public final void b()
  {
    this.b = 0;
  }

  public final String c()
  {
    return this.a.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.d.b
 * JD-Core Version:    0.6.0
 */