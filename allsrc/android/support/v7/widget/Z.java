package android.support.v7.widget;

import android.view.View;

public abstract class Z
{
  protected final ao a;
  private int b = -2147483648;

  private Z(ao paramao)
  {
    this.a = paramao;
  }

  public static Z a(ao paramao, int paramInt)
  {
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("invalid orientation");
    case 0:
      return new aa(paramao);
    case 1:
    }
    return new ab(paramao);
  }

  public abstract int a(View paramView);

  public final void a()
  {
    this.b = f();
  }

  public abstract void a(int paramInt);

  public final int b()
  {
    if (-2147483648 == this.b)
      return 0;
    return f() - this.b;
  }

  public abstract int b(View paramView);

  public abstract int c();

  public abstract int c(View paramView);

  public abstract int d();

  public abstract int d(View paramView);

  public abstract int e();

  public abstract int f();

  public abstract int g();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.Z
 * JD-Core Version:    0.6.0
 */