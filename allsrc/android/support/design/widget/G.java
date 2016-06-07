package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class G extends AnimatorListenerAdapter
{
  G(F paramF)
  {
  }

  public final void onAnimationCancel(Animator paramAnimator)
  {
    F.a(this.a, false);
  }

  public final void onAnimationEnd(Animator paramAnimator)
  {
    F.a(this.a, false);
    this.a.e.setVisibility(8);
  }

  public final void onAnimationStart(Animator paramAnimator)
  {
    F.a(this.a, true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.G
 * JD-Core Version:    0.6.0
 */