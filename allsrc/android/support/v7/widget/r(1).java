package android.support.v7.widget;

final class r
{
  private long a = 0L;
  private r b;

  private void b()
  {
    if (this.b == null)
      this.b = new r();
  }

  private void e(int paramInt)
  {
    if (paramInt >= 64)
    {
      if (this.b != null)
        this.b.e(paramInt - 64);
      return;
    }
    this.a &= (0xFFFFFFFF ^ 1L << paramInt);
  }

  final void a()
  {
    while (true)
    {
      this.a = 0L;
      if (this.b == null)
        break;
      this = this.b;
    }
  }

  final void a(int paramInt)
  {
    if (paramInt >= 64)
    {
      b();
      this.b.a(paramInt - 64);
      return;
    }
    this.a |= 1L << paramInt;
  }

  final void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt >= 64)
    {
      b();
      this.b.a(paramInt - 64, paramBoolean);
    }
    label38: label111: label117: 
    while (true)
    {
      return;
      boolean bool;
      if ((0x0 & this.a) != 0L)
      {
        bool = true;
        long l = (1L << paramInt) - 1L;
        this.a = (l & this.a | (this.a & (l ^ 0xFFFFFFFF)) << 1);
        if (!paramBoolean)
          break label111;
        a(paramInt);
      }
      while (true)
      {
        if ((!bool) && (this.b == null))
          break label117;
        b();
        this = this.b;
        paramBoolean = bool;
        paramInt = 0;
        break;
        bool = false;
        break label38;
        e(paramInt);
      }
    }
  }

  final boolean b(int paramInt)
  {
    while (paramInt >= 64)
    {
      b();
      this = this.b;
      paramInt -= 64;
    }
    return (this.a & 1L << paramInt) != 0L;
  }

  final boolean c(int paramInt)
  {
    while (paramInt >= 64)
    {
      b();
      this = this.b;
      paramInt -= 64;
    }
    long l1 = 1L << paramInt;
    if ((l1 & this.a) != 0L);
    for (int i = 1; ; i = 0)
    {
      this.a &= (l1 ^ 0xFFFFFFFF);
      long l2 = l1 - 1L;
      this.a = (l2 & this.a | Long.rotateRight(this.a & (l2 ^ 0xFFFFFFFF), 1));
      if (this.b != null)
      {
        if (this.b.b(0))
          a(63);
        this.b.c(0);
      }
      return i;
    }
  }

  final int d(int paramInt)
  {
    if (this.b == null)
    {
      if (paramInt >= 64)
        return Long.bitCount(this.a);
      return Long.bitCount(this.a & (1L << paramInt) - 1L);
    }
    if (paramInt < 64)
      return Long.bitCount(this.a & (1L << paramInt) - 1L);
    return this.b.d(paramInt - 64) + Long.bitCount(this.a);
  }

  public final String toString()
  {
    if (this.b == null)
      return Long.toBinaryString(this.a);
    return this.b.toString() + "xx" + Long.toBinaryString(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.r
 * JD-Core Version:    0.6.0
 */