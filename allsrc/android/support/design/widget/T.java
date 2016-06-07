package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

final class T extends ViewPropertyAnimatorListenerAdapter
{
  T(Snackbar paramSnackbar)
  {
  }

  public final void onAnimationEnd(View paramView)
  {
    Snackbar.d(this.a);
  }

  public final void onAnimationStart(View paramView)
  {
    Snackbar.c(this.a).b(0, 180);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.T
 * JD-Core Version:    0.6.0
 */