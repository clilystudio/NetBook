package android.support.v4.widget;

import android.view.View;

class SlidingPaneLayout$DragHelperCallback extends ViewDragHelper.Callback
{
  private SlidingPaneLayout$DragHelperCallback(SlidingPaneLayout paramSlidingPaneLayout)
  {
  }

  public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)SlidingPaneLayout.access$400(this.this$0).getLayoutParams();
    if (SlidingPaneLayout.access$700(this.this$0))
    {
      int k = this.this$0.getWidth() - (this.this$0.getPaddingRight() + localLayoutParams.rightMargin + SlidingPaneLayout.access$400(this.this$0).getWidth());
      int m = k - SlidingPaneLayout.access$800(this.this$0);
      return Math.max(Math.min(paramInt1, k), m);
    }
    int i = this.this$0.getPaddingLeft() + localLayoutParams.leftMargin;
    int j = i + SlidingPaneLayout.access$800(this.this$0);
    return Math.min(Math.max(paramInt1, i), j);
  }

  public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }

  public int getViewHorizontalDragRange(View paramView)
  {
    return SlidingPaneLayout.access$800(this.this$0);
  }

  public void onEdgeDragStarted(int paramInt1, int paramInt2)
  {
    SlidingPaneLayout.access$200(this.this$0).captureChildView(SlidingPaneLayout.access$400(this.this$0), paramInt2);
  }

  public void onViewCaptured(View paramView, int paramInt)
  {
    this.this$0.setAllChildrenVisible();
  }

  public void onViewDragStateChanged(int paramInt)
  {
    if (SlidingPaneLayout.access$200(this.this$0).getViewDragState() == 0)
    {
      if (SlidingPaneLayout.access$300(this.this$0) == 0.0F)
      {
        this.this$0.updateObscuredViewsVisibility(SlidingPaneLayout.access$400(this.this$0));
        this.this$0.dispatchOnPanelClosed(SlidingPaneLayout.access$400(this.this$0));
        SlidingPaneLayout.access$502(this.this$0, false);
      }
    }
    else
      return;
    this.this$0.dispatchOnPanelOpened(SlidingPaneLayout.access$400(this.this$0));
    SlidingPaneLayout.access$502(this.this$0, true);
  }

  public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    SlidingPaneLayout.access$600(this.this$0, paramInt1);
    this.this$0.invalidate();
  }

  public void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    int i;
    if (SlidingPaneLayout.access$700(this.this$0))
    {
      int j = this.this$0.getPaddingRight() + localLayoutParams.rightMargin;
      if ((paramFloat1 < 0.0F) || ((paramFloat1 == 0.0F) && (SlidingPaneLayout.access$300(this.this$0) > 0.5F)))
        j += SlidingPaneLayout.access$800(this.this$0);
      int k = SlidingPaneLayout.access$400(this.this$0).getWidth();
      i = this.this$0.getWidth() - j - k;
    }
    while (true)
    {
      SlidingPaneLayout.access$200(this.this$0).settleCapturedViewAt(i, paramView.getTop());
      this.this$0.invalidate();
      return;
      i = this.this$0.getPaddingLeft() + localLayoutParams.leftMargin;
      if ((paramFloat1 <= 0.0F) && ((paramFloat1 != 0.0F) || (SlidingPaneLayout.access$300(this.this$0) <= 0.5F)))
        continue;
      i += SlidingPaneLayout.access$800(this.this$0);
    }
  }

  public boolean tryCaptureView(View paramView, int paramInt)
  {
    if (SlidingPaneLayout.access$100(this.this$0))
      return false;
    return ((SlidingPaneLayout.LayoutParams)paramView.getLayoutParams()).slideable;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout.DragHelperCallback
 * JD-Core Version:    0.6.0
 */