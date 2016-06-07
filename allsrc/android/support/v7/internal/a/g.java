package android.support.v7.internal.a;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v7.internal.widget.ActionBarContainer;
import android.view.View;

final class g extends ViewPropertyAnimatorListenerAdapter
{
  g(e parame)
  {
  }

  public final void onAnimationEnd(View paramView)
  {
    e.a(this.a, null);
    e.c(this.a).requestLayout();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.a.g
 * JD-Core Version:    0.6.0
 */