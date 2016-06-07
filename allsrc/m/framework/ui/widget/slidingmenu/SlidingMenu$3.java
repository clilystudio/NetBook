package m.framework.ui.widget.slidingmenu;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class SlidingMenu$3
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  public void onGlobalLayout()
  {
    this.this$0.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    this.this$0.post(new SlidingMenu.3.1(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.slidingmenu.SlidingMenu.3
 * JD-Core Version:    0.6.0
 */