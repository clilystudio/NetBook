package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;

final class x extends E
{
  x(t paramt, ay paramay, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    super(0);
  }

  public final void onAnimationEnd(View paramView)
  {
    this.b.setListener(null);
    ViewCompat.setAlpha(paramView, 1.0F);
    this.c.d(this.a);
    t.d(this.c).remove(this.a);
    t.e(this.c);
  }

  public final void onAnimationStart(View paramView)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.x
 * JD-Core Version:    0.6.0
 */