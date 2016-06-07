package org.mozilla.universalchardet.prober.b;

public abstract class b
{
  protected int[] a;
  protected float b;
  private int c;
  private int d;

  public b()
  {
    b();
  }

  public final float a()
  {
    float f;
    if ((this.d <= 0) || (this.c <= 4))
      f = 0.01F;
    do
    {
      return f;
      if (this.d == this.c)
        break;
      f = this.c / (this.d - this.c) * this.b;
    }
    while (f < 0.99F);
    return 0.99F;
  }

  protected abstract int a(byte[] paramArrayOfByte, int paramInt);

  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = -1;
    if (paramInt2 == 2)
      i = a(paramArrayOfByte, paramInt1);
    if (i >= 0)
    {
      this.d = (1 + this.d);
      if ((i < this.a.length) && (512 > this.a[i]))
        this.c = (1 + this.c);
    }
  }

  public final void b()
  {
    this.d = 0;
    this.c = 0;
  }

  public final boolean c()
  {
    return this.d > 1024;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.prober.b.b
 * JD-Core Version:    0.6.0
 */