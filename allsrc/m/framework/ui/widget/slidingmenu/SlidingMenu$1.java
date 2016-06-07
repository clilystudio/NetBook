package m.framework.ui.widget.slidingmenu;

import android.view.View;
import android.view.View.OnClickListener;

class SlidingMenu$1
  implements View.OnClickListener
{
  public void onClick(View paramView)
  {
    SlidingMenuItem localSlidingMenuItem = (SlidingMenuItem)paramView.getTag();
    if (localSlidingMenuItem == null);
    do
      return;
    while ((SlidingMenu.access$0(this.this$0) == null) || (SlidingMenu.access$0(this.this$0).onItemTrigger(localSlidingMenuItem)));
    this.this$0.postDelayed(new SlidingMenu.1.1(this), 500L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.slidingmenu.SlidingMenu.1
 * JD-Core Version:    0.6.0
 */