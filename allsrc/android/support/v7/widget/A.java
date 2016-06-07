package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;

final class A extends E
{
  A(t paramt, C paramC, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    super(0);
  }

  public final void onAnimationEnd(View paramView)
  {
    this.b.setListener(null);
    ViewCompat.setAlpha(paramView, 1.0F);
    ViewCompat.setTranslationX(paramView, 0.0F);
    ViewCompat.setTranslationY(paramView, 0.0F);
    this.c.a(this.a.a, true);
    t.h(this.c).remove(this.a.a);
    t.e(this.c);
  }

  public final void onAnimationStart(View paramView)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.A
 * JD-Core Version:    0.6.0
 */