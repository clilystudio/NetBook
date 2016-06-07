package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

final class R extends ViewPropertyAnimatorListenerAdapter
{
  R(Snackbar paramSnackbar)
  {
  }

  public final void onAnimationEnd(View paramView)
  {
    X.a().c(Snackbar.a(this.a));
  }

  public final void onAnimationStart(View paramView)
  {
    Snackbar.c(this.a).a(70, 180);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.R
 * JD-Core Version:    0.6.0
 */