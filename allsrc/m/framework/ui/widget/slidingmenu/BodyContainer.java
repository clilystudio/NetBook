package m.framework.ui.widget.slidingmenu;

import android.graphics.Color;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.HorizontalScrollView;

public class BodyContainer extends HorizontalScrollView
{
  private static final int MENU_COVER_ALPHA = 230;
  private static final int MIN_FLING_VEL = 500;
  private float downX = 2.147484E+009F;
  private int maxVelocity;
  private SlidingMenu menu;
  private VelocityTracker tracker;

  public BodyContainer(SlidingMenu paramSlidingMenu)
  {
    super(paramSlidingMenu.getContext());
    this.menu = paramSlidingMenu;
    this.maxVelocity = ViewConfiguration.get(paramSlidingMenu.getContext()).getScaledMaximumFlingVelocity();
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 1:
    case 3:
    case 2:
    }
    do
      while (true)
      {
        return super.onInterceptTouchEvent(paramMotionEvent);
        this.downX = paramMotionEvent.getX();
        if ((!this.menu.isMenuShown()) || (this.downX <= this.menu.getMenuWidth()) || (paramMotionEvent.getY() <= this.menu.getMenuConfig().titleHeight))
          continue;
        super.onInterceptTouchEvent(paramMotionEvent);
        return true;
        this.downX = 2.147484E+009F;
      }
    while ((this.menu.isMenuShown()) || (this.downX <= this.menu.getShowMenuWidth()));
    super.onInterceptTouchEvent(paramMotionEvent);
    return false;
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    int i = Color.argb(paramInt1 * 230 / this.menu.getMenuWidth(), 0, 0, 0);
    this.menu.getMenuCover().setBackgroundColor(i);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.tracker == null)
      this.tracker = VelocityTracker.obtain();
    this.tracker.addMovement(paramMotionEvent);
    switch (paramMotionEvent.getAction())
    {
    case 2:
    default:
      if ((!this.menu.isMenuShown()) || (this.downX >= this.menu.getMenuWidth()))
        break;
    case 1:
    case 3:
      do
        return false;
      while ((this.menu.isMenuShown()) && (this.downX < this.menu.getMenuWidth()));
      this.downX = 2.147484E+009F;
      this.tracker.computeCurrentVelocity(1000, this.maxVelocity);
      float f = this.tracker.getXVelocity();
      this.tracker.recycle();
      this.tracker = null;
      int i = getScrollX();
      if (f - 500.0F <= 0.0F)
        if (f + 500.0F < 0.0F)
          this.menu.hideMenu();
      while (true)
      {
        return true;
        if (i > this.menu.getMenuWidth() / 2)
        {
          this.menu.hideMenu();
          continue;
        }
        this.menu.showMenu();
      }
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.slidingmenu.BodyContainer
 * JD-Core Version:    0.6.0
 */