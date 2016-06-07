package android.support.v7.internal.widget;

import android.support.v4.view.ViewPropertyAnimatorListener;
import android.view.View;

public class ScrollingTabContainerView$VisibilityAnimListener
  implements ViewPropertyAnimatorListener
{
  private boolean a = false;

  protected ScrollingTabContainerView$VisibilityAnimListener(ScrollingTabContainerView paramScrollingTabContainerView)
  {
  }

  public void onAnimationCancel(View paramView)
  {
    this.a = true;
  }

  public void onAnimationEnd(View paramView)
  {
    if (this.a)
      return;
    this.b.c = null;
    this.b.setVisibility(0);
  }

  public void onAnimationStart(View paramView)
  {
    this.b.setVisibility(0);
    this.a = false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ScrollingTabContainerView.VisibilityAnimListener
 * JD-Core Version:    0.6.0
 */