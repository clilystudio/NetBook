package android.support.design.widget;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class q
  implements OnApplyWindowInsetsListener
{
  q(CoordinatorLayout paramCoordinatorLayout)
  {
  }

  public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    CoordinatorLayout.a(this.a, paramWindowInsetsCompat);
    return paramWindowInsetsCompat.consumeSystemWindowInsets();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.q
 * JD-Core Version:    0.6.0
 */