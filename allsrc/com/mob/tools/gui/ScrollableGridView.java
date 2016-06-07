package com.mob.tools.gui;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.widget.GridView;

public class ScrollableGridView extends GridView
  implements com.koushikdutta.async.s
{
  private r a;

  public ScrollableGridView(Context paramContext)
  {
    super(paramContext);
    b();
  }

  public ScrollableGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }

  public ScrollableGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }

  private void b()
  {
    setCacheColorHint(0);
    setSelector(new ColorDrawable());
    this.a = new s(this);
  }

  protected int computeVerticalScrollOffset()
  {
    int i = super.computeVerticalScrollOffset();
    if (this.a != null)
      this.a.a(i, 0);
    return i;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.ScrollableGridView
 * JD-Core Version:    0.6.0
 */