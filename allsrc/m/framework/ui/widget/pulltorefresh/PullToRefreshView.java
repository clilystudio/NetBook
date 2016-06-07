package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class PullToRefreshView extends RelativeLayout
{
  private static final long MIN_REF_TIME = 1000L;
  private PullToRefreshAdatper adapter;
  private View bodyView;
  private float downY;
  private int headerHeight;
  private View headerView;
  private boolean pullingLock;
  private long refreshTime;
  private boolean requesting;
  private Runnable stopAct;
  private int top;

  public PullToRefreshView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public PullToRefreshView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public PullToRefreshView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private boolean canPull()
  {
    return (!this.pullingLock) && (this.adapter.isPullReady());
  }

  private MotionEvent getCancelEvent(MotionEvent paramMotionEvent)
  {
    return MotionEvent.obtain(paramMotionEvent.getDownTime(), paramMotionEvent.getEventTime(), 3, paramMotionEvent.getX(), paramMotionEvent.getY(), paramMotionEvent.getMetaState());
  }

  private void init()
  {
    this.stopAct = new PullToRefreshView.1(this);
  }

  private void performRequest()
  {
    this.refreshTime = System.currentTimeMillis();
    this.requesting = true;
    if (this.adapter != null)
      this.adapter.onRequest();
  }

  private void reversePulling()
  {
    this.top = 0;
    scrollTo(0, 0);
    if (this.adapter != null)
      this.adapter.onReversed();
  }

  private void stopRequest()
  {
    this.requesting = false;
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      this.downY = paramMotionEvent.getY();
      continue;
      float f = paramMotionEvent.getY();
      if ((this.requesting) || (canPull()))
      {
        this.top = (int)(this.top + (f - this.downY) / 2.0F);
        if (this.top <= 0)
          break label155;
        scrollTo(0, -this.top);
        if ((!this.requesting) && (this.adapter != null))
          this.adapter.onPullDown(100 * this.top / this.headerHeight);
        paramMotionEvent = getCancelEvent(paramMotionEvent);
      }
      while (true)
      {
        this.downY = f;
        break;
        label155: this.top = 0;
        scrollTo(0, 0);
      }
      if (!this.requesting)
      {
        if (this.top > this.headerHeight)
        {
          this.top = this.headerHeight;
          scrollTo(0, -this.top);
          if (this.adapter != null)
            this.adapter.onPullDown(100);
          performRequest();
          paramMotionEvent = getCancelEvent(paramMotionEvent);
          continue;
        }
        if (this.top == 0)
          continue;
        reversePulling();
        if (this.adapter == null)
          continue;
        this.adapter.onPullDown(0);
        continue;
      }
      this.top = this.headerHeight;
      scrollTo(0, -this.top);
    }
  }

  public void lockPulling()
  {
    this.pullingLock = true;
  }

  public void performPulling(boolean paramBoolean)
  {
    this.top = this.headerHeight;
    scrollTo(0, -this.top);
    if (paramBoolean)
      performRequest();
  }

  public void releaseLock()
  {
    this.pullingLock = false;
  }

  public void setAdapter(PullToRefreshAdatper paramPullToRefreshAdatper)
  {
    this.adapter = paramPullToRefreshAdatper;
    removeAllViews();
    this.bodyView = ((View)paramPullToRefreshAdatper.getBodyView());
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams1.addRule(9, -1);
    localLayoutParams1.addRule(11, -1);
    localLayoutParams1.addRule(10, -1);
    addView(this.bodyView, localLayoutParams1);
    this.headerView = paramPullToRefreshAdatper.getHeaderView();
    this.headerView.measure(0, 0);
    this.headerHeight = this.headerView.getMeasuredHeight();
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, this.headerHeight);
    localLayoutParams2.addRule(9, -1);
    localLayoutParams2.addRule(11, -1);
    localLayoutParams2.addRule(10, -1);
    localLayoutParams2.topMargin = (-this.headerHeight);
    addView(this.headerView, localLayoutParams2);
  }

  public void stopPulling()
  {
    long l = System.currentTimeMillis() - this.refreshTime;
    if (l < 1000L)
    {
      postDelayed(this.stopAct, 1000L - l);
      return;
    }
    post(this.stopAct);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.PullToRefreshView
 * JD-Core Version:    0.6.0
 */