package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import com.xiaomi.mistatistic.sdk.a.r;

public final class z extends r<FloatingActionButton>
{
  private static final boolean a;
  private Rect b;
  private float c;

  static
  {
    if (Build.VERSION.SDK_INT >= 11);
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
  {
    if (((t)paramFloatingActionButton.getLayoutParams()).f != paramAppBarLayout.getId())
      return false;
    if (this.b == null)
      this.b = new Rect();
    Rect localRect = this.b;
    aI.a(paramCoordinatorLayout, paramAppBarLayout, localRect);
    if (localRect.bottom <= paramAppBarLayout.f())
      paramFloatingActionButton.b();
    while (true)
    {
      return true;
      paramFloatingActionButton.a();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.z
 * JD-Core Version:    0.6.0
 */