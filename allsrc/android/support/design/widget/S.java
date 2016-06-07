package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class S
  implements Animation.AnimationListener
{
  S(Snackbar paramSnackbar)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    X.a().c(Snackbar.a(this.a));
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.S
 * JD-Core Version:    0.6.0
 */