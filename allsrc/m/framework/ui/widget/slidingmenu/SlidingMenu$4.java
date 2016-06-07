package m.framework.ui.widget.slidingmenu;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;

class SlidingMenu$4 extends FrameLayout
{
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!SlidingMenu.access$2(this.this$0))
      return true;
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.slidingmenu.SlidingMenu.4
 * JD-Core Version:    0.6.0
 */