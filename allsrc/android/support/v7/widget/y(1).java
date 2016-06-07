package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;

final class y extends E
{
  y(t paramt, ay paramay, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    super(0);
  }

  public final void onAnimationCancel(View paramView)
  {
    ViewCompat.setAlpha(paramView, 1.0F);
  }

  public final void onAnimationEnd(View paramView)
  {
    this.b.setListener(null);
    this.c.f(this.a);
    t.f(this.c).remove(this.a);
    t.e(this.c);
  }

  public final void onAnimationStart(View paramView)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.y
 * JD-Core Version:    0.6.0
 */