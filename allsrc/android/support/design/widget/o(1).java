package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class o
  implements h
{
  private o(CollapsingToolbarLayout paramCollapsingToolbarLayout)
  {
  }

  public final void a(AppBarLayout paramAppBarLayout, int paramInt)
  {
    int i = 0;
    CollapsingToolbarLayout.b(this.a, paramInt);
    int j;
    int k;
    label48: View localView;
    n localn;
    aO localaO;
    if (CollapsingToolbarLayout.a(this.a) != null)
    {
      j = CollapsingToolbarLayout.a(this.a).getSystemWindowInsetTop();
      k = paramAppBarLayout.a();
      int m = this.a.getChildCount();
      if (i >= m)
        break label172;
      localView = this.a.getChildAt(i);
      localn = (n)localView.getLayoutParams();
      localaO = CollapsingToolbarLayout.a(localView);
      switch (localn.a)
      {
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      i++;
      break label48;
      j = 0;
      break;
      if (paramInt + (this.a.getHeight() - j) < localView.getHeight())
        continue;
      localaO.a(-paramInt);
      continue;
      localaO.a(Math.round(-paramInt * localn.b));
    }
    label172: if ((CollapsingToolbarLayout.b(this.a) != null) || (CollapsingToolbarLayout.c(this.a) != null))
    {
      if (paramInt + this.a.getHeight() >= j + 2 * ViewCompat.getMinimumHeight(this.a))
        break label302;
      CollapsingToolbarLayout.d(this.a);
    }
    while (true)
    {
      if ((CollapsingToolbarLayout.c(this.a) != null) && (j > 0))
        ViewCompat.postInvalidateOnAnimation(this.a);
      int n = this.a.getHeight() - ViewCompat.getMinimumHeight(this.a) - j;
      CollapsingToolbarLayout.f(this.a).b(Math.abs(paramInt) / n);
      if (Math.abs(paramInt) != k)
        break;
      ViewCompat.setElevation(paramAppBarLayout, paramAppBarLayout.g());
      return;
      label302: CollapsingToolbarLayout.e(this.a);
    }
    ViewCompat.setElevation(paramAppBarLayout, 0.0F);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.o
 * JD-Core Version:    0.6.0
 */