package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwipeRefreshLayout$4 extends Animation
{
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    SwipeRefreshLayout.access$100(this.this$0).setAlpha((int)(this.val$startingAlpha + paramFloat * (this.val$endingAlpha - this.val$startingAlpha)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SwipeRefreshLayout.4
 * JD-Core Version:    0.6.0
 */