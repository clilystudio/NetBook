package android.support.v4.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

final class ViewPropertyAnimatorCompatKK$1
  implements ValueAnimator.AnimatorUpdateListener
{
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    this.val$listener.onAnimationUpdate(this.val$view);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompatKK.1
 * JD-Core Version:    0.6.0
 */