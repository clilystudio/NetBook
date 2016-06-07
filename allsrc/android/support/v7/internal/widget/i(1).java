package android.support.v7.internal.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;

final class i
  implements Runnable
{
  i(ActionBarOverlayLayout paramActionBarOverlayLayout)
  {
  }

  public final void run()
  {
    ActionBarOverlayLayout.a(this.a);
    ActionBarOverlayLayout.a(this.a, ViewCompat.animate(ActionBarOverlayLayout.c(this.a)).translationY(-ActionBarOverlayLayout.c(this.a).getHeight()).setListener(ActionBarOverlayLayout.b(this.a)));
    if ((ActionBarOverlayLayout.d(this.a) != null) && (ActionBarOverlayLayout.d(this.a).getVisibility() != 8))
      ActionBarOverlayLayout.b(this.a, ViewCompat.animate(ActionBarOverlayLayout.d(this.a)).translationY(ActionBarOverlayLayout.d(this.a).getHeight()).setListener(ActionBarOverlayLayout.e(this.a)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.i
 * JD-Core Version:    0.6.0
 */