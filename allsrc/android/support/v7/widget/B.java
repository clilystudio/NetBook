package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;

final class B extends E
{
  B(t paramt, C paramC, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    super(0);
  }

  public final void onAnimationEnd(View paramView)
  {
    this.b.setListener(null);
    ViewCompat.setAlpha(this.c, 1.0F);
    ViewCompat.setTranslationX(this.c, 0.0F);
    ViewCompat.setTranslationY(this.c, 0.0F);
    this.d.a(this.a.b, false);
    t.h(this.d).remove(this.a.b);
    t.e(this.d);
  }

  public final void onAnimationStart(View paramView)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.B
 * JD-Core Version:    0.6.0
 */