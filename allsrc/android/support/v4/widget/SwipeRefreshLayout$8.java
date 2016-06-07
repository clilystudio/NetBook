package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwipeRefreshLayout$8 extends Animation
{
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f = SwipeRefreshLayout.access$1400(this.this$0) + paramFloat * -SwipeRefreshLayout.access$1400(this.this$0);
    SwipeRefreshLayout.access$700(this.this$0, f);
    SwipeRefreshLayout.access$1300(this.this$0, paramFloat);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SwipeRefreshLayout.8
 * JD-Core Version:    0.6.0
 */