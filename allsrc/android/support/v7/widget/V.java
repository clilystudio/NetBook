package android.support.v7.widget;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

final class V
  implements View.OnTouchListener
{
  private V(L paramL)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (L.b(this.a) != null) && (L.b(this.a).isShowing()) && (j >= 0) && (j < L.b(this.a).getWidth()) && (k >= 0) && (k < L.b(this.a).getHeight()))
      L.d(this.a).postDelayed(L.c(this.a), 250L);
    while (true)
    {
      return false;
      if (i != 1)
        continue;
      L.d(this.a).removeCallbacks(L.c(this.a));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.V
 * JD-Core Version:    0.6.0
 */