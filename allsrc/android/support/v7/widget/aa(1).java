package android.support.v7.widget;

import android.view.View;

final class aa extends Z
{
  aa(ao paramao)
  {
    super(paramao, 0);
  }

  public final int a(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    return paramView.getLeft() - ao.g(paramView) - localap.leftMargin;
  }

  public final void a(int paramInt)
  {
    this.a.c(paramInt);
  }

  public final int b(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    return paramView.getRight() + ao.h(paramView) + localap.rightMargin;
  }

  public final int c()
  {
    return this.a.k();
  }

  public final int c(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    return ao.c(paramView) + localap.leftMargin + localap.rightMargin;
  }

  public final int d()
  {
    return this.a.i() - this.a.m();
  }

  public final int d(View paramView)
  {
    ap localap = (ap)paramView.getLayoutParams();
    return ao.d(paramView) + localap.topMargin + localap.bottomMargin;
  }

  public final int e()
  {
    return this.a.i();
  }

  public final int f()
  {
    return this.a.i() - this.a.k() - this.a.m();
  }

  public final int g()
  {
    return this.a.m();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aa
 * JD-Core Version:    0.6.0
 */