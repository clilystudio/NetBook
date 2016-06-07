package android.support.v7.internal.view;

import android.support.v4.view.ViewPropertyAnimatorListener;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;
import java.util.ArrayList;

final class i extends ViewPropertyAnimatorListenerAdapter
{
  private boolean a = false;
  private int b = 0;

  i(h paramh)
  {
  }

  public final void onAnimationEnd(View paramView)
  {
    int i = 1 + this.b;
    this.b = i;
    if (i == h.c(this.c).size())
    {
      if (h.a(this.c) != null)
        h.a(this.c).onAnimationEnd(null);
      this.b = 0;
      this.a = false;
      h.b(this.c);
    }
  }

  public final void onAnimationStart(View paramView)
  {
    if (this.a);
    do
    {
      return;
      this.a = true;
    }
    while (h.a(this.c) == null);
    h.a(this.c).onAnimationStart(null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.i
 * JD-Core Version:    0.6.0
 */