package android.support.v7.internal.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;

final class h
  implements Runnable
{
  h(ActionBarOverlayLayout paramActionBarOverlayLayout)
  {
  }

  public final void run()
  {
    ActionBarOverlayLayout.a(this.a);
    ActionBarOverlayLayout.a(this.a, ViewCompat.animate(ActionBarOverlayLayout.c(this.a)).translationY(0.0F).setListener(ActionBarOverlayLayout.b(this.a)));
    if ((ActionBarOverlayLayout.d(this.a) != null) && (ActionBarOverlayLayout.d(this.a).getVisibility() != 8))
      ActionBarOverlayLayout.b(this.a, ViewCompat.animate(ActionBarOverlayLayout.d(this.a)).translationY(0.0F).setListener(ActionBarOverlayLayout.e(this.a)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.h
 * JD-Core Version:    0.6.0
 */