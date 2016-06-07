package m.framework.ui.widget.viewpager;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import m.framework.utils.Utils;

public class ViewPagerClassic extends ViewGroup
{
  private static final int SNAP_VELOCITY = 500;
  private static final int TOUCH_STATE_REST = 0;
  private static final int TOUCH_STATE_SCROLLING = 1;
  private ViewPagerAdapter adapter;
  private int currentScreen;
  private float lastMotionX;
  private float lastMotionY;
  private int mMaximumVelocity;
  private VelocityTracker mVelocityTracker;
  private Scroller scroller;
  private int touchSlop;
  private int touchState = 0;

  public ViewPagerClassic(Context paramContext)
  {
    this(paramContext, null);
  }

  public ViewPagerClassic(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ViewPagerClassic(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }

  private void handleInterceptMove(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    int i = (int)Math.abs(f1 - this.lastMotionX);
    int j = (int)Math.abs(f2 - this.lastMotionY);
    if (i > this.touchSlop);
    for (int k = 1; ; k = 0)
    {
      int m = this.touchSlop;
      int n = 0;
      if (j > m)
        n = 1;
      if (((k != 0) || (n != 0)) && (k != 0))
      {
        this.touchState = 1;
        this.lastMotionX = f1;
      }
      return;
    }
  }

  private void handleScrollMove(MotionEvent paramMotionEvent)
  {
    if (this.adapter == null);
    int i;
    int j;
    do
    {
      do
        while (true)
        {
          return;
          float f = paramMotionEvent.getX();
          i = (int)(this.lastMotionX - f);
          this.lastMotionX = f;
          if (i >= 0)
            break;
          if (getScrollX() <= 0)
            continue;
          scrollBy(Math.max(-getScrollX(), i), 0);
          return;
        }
      while ((i <= 0) || (getChildCount() == 0));
      j = getChildAt(-1 + getChildCount()).getRight() - getScrollX() - getWidth();
    }
    while (j <= 0);
    scrollBy(Math.min(j, i), 0);
  }

  private void init(Context paramContext)
  {
    this.scroller = new Scroller(getContext(), new ViewPagerClassic.1(this));
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
    this.touchSlop = localViewConfiguration.getScaledTouchSlop();
    this.mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
  }

  private void scrollToScreen(int paramInt, boolean paramBoolean)
  {
    int i;
    int j;
    Scroller localScroller;
    int k;
    if (paramInt != this.currentScreen)
    {
      i = 1;
      View localView = getFocusedChild();
      if ((localView != null) && (i != 0) && (localView == getChildAt(this.currentScreen)))
        localView.clearFocus();
      j = paramInt * getWidth() - getScrollX();
      localScroller = this.scroller;
      k = getScrollX();
      if (!paramBoolean)
        break label98;
    }
    label98: for (int m = 0; ; m = Math.abs(j) / 2)
    {
      localScroller.startScroll(k, 0, j, 0, m);
      invalidate();
      return;
      i = 0;
      break;
    }
  }

  public void computeScroll()
  {
    if (this.adapter == null);
    int i;
    do
    {
      return;
      if (this.scroller.computeScrollOffset())
      {
        scrollTo(this.scroller.getCurrX(), this.scroller.getCurrY());
        postInvalidate();
        return;
      }
      i = this.currentScreen;
      int j = this.scroller.getCurrX();
      int k = getWidth();
      int m = j / k;
      if (j % k > k / 2)
        m++;
      this.currentScreen = Math.max(0, Math.min(m, -1 + getChildCount()));
    }
    while ((i == this.currentScreen) || (this.adapter == null));
    this.adapter.onScreenChange(this.currentScreen, i);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    if ((this.adapter == null) || (getChildCount() <= 0));
    long l;
    do
    {
      return;
      l = getDrawingTime();
      if (this.currentScreen > 0)
        drawChild(paramCanvas, getChildAt(-1 + this.currentScreen), l);
      drawChild(paramCanvas, getChildAt(this.currentScreen), l);
    }
    while (this.currentScreen >= -1 + getChildCount());
    drawChild(paramCanvas, getChildAt(1 + this.currentScreen), l);
  }

  public boolean dispatchUnhandledMove(View paramView, int paramInt)
  {
    if (this.adapter == null)
      return super.dispatchUnhandledMove(paramView, paramInt);
    if (paramInt == 17)
    {
      if (this.currentScreen > 0)
      {
        scrollToScreen(-1 + this.currentScreen);
        return true;
      }
    }
    else if ((paramInt == 66) && (this.currentScreen < -1 + getChildCount()))
    {
      scrollToScreen(1 + this.currentScreen);
      return true;
    }
    return super.dispatchUnhandledMove(paramView, paramInt);
  }

  public int getCurrentScreen()
  {
    return this.currentScreen;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if ((i == 2) && (this.touchState != 0));
    while (true)
    {
      return true;
      if (this.mVelocityTracker == null)
        this.mVelocityTracker = VelocityTracker.obtain();
      this.mVelocityTracker.addMovement(paramMotionEvent);
      switch (i)
      {
      default:
      case 2:
      case 0:
      case 1:
      case 3:
      }
      while (this.touchState == 0)
      {
        return false;
        handleInterceptMove(paramMotionEvent);
        continue;
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        this.lastMotionX = f1;
        this.lastMotionY = f2;
        if (this.scroller.isFinished());
        for (int j = 0; ; j = 1)
        {
          this.touchState = j;
          break;
        }
        if (this.mVelocityTracker != null)
        {
          this.mVelocityTracker.recycle();
          this.mVelocityTracker = null;
        }
        this.touchState = 0;
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.adapter == null);
    while (true)
    {
      return;
      int i = paramInt3 - paramInt1;
      int j = paramInt4 - paramInt2;
      int k = getChildCount();
      int m = 0;
      int n = 0;
      while (m < k)
      {
        View localView = getChildAt(m);
        if (localView.getVisibility() != 8)
        {
          localView.layout(n, 0, n + i, j);
          n += i;
        }
        m++;
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.adapter == null)
      super.onMeasure(paramInt1, paramInt2);
    int j;
    int k;
    int m;
    while (true)
    {
      return;
      int i = getChildCount();
      j = View.MeasureSpec.makeMeasureSpec(Utils.getScreenWidth(getContext()), 1073741824);
      k = 0;
      m = 0;
      if (k < i)
        break;
      int i1 = View.MeasureSpec.makeMeasureSpec(m, 1073741824);
      super.onMeasure(j, i1);
      for (int i2 = 0; i2 < i; i2++)
        getChildAt(i2).measure(j, i1);
    }
    View localView = getChildAt(k);
    localView.measure(j, 0);
    int n = localView.getMeasuredHeight();
    if (n > m);
    while (true)
    {
      k++;
      m = n;
      break;
      n = m;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.adapter == null)
      return false;
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain();
    this.mVelocityTracker.addMovement(paramMotionEvent);
    int i = paramMotionEvent.getAction();
    float f = paramMotionEvent.getX();
    switch (i)
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      return true;
      if (this.touchState == 0)
        continue;
      if (!this.scroller.isFinished())
        this.scroller.abortAnimation();
      this.lastMotionX = f;
      continue;
      if (this.touchState == 1)
      {
        handleScrollMove(paramMotionEvent);
        continue;
      }
      if ((!onInterceptTouchEvent(paramMotionEvent)) || (this.touchState != 1))
        continue;
      handleScrollMove(paramMotionEvent);
      continue;
      int j;
      if (this.touchState == 1)
      {
        VelocityTracker localVelocityTracker = this.mVelocityTracker;
        localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
        j = (int)localVelocityTracker.getXVelocity();
        if ((j <= 500) || (this.currentScreen <= 0))
          break label233;
        scrollToScreen(-1 + this.currentScreen);
      }
      while (true)
      {
        if (this.mVelocityTracker != null)
        {
          this.mVelocityTracker.recycle();
          this.mVelocityTracker = null;
        }
        this.touchState = 0;
        break;
        label233: if ((j < -500) && (this.currentScreen < -1 + getChildCount()))
        {
          scrollToScreen(1 + this.currentScreen);
          continue;
        }
        int k = getWidth();
        scrollToScreen((getScrollX() + k / 2) / k);
      }
      this.touchState = 0;
    }
  }

  public void scrollLeft()
  {
    if (this.adapter == null);
    do
      return;
    while ((this.currentScreen <= 0) || (!this.scroller.isFinished()));
    scrollToScreen(-1 + this.currentScreen);
  }

  public void scrollRight()
  {
    if (this.adapter == null);
    do
      return;
    while ((this.currentScreen >= -1 + getChildCount()) || (!this.scroller.isFinished()));
    scrollToScreen(1 + this.currentScreen);
  }

  public void scrollToScreen(int paramInt)
  {
    scrollToScreen(paramInt, false);
  }

  public void setAdapter(ViewPagerAdapter paramViewPagerAdapter)
  {
    int i = 0;
    this.adapter = paramViewPagerAdapter;
    removeAllViews();
    this.currentScreen = 0;
    if (this.adapter == null);
    while (true)
    {
      return;
      int j = paramViewPagerAdapter.getCount();
      while (i < j)
      {
        addView(paramViewPagerAdapter.getView(i, this));
        i++;
      }
    }
  }

  public void setCurrentScreen(int paramInt)
  {
    if (this.adapter == null)
      return;
    if (!this.scroller.isFinished())
      this.scroller.abortAnimation();
    int i = this.currentScreen;
    this.currentScreen = Math.max(0, Math.min(paramInt, getChildCount()));
    this.adapter.onScreenChange(this.currentScreen, i);
    int j = Utils.getScreenWidth(getContext()) * this.currentScreen;
    this.scroller.startScroll(0, 0, j, 0);
    scrollTo(j, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.viewpager.ViewPagerClassic
 * JD-Core Version:    0.6.0
 */