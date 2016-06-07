package android.support.v7.widget;

import android.view.View;
import android.view.ViewParent;

final class Q
  implements Runnable
{
  private Q(P paramP)
  {
  }

  public final void run()
  {
    P.a(this.a).getParent().requestDisallowInterceptTouchEvent(true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.Q
 * JD-Core Version:    0.6.0
 */