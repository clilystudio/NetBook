package android.support.v7.widget;

import android.view.View;

final class M
  implements Runnable
{
  M(L paramL)
  {
  }

  public final void run()
  {
    View localView = this.a.d();
    if ((localView != null) && (localView.getWindowToken() != null))
      this.a.c();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.M
 * JD-Core Version:    0.6.0
 */