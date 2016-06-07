package android.support.design.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;

class F extends A
{
  private boolean g;

  F(View paramView, N paramN)
  {
    super(paramView, paramN);
  }

  final void b()
  {
    if (this.g)
      return;
    this.e.animate().scaleX(0.0F).scaleY(0.0F).alpha(0.0F).setDuration(200L).setInterpolator(a.b).setListener(new G(this));
  }

  final void c()
  {
    this.e.animate().scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setDuration(200L).setInterpolator(a.b).setListener(null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.F
 * JD-Core Version:    0.6.0
 */