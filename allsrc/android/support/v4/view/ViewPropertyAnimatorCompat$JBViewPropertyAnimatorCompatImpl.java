package android.support.v4.view;

import android.view.View;

class ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl extends ViewPropertyAnimatorCompat.ICSViewPropertyAnimatorCompatImpl
{
  public void setListener(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, ViewPropertyAnimatorListener paramViewPropertyAnimatorListener)
  {
    ViewPropertyAnimatorCompatJB.setListener(paramView, paramViewPropertyAnimatorListener);
  }

  public void withEndAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable)
  {
    ViewPropertyAnimatorCompatJB.withEndAction(paramView, paramRunnable);
  }

  public void withLayer(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    ViewPropertyAnimatorCompatJB.withLayer(paramView);
  }

  public void withStartAction(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView, Runnable paramRunnable)
  {
    ViewPropertyAnimatorCompatJB.withStartAction(paramView, paramRunnable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompat.JBViewPropertyAnimatorCompatImpl
 * JD-Core Version:    0.6.0
 */