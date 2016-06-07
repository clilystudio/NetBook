package com.nostra13.universalimageloader.core.assist;

public final class c
{
  private final int a;
  private final int b;

  public c(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public c(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 % 180 == 0)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      return;
    }
    this.a = paramInt2;
    this.b = paramInt1;
  }

  public final int a()
  {
    return this.a;
  }

  public final c a(float paramFloat)
  {
    return new c((int)(paramFloat * this.a), (int)(paramFloat * this.b));
  }

  public final c a(int paramInt)
  {
    return new c(this.a / paramInt, this.b / paramInt);
  }

  public final int b()
  {
    return this.b;
  }

  public final String toString()
  {
    return 9 + this.a + "x" + this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.assist.c
 * JD-Core Version:    0.6.0
 */