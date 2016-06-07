package android.support.v4.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class ViewPropertyAnimatorCompatICS$1 extends AnimatorListenerAdapter
{
  public final void onAnimationCancel(Animator paramAnimator)
  {
    this.val$listener.onAnimationCancel(this.val$view);
  }

  public final void onAnimationEnd(Animator paramAnimator)
  {
    this.val$listener.onAnimationEnd(this.val$view);
  }

  public final void onAnimationStart(Animator paramAnimator)
  {
    this.val$listener.onAnimationStart(this.val$view);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompatICS.1
 * JD-Core Version:    0.6.0
 */