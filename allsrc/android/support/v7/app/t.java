package android.support.v7.app;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class t
  implements OnApplyWindowInsetsListener
{
  t(AppCompatDelegateImplV7 paramAppCompatDelegateImplV7)
  {
  }

  public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    int i = paramWindowInsetsCompat.getSystemWindowInsetTop();
    int j = AppCompatDelegateImplV7.c(this.a, i);
    if (i != j)
      paramWindowInsetsCompat = paramWindowInsetsCompat.replaceSystemWindowInsets(paramWindowInsetsCompat.getSystemWindowInsetLeft(), j, paramWindowInsetsCompat.getSystemWindowInsetRight(), paramWindowInsetsCompat.getSystemWindowInsetBottom());
    return ViewCompat.onApplyWindowInsets(paramView, paramWindowInsetsCompat);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.t
 * JD-Core Version:    0.6.0
 */