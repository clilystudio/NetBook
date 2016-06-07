package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;

final class aI
{
  private static final aJ a;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new aL(0);
      return;
    }
    a = new aK(0);
  }

  static void a(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    paramRect.set(0, 0, paramView.getWidth(), paramView.getHeight());
    a.a(paramViewGroup, paramView, paramRect);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aI
 * JD-Core Version:    0.6.0
 */