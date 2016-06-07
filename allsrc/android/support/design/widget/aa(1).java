package android.support.design.widget;

import android.util.StateSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

final class aa
{
  private final ArrayList<ac> a = new ArrayList();
  private ac b = null;
  private Animation c = null;
  private WeakReference<View> d;
  private Animation.AnimationListener e = new ab(this);

  private View b()
  {
    if (this.d == null)
      return null;
    return (View)this.d.get();
  }

  public final void a()
  {
    if (this.c != null)
    {
      View localView = b();
      if ((localView != null) && (localView.getAnimation() == this.c))
        localView.clearAnimation();
    }
  }

  final void a(View paramView)
  {
    View localView1 = b();
    if (localView1 == paramView);
    do
    {
      return;
      if (localView1 == null)
        continue;
      View localView2 = b();
      int i = this.a.size();
      for (int j = 0; j < i; j++)
      {
        Animation localAnimation = ((ac)this.a.get(j)).b;
        if (localView2.getAnimation() != localAnimation)
          continue;
        localView2.clearAnimation();
      }
      this.d = null;
      this.b = null;
      this.c = null;
    }
    while (paramView == null);
    this.d = new WeakReference(paramView);
  }

  final void a(int[] paramArrayOfInt)
  {
    int i = this.a.size();
    int j = 0;
    ac localac;
    if (j < i)
    {
      localac = (ac)this.a.get(j);
      if (!StateSet.stateSetMatches(localac.a, paramArrayOfInt));
    }
    while (true)
    {
      if (localac == this.b);
      View localView1;
      do
      {
        do
        {
          return;
          j++;
          break;
          if ((this.b != null) && (this.c != null))
          {
            View localView2 = b();
            if ((localView2 != null) && (localView2.getAnimation() == this.c))
              localView2.clearAnimation();
            this.c = null;
          }
          this.b = localac;
        }
        while (localac == null);
        this.c = localac.b;
        localView1 = b();
      }
      while (localView1 == null);
      localView1.startAnimation(this.c);
      return;
      localac = null;
    }
  }

  public final void a(int[] paramArrayOfInt, Animation paramAnimation)
  {
    ac localac = new ac(paramArrayOfInt, paramAnimation, 0);
    paramAnimation.setAnimationListener(this.e);
    this.a.add(localac);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aa
 * JD-Core Version:    0.6.0
 */