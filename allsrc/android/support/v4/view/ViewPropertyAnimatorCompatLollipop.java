package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;

class ViewPropertyAnimatorCompatLollipop
{
  public static void translationZ(View paramView, float paramFloat)
  {
    paramView.animate().translationZ(paramFloat);
  }

  public static void translationZBy(View paramView, float paramFloat)
  {
    paramView.animate().translationZBy(paramFloat);
  }

  public static void z(View paramView, float paramFloat)
  {
    paramView.animate().z(paramFloat);
  }

  public static void zBy(View paramView, float paramFloat)
  {
    paramView.animate().zBy(paramFloat);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPropertyAnimatorCompatLollipop
 * JD-Core Version:    0.6.0
 */