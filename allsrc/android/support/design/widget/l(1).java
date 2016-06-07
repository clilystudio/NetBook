package android.support.design.widget;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class l
  implements OnApplyWindowInsetsListener
{
  l(CollapsingToolbarLayout paramCollapsingToolbarLayout)
  {
  }

  public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    CollapsingToolbarLayout.a(this.a, paramWindowInsetsCompat);
    this.a.requestLayout();
    return paramWindowInsetsCompat.consumeSystemWindowInsets();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.l
 * JD-Core Version:    0.6.0
 */