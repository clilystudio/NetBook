package android.support.v7.widget;

import android.view.View;

final class ab extends Z
{
  ab(ao paramao)
  {
    super(paramao, 0);
  }

  public final int a(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    return paramView.getTop() - ao.e(paramView) - localap.topMargin;
  }

  public final void a(int paramInt)
  {
    this.a.d(paramInt);
  }

  public final int b(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    return paramView.getBottom() + ao.f(paramView) + localap.bottomMargin;
  }

  public final int c()
  {
    return this.a.l();
  }

  public final int c(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    return ao.d(paramView) + localap.topMargin + localap.bottomMargin;
  }

  public final int d()
  {
    return this.a.j() - this.a.n();
  }

  public final int d(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    return ao.c(paramView) + localap.leftMargin + localap.rightMargin;
  }

  public final int e()
  {
    return this.a.j();
  }

  public final int f()
  {
    return this.a.j() - this.a.l() - this.a.n();
  }

  public final int g()
  {
    return this.a.n();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ab
 * JD-Core Version:    0.6.0
 */