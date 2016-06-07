package android.support.v7.internal.widget;

import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.view.View.OnClickListener;

final class L
  implements View.OnClickListener
{
  private L(ScrollingTabContainerView paramScrollingTabContainerView)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ScrollingTabContainerView.a(this.a).getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = ScrollingTabContainerView.a(this.a).getChildAt(j);
      if (localView == paramView);
      for (boolean bool = true; ; bool = false)
      {
        localView.setSelected(bool);
        j++;
        break;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.L
 * JD-Core Version:    0.6.0
 */