package u.aly;

public final class bY extends bZ
{
  private byte[] a;
  private int b;
  private int c;

  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = d();
    if (paramInt2 > i)
      paramInt2 = i;
    if (paramInt2 > 0)
    {
      System.arraycopy(this.a, this.b, paramArrayOfByte, paramInt1, paramInt2);
      a(paramInt2);
    }
    return paramInt2;
  }

  public final void a()
  {
    this.a = null;
  }

  public final void a(int paramInt)
  {
    this.b = (paramInt + this.b);
  }

  public final void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("No writing allowed!");
  }

  public final byte[] b()
  {
    return this.a;
  }

  public final int c()
  {
    return this.b;
  }

  public final void c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.b = 0;
    this.c = (paramInt2 + 0);
  }

  public final int d()
  {
    return this.c - this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bY
 * JD-Core Version:    0.6.0
 */