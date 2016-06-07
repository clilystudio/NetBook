package android.support.v7.internal.widget;

import android.graphics.Outline;
import android.graphics.drawable.Drawable;

final class d extends c
{
  public d(ActionBarContainer paramActionBarContainer)
  {
    super(paramActionBarContainer);
  }

  public final void getOutline(Outline paramOutline)
  {
    if (this.a.d)
      if (this.a.c != null)
        this.a.c.getOutline(paramOutline);
    do
      return;
    while (this.a.a == null);
    this.a.a.getOutline(paramOutline);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.d
 * JD-Core Version:    0.6.0
 */