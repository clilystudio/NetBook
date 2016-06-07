package android.support.design.widget;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class c
  implements OnApplyWindowInsetsListener
{
  c(AppBarLayout paramAppBarLayout)
  {
  }

  public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    AppBarLayout.a(this.a, paramWindowInsetsCompat);
    return paramWindowInsetsCompat.consumeSystemWindowInsets();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.c
 * JD-Core Version:    0.6.0
 */