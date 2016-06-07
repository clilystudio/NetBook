package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class U
  implements Animation.AnimationListener
{
  U(Snackbar paramSnackbar)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    Snackbar.d(this.a);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.U
 * JD-Core Version:    0.6.0
 */