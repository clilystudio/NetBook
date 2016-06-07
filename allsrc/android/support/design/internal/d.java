package android.support.design.internal;

import android.graphics.Rect;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class d
  implements OnApplyWindowInsetsListener
{
  d(ScrimInsetsFrameLayout paramScrimInsetsFrameLayout)
  {
  }

  public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    if (ScrimInsetsFrameLayout.a(this.a) == null)
      ScrimInsetsFrameLayout.a(this.a, new Rect());
    ScrimInsetsFrameLayout.a(this.a).set(paramWindowInsetsCompat.getSystemWindowInsetLeft(), paramWindowInsetsCompat.getSystemWindowInsetTop(), paramWindowInsetsCompat.getSystemWindowInsetRight(), paramWindowInsetsCompat.getSystemWindowInsetBottom());
    ScrimInsetsFrameLayout localScrimInsetsFrameLayout = this.a;
    if ((ScrimInsetsFrameLayout.a(this.a).isEmpty()) || (ScrimInsetsFrameLayout.b(this.a) == null));
    for (boolean bool = true; ; bool = false)
    {
      localScrimInsetsFrameLayout.setWillNotDraw(bool);
      ViewCompat.postInvalidateOnAnimation(this.a);
      return paramWindowInsetsCompat.consumeSystemWindowInsets();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.internal.d
 * JD-Core Version:    0.6.0
 */