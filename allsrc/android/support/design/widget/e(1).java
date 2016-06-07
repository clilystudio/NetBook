package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;

final class e
  implements Runnable
{
  private final CoordinatorLayout a;
  private final AppBarLayout b;

  e(AppBarLayout.Behavior paramBehavior, CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout)
  {
    this.a = paramCoordinatorLayout;
    this.b = paramAppBarLayout;
  }

  public final void run()
  {
    if ((this.b != null) && (AppBarLayout.Behavior.a(this.c) != null) && (AppBarLayout.Behavior.a(this.c).computeScrollOffset()))
    {
      this.c.a(this.a, this.b, AppBarLayout.Behavior.a(this.c).getCurrY());
      ViewCompat.postOnAnimation(this.b, this);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.e
 * JD-Core Version:    0.6.0
 */