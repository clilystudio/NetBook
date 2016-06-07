package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;

final class z extends E
{
  z(t paramt, ay paramay, int paramInt1, int paramInt2, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    super(0);
  }

  public final void onAnimationCancel(View paramView)
  {
    if (this.b != 0)
      ViewCompat.setTranslationX(paramView, 0.0F);
    if (this.c != 0)
      ViewCompat.setTranslationY(paramView, 0.0F);
  }

  public final void onAnimationEnd(View paramView)
  {
    this.d.setListener(null);
    this.e.e(this.a);
    t.g(this.e).remove(this.a);
    t.e(this.e);
  }

  public final void onAnimationStart(View paramView)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.z
 * JD-Core Version:    0.6.0
 */