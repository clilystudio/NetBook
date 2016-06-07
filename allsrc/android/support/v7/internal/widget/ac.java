package android.support.v7.internal.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v7.widget.Toolbar;
import android.view.View;

final class ac extends ViewPropertyAnimatorListenerAdapter
{
  private boolean a = false;

  ac(aa paramaa)
  {
  }

  public final void onAnimationCancel(View paramView)
  {
    this.a = true;
  }

  public final void onAnimationEnd(View paramView)
  {
    if (!this.a)
      aa.a(this.b).setVisibility(8);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ac
 * JD-Core Version:    0.6.0
 */