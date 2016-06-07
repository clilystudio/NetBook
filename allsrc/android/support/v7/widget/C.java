package android.support.v7.widget;

final class C
{
  public ay a;
  public ay b;
  public int c;
  public int d;
  public int e;
  public int f;

  private C(ay paramay1, ay paramay2)
  {
    this.a = paramay1;
    this.b = paramay2;
  }

  private C(ay paramay1, ay paramay2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(paramay1, paramay2);
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
    this.f = paramInt4;
  }

  public final String toString()
  {
    return "ChangeInfo{oldHolder=" + this.a + ", newHolder=" + this.b + ", fromX=" + this.c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.C
 * JD-Core Version:    0.6.0
 */