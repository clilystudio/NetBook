package android.support.v7.internal.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

final class g extends ViewPropertyAnimatorListenerAdapter
{
  g(ActionBarOverlayLayout paramActionBarOverlayLayout)
  {
  }

  public final void onAnimationCancel(View paramView)
  {
    ActionBarOverlayLayout.b(this.a, null);
    ActionBarOverlayLayout.a(this.a, false);
  }

  public final void onAnimationEnd(View paramView)
  {
    ActionBarOverlayLayout.b(this.a, null);
    ActionBarOverlayLayout.a(this.a, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.g
 * JD-Core Version:    0.6.0
 */