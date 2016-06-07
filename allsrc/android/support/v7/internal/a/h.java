package android.support.v7.internal.a;

import android.support.v4.view.ViewPropertyAnimatorUpdateListener;
import android.support.v7.internal.widget.ActionBarContainer;
import android.view.View;

final class h
  implements ViewPropertyAnimatorUpdateListener
{
  h(e parame)
  {
  }

  public final void onAnimationUpdate(View paramView)
  {
    ((View)e.c(this.a).getParent()).invalidate();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.a.h
 * JD-Core Version:    0.6.0
 */