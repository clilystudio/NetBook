package com.cocosw.bottomsheet;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.GridView;
import android.widget.LinearLayout.LayoutParams;

final class f
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  f(a parama)
  {
  }

  public final void onGlobalLayout()
  {
    if (Build.VERSION.SDK_INT < 16)
      a.a(this.a).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    while (true)
    {
      View localView = a.a(this.a).getChildAt(-1 + a.a(this.a).getChildCount());
      if (localView != null)
        a.a(this.a).setLayoutParams(new LinearLayout.LayoutParams(-1, localView.getBottom() + localView.getPaddingBottom()));
      return;
      a.a(this.a).getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.cocosw.bottomsheet.f
 * JD-Core Version:    0.6.0
 */