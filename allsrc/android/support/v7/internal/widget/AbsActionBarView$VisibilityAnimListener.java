package android.support.v7.internal.widget;

import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v7.widget.ActionMenuView;
import android.view.View;

public class AbsActionBarView$VisibilityAnimListener
  implements ViewPropertyAnimatorListener
{
  private boolean a = false;
  private int b;

  protected AbsActionBarView$VisibilityAnimListener(AbsActionBarView paramAbsActionBarView)
  {
  }

  public final VisibilityAnimListener a(ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, int paramInt)
  {
    this.c.g = paramViewPropertyAnimatorCompat;
    this.b = paramInt;
    return this;
  }

  public void onAnimationCancel(View paramView)
  {
    this.a = true;
  }

  public void onAnimationEnd(View paramView)
  {
    if (this.a);
    do
    {
      return;
      this.c.g = null;
      this.c.setVisibility(this.b);
    }
    while ((this.c.d == null) || (this.c.b == null));
    this.c.b.setVisibility(this.b);
  }

  public void onAnimationStart(View paramView)
  {
    this.c.setVisibility(0);
    this.a = false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.AbsActionBarView.VisibilityAnimListener
 * JD-Core Version:    0.6.0
 */