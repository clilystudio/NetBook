package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwipeRefreshLayout$6 extends Animation
{
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (!SwipeRefreshLayout.access$1100(this.this$0));
    for (int i = (int)(SwipeRefreshLayout.access$1200(this.this$0) - Math.abs(this.this$0.mOriginalOffsetTop)); ; i = (int)SwipeRefreshLayout.access$1200(this.this$0))
    {
      int j = this.this$0.mFrom + (int)(paramFloat * (i - this.this$0.mFrom)) - SwipeRefreshLayout.access$400(this.this$0).getTop();
      SwipeRefreshLayout.access$900(this.this$0, j, false);
      SwipeRefreshLayout.access$100(this.this$0).setArrowScale(1.0F - paramFloat);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SwipeRefreshLayout.6
 * JD-Core Version:    0.6.0
 */