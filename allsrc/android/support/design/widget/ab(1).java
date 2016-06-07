package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class ab
  implements Animation.AnimationListener
{
  ab(aa paramaa)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (aa.a(this.a) == paramAnimation)
      aa.a(this.a, null);
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.ab
 * JD-Core Version:    0.6.0
 */