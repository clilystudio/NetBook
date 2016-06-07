package android.support.v7.internal.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class O
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  O(SpinnerCompat paramSpinnerCompat)
  {
  }

  public final void onGlobalLayout()
  {
    if (!SpinnerCompat.a(this.a).b())
      SpinnerCompat.a(this.a).c();
    ViewTreeObserver localViewTreeObserver = this.a.getViewTreeObserver();
    if (localViewTreeObserver != null)
      localViewTreeObserver.removeGlobalOnLayoutListener(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.O
 * JD-Core Version:    0.6.0
 */