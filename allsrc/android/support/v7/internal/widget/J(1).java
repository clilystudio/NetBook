package android.support.v7.internal.widget;

import android.view.View;

final class J
  implements Runnable
{
  J(ScrollingTabContainerView paramScrollingTabContainerView, View paramView)
  {
  }

  public final void run()
  {
    int i = this.a.getLeft() - (this.b.getWidth() - this.a.getWidth()) / 2;
    this.b.smoothScrollTo(i, 0);
    this.b.a = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.J
 * JD-Core Version:    0.6.0
 */