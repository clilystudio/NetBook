package android.support.v7.widget;

import android.widget.PopupWindow;

final class W
  implements Runnable
{
  private W(L paramL)
  {
  }

  public final void run()
  {
    if ((L.a(this.a) != null) && (L.a(this.a).getCount() > L.a(this.a).getChildCount()) && (L.a(this.a).getChildCount() <= this.a.b))
    {
      L.b(this.a).setInputMethodMode(2);
      this.a.c();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.W
 * JD-Core Version:    0.6.0
 */