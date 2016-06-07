package android.support.v7.internal.a;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v7.b.b;
import android.support.v7.internal.widget.ActionBarContainer;
import android.view.View;

final class f extends ViewPropertyAnimatorListenerAdapter
{
  f(e parame)
  {
  }

  public final void onAnimationEnd(View paramView)
  {
    if ((e.a(this.a)) && (e.b(this.a) != null))
    {
      ViewCompat.setTranslationY(e.b(this.a), 0.0F);
      ViewCompat.setTranslationY(e.c(this.a), 0.0F);
    }
    if ((e.d(this.a) != null) && (e.e(this.a) == 1))
      e.d(this.a).setVisibility(8);
    e.c(this.a).setVisibility(8);
    e.c(this.a).setTransitioning(false);
    e.a(this.a, null);
    e locale = this.a;
    if (locale.c != null)
    {
      locale.c.a(locale.b);
      locale.b = null;
      locale.c = null;
    }
    if (e.f(this.a) != null)
      ViewCompat.requestApplyInsets(e.f(this.a));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.a.f
 * JD-Core Version:    0.6.0
 */