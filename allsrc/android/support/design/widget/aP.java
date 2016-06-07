package android.support.design.widget;

import android.os.Build.VERSION;
import android.view.View;

final class aP
{
  private static az a = new az();
  private static final aQ b;

  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      b = new aS(0);
      return;
    }
    b = new aR(0);
  }

  static au a()
  {
    return a.a();
  }

  static void a(View paramView)
  {
    b.a(paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aP
 * JD-Core Version:    0.6.0
 */